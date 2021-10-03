package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_710:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var var_607:String;
      
      private var var_411:String;
      
      private var _userId:int;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_710,param4,param5);
         _userId = param1;
         var_411 = param2;
         var_607 = param3;
      }
      
      public function get gender() : String
      {
         return var_607;
      }
      
      public function get figure() : String
      {
         return var_411;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
