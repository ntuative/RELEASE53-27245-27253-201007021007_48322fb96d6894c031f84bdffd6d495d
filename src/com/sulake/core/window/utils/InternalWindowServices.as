package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2471:uint;
      
      private var var_984:IWindowToolTipAgentService;
      
      private var var_985:IWindowMouseScalingService;
      
      private var var_236:IWindowContext;
      
      private var include:IWindowFocusManagerService;
      
      private var var_982:IWindowMouseListenerService;
      
      private var var_983:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2471 = 0;
         var_122 = param2;
         var_236 = param1;
         var_983 = new WindowMouseDragger(param2);
         var_985 = new WindowMouseScaler(param2);
         var_982 = new WindowMouseListener(param2);
         include = new FocusManager(param2);
         var_984 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_985;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return include;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_984;
      }
      
      public function dispose() : void
      {
         if(var_983 != null)
         {
            var_983.dispose();
            var_983 = null;
         }
         if(var_985 != null)
         {
            var_985.dispose();
            var_985 = null;
         }
         if(var_982 != null)
         {
            var_982.dispose();
            var_982 = null;
         }
         if(include != null)
         {
            include.dispose();
            include = null;
         }
         if(var_984 != null)
         {
            var_984.dispose();
            var_984 = null;
         }
         var_236 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_982;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_983;
      }
   }
}
