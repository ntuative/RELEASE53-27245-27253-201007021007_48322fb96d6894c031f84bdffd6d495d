package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1874:String;
      
      private var var_938:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1874 = param1;
         var_938 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1874;
      }
      
      public function get parameter() : String
      {
         return var_938;
      }
   }
}
