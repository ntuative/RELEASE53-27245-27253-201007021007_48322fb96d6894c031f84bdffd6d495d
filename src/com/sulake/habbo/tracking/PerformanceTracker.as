package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1629:GarbageMonitor = null;
      
      private var var_1303:int = 0;
      
      private var var_1257:Boolean = false;
      
      private var var_1906:String = "";
      
      private var var_1630:String = "";
      
      private var var_372:Number = 0;
      
      private var var_1354:int = 10;
      
      private var var_2454:Array;
      
      private var var_689:int = 0;
      
      private var var_1356:int = 60;
      
      private var var_1126:int = 0;
      
      private var var_1125:int = 0;
      
      private var var_1902:String = "";
      
      private var var_2150:Number = 0;
      
      private var var_1355:int = 1000;
      
      private var var_2151:Boolean = true;
      
      private var var_2149:Number = 0.15;
      
      private var var_126:IHabboConfigurationManager = null;
      
      private var var_1905:String = "";
      
      private var var_1357:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2454 = [];
         super();
         var_1630 = Capabilities.version;
         var_1906 = Capabilities.os;
         var_1257 = Capabilities.isDebugger;
         var_1905 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1629 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1303 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1629.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1629.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_372;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1356 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1630;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1125;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1355)
         {
            ++var_1126;
            _loc3_ = true;
         }
         else
         {
            ++var_689;
            if(var_689 <= 1)
            {
               var_372 = param1;
            }
            else
            {
               _loc4_ = Number(var_689);
               var_372 = var_372 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1303 > var_1356 * 1000 && var_1357 < var_1354)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_372);
            _loc5_ = true;
            if(var_2151 && var_1357 > 0)
            {
               _loc6_ = differenceInPercents(var_2150,var_372);
               if(_loc6_ < var_2149)
               {
                  _loc5_ = false;
               }
            }
            var_1303 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2150 = var_372;
               if(sendReport())
               {
                  ++var_1357;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1354 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1355 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1905,var_1630,var_1906,var_1902,var_1257,_loc4_,_loc3_,var_1125,var_372,var_1126);
            _connection.send(_loc1_);
            var_1125 = 0;
            var_372 = 0;
            var_689 = 0;
            var_1126 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_126 = param1;
         var_1356 = int(var_126.getKey("performancetest.interval","60"));
         var_1355 = int(var_126.getKey("performancetest.slowupdatelimit","1000"));
         var_1354 = int(var_126.getKey("performancetest.reportlimit","10"));
         var_2149 = Number(var_126.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2151 = Boolean(int(var_126.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
