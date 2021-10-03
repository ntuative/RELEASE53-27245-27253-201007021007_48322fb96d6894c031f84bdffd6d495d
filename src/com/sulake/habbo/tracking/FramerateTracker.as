package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1303:int;
      
      private var var_372:Number;
      
      private var var_1586:int;
      
      private var var_908:int;
      
      private var var_2016:int;
      
      private var var_2017:Boolean;
      
      private var _reportIntervalMillis:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++var_908;
         var _loc3_:int = getTimer();
         if(var_908 == 1)
         {
            var_372 = param1;
            var_1303 = _loc3_;
         }
         else
         {
            _loc4_ = Number(var_908);
            var_372 = var_372 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(var_2017 && _loc3_ - var_1303 >= _reportIntervalMillis && var_1586 < var_2016)
         {
            _loc5_ = 1000 / var_372;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++var_1586;
            var_1303 = _loc3_;
            var_908 = 0;
         }
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         _reportIntervalMillis = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         var_2016 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         var_2017 = true;
      }
      
      public function dispose() : void
      {
      }
   }
}
