package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_734:String;
      
      private var var_1983:int;
      
      private var var_1550:Boolean;
      
      private var _roomId:int;
      
      private var var_1982:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1550 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_734 = param1.readString();
         var_1982 = param1.readInteger();
         var_1983 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1550;
      }
      
      public function get roomName() : String
      {
         return var_734;
      }
      
      public function get enterMinute() : int
      {
         return var_1983;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1982;
      }
   }
}
