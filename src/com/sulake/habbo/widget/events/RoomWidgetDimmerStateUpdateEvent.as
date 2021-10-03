package com.sulake.habbo.widget.events
{
   public class RoomWidgetDimmerStateUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_59:String = "RWDSUE_DIMMER_STATE";
       
      
      private var var_1020:int;
      
      private var _color:uint;
      
      private var var_1021:int;
      
      private var var_1885:int;
      
      private var var_36:int;
      
      public function RoomWidgetDimmerStateUpdateEvent(param1:int, param2:int, param3:int, param4:uint, param5:uint, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_59,param6,param7);
         var_36 = param1;
         var_1885 = param2;
         var_1020 = param3;
         _color = param4;
         var_1021 = param5;
      }
      
      public function get brightness() : uint
      {
         return var_1021;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_1020;
      }
      
      public function get state() : int
      {
         return var_36;
      }
      
      public function get presetId() : int
      {
         return var_1885;
      }
   }
}
