package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_492:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_360:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_866:int;
      
      private var var_262:Boolean;
      
      private var var_1961:Boolean;
      
      private var var_1569:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_866 = param2;
         var_1961 = param3;
         var_262 = param4;
         var_1569 = param5;
      }
      
      public function get position() : int
      {
         return var_866;
      }
      
      public function get isActive() : Boolean
      {
         return var_262;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1569;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1961;
      }
   }
}
