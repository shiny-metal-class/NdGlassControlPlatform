classdef ZaberPort
    properties(Access = public)
        Devices
        COM %index of the com port being used
    end
    properties(Access = private)
        SerialPort %ID of serial port used for comms
    end
    methods
        function obj = ZaberPort(COM)
            obj.COM = COM;
            [obj.Devices,obj.SerialPort] = obj.PortConnection(COM);
            
        end
        function ClosePort(obj,varargin)
            fclose(obj.SerialPort);
        end
    end
    
    methods(Static)
        function portlist = scanports(portlimit)
            % Function that scans for available serial ports.
            % Returns cell array of string identifiers for available ports.
            % Scans from COM1 - COM15 unless portlimit is specified,
            % then scans from COM1 - COM[portlimit].
            % version 1 by Robert Slazas, October 2011

            % check for existing serial connections and close them
            if ~isempty(instrfind)
                fclose(instrfind);
                delete(instrfind);
            end

            % set portlimit if not specified
            if nargin < 1
                portlimit = 15;
            end
            portlist = cell(0);

            h = waitbar(0,'Scanning Serial Ports...','Name','Scanning Serial Ports...');
            for i = 1:portlimit
                eval(['s = serial(''COM',num2str(i),''');']);
                try
                    fopen(s);
                    fclose(s);
                    delete(s);
                    portlist{end+1,1}=['COM',num2str(i)];
                    waitbar(i/portlimit,h,['Found ',num2str(numel(portlist)),' COM Ports...']);
                catch
                    delete(s);
                    waitbar(i/portlimit,h);
                end
            end
            close(h);
        end
        function [devices,port] = PortConnection(COM)
                port = serial(COM);
                warning off MATLAB:serial:fread:unsuccessfulRead
                warning off MATLAB:serial:fgetl:unsuccessfulRead
                fprintf('Searching %s for devices \n',COM);
                set(port, ...
                    'BaudRate', 9600, ...
                    'DataBits', 8, ...
                    'FlowControl', 'none', ...
                    'Parity', 'none', ...
                    'StopBits', 1, ...
                    'Terminator', 'CR/LF');
                try
                    fopen(port);
                catch ME
                    switch ME.identifier
                        case 'MATLAB:serial:fopen:opfailed'
                            fclose(instrfind);
                            delete(instrfind);
                            try
                                fopen(port);
                            catch
                                error('Cant connect to device');
                            end
                            
                        otherwise
                            fprintf(ME.identifier)
                            error(ME.identifier,ME.message)
                    end
                end
                protocol = Zaber.Protocol.detect(port);
                    if (isa(protocol, 'Zaber.BinaryProtocol'))
                        fprintf('Detected binary protocol!\n');
                    elseif (isa(protocol, 'Zaber.AsciiProtocol'))
                        fprintf('Detected ASCII protocol!\n');
                    end
                if (~isa(protocol, 'Zaber.Protocol'))
                    fclose(port);
                    error('StartSession:NoZaberDevices','Invalid Port Selection')
                end

                try
                    devices = protocol.finddevices();
                catch ME
                    fclose(port);
                    rethrow(ME);
                end
        end
        
        function [devices,port] = FindDevices()
            port = portscan(); port = port{1};
            set(port, ...
                'BaudRate',9600, ...
                'DataBits', 8, ...
                'FlowControl', 'none', ...
                'Parity', 'none', ...
                'StopBits', 1, ...
                'Terminator','CR/LF');
            set(port,'Timeout', 0.5);
            warning off MATLAB:serial:fread:unsuccessfulRead
            warning off MATLAB:serial:fgetl:unsuccessfulRead
            
        end
    end
end