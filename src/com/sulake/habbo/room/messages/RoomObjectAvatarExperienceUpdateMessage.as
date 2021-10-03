package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarExperienceUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1942:int;
      
      public function RoomObjectAvatarExperienceUpdateMessage(param1:int)
      {
         super();
         var_1942 = param1;
      }
      
      public function get gainedExperience() : int
      {
         return var_1942;
      }
   }
}
