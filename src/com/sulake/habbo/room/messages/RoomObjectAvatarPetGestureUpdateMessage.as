package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPetGestureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1263:String;
      
      public function RoomObjectAvatarPetGestureUpdateMessage(param1:String)
      {
         super();
         var_1263 = param1;
      }
      
      public function get gesture() : String
      {
         return var_1263;
      }
   }
}
