package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1111:int;
      
      private var var_1341:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1111 = param1;
         var_1341 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1111;
      }
      
      public function get itemName() : String
      {
         return var_1341;
      }
   }
}
