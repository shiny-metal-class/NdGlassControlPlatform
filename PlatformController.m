classdef PlatformController < handle
    properties(Access = public)
    end
    properties(Access = private)
        PortHandle; %Handle for COM link between API and Zaber usb devices
        Devices;
        COM %number of COM port
        h; %handle to the MainWindow GUI
    end
    methods
        function self = PlatformController(FigHandle)
            self.h = FigHandle; %GUI Window handle for controller to use
            self.h = guidata(FigHandle);
            %Find Zaber objects and allocate their handles to the
            %controller instance
            int = self.FindZaberObject();
            disp(int);
        end
        
    end
    methods(Access = private)
        function int = FindZaberObject(self)
                self.COM = str2num(get(self.h.COMPort,'String'));
                PortHandle = ZaberPort();
                self.PortHandle = PortHandle;
                self.Devices = self.PortHandle.Devices;
                int = 1;
        end
    end
    
end