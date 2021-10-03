package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1691:String;
      
      private var var_2154:int;
      
      private var var_2156:int;
      
      private var var_2157:int;
      
      private var var_2155:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2154 = param1.readInteger();
         var_2157 = param1.readInteger();
         var_2156 = param1.readInteger();
         var_2155 = param1.readString();
         var_1691 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1691;
      }
      
      public function get hour() : int
      {
         return var_2154;
      }
      
      public function get minute() : int
      {
         return var_2157;
      }
      
      public function get chatterName() : String
      {
         return var_2155;
      }
      
      public function get chatterId() : int
      {
         return var_2156;
      }
   }
}
