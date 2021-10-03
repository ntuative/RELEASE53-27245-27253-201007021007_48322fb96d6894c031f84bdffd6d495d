package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_650:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_207:String;
      
      private var var_748:String;
      
      private var var_1561:String;
      
      private var var_165:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_165 = param2;
         var_1561 = param3;
         var_207 = param4;
         var_748 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1561;
      }
      
      public function get colorHex() : String
      {
         return var_748;
      }
      
      public function get text() : String
      {
         return var_207;
      }
      
      public function get objectId() : int
      {
         return var_165;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
