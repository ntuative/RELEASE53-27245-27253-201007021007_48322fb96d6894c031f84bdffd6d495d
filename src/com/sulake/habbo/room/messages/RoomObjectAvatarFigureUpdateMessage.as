package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2174:String;
      
      private var var_411:String;
      
      private var var_607:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_411 = param1;
         var_607 = param2;
         var_2174 = param3;
      }
      
      public function get race() : String
      {
         return var_2174;
      }
      
      public function get figure() : String
      {
         return var_411;
      }
      
      public function get gender() : String
      {
         return var_607;
      }
   }
}
