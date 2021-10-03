package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_243:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1863:Boolean = false;
      
      private var var_1860:int = 0;
      
      private var var_1864:int = 0;
      
      private var var_1862:int;
      
      private var var_1861:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_243,param6,param7);
         var_1861 = param1;
         var_1864 = param2;
         var_1860 = param3;
         var_1863 = param4;
         var_1862 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1862;
      }
      
      public function get pastPeriods() : int
      {
         return var_1860;
      }
      
      public function get periodsLeft() : int
      {
         return var_1864;
      }
      
      public function get daysLeft() : int
      {
         return var_1861;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1863;
      }
   }
}
