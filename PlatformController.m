classdef PlatformController < handle
    properties(Access = public)
    end
    properties(Access = private)
        PortHandle; %Handle for COM link between API and Zaber usb devices
        Devices;
        h; %handle to the MainWindow GUI
    end
    methods
        function self = PlatformController(FigHandle)
            self.h = FigHandle; %GUI Window handle for controller to use
            %Find Zaber objects and allocate their handles to the
            %controller instance
            int = self.FindZaberObject();
            disp(int);
        end
        
    end
    methods(Access = private)
        function int = FindZaberObject(self)
            try
                PortHandle = ZaberPort(4);
                self.PortHandle = PortHandle;
                self.Devices = self.PortHandle.Devices;
                int = 1;
            catch
                int = 0;
            end
        end
    end
    
end