package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_124:int = 0;
      
      public static const const_133:int = 1;
      
      public static const const_107:int = 2;
      
      public static const const_559:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1400:int = 0;
      
      private var var_2176:String = "";
      
      private var var_207:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_207 = param2;
         var_1400 = param3;
         var_2176 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2176;
      }
      
      public function get chatType() : int
      {
         return var_1400;
      }
      
      public function get text() : String
      {
         return var_207;
      }
   }
}
