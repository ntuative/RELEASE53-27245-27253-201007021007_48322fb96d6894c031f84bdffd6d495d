package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetCommandsUpdateEvent extends RoomSessionEvent
   {
      
      public static const PET_COMMANDS:String = "RSPIUE_ENABLED_PET_COMMANDS";
       
      
      private var var_1288:int;
      
      private var var_2121:Array;
      
      public function RoomSessionPetCommandsUpdateEvent(param1:IRoomSession, param2:int, param3:Array, param4:Boolean = false, param5:Boolean = false)
      {
         super(RoomSessionPetCommandsUpdateEvent.PET_COMMANDS,param1,param4,param5);
         var_1288 = param2;
         var_2121 = param3;
      }
      
      public function get enabledCommands() : Array
      {
         return var_2121;
      }
      
      public function get petId() : int
      {
         return var_1288;
      }
   }
}
