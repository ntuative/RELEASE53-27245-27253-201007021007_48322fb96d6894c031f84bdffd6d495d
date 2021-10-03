package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1736:int;
      
      private var var_1166:int;
      
      private var var_1737:int;
      
      private var var_1488:int;
      
      private var var_119:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1488 = param1.readInteger();
         var_1737 = param1.readInteger();
         var_1166 = param1.readInteger();
         var_1736 = param1.readInteger();
         var_119 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1488);
      }
      
      public function get chatRecordId() : int
      {
         return var_1736;
      }
      
      public function get reportedUserId() : int
      {
         return var_1166;
      }
      
      public function get callerUserId() : int
      {
         return var_1737;
      }
      
      public function get callId() : int
      {
         return var_1488;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_119;
      }
   }
}
