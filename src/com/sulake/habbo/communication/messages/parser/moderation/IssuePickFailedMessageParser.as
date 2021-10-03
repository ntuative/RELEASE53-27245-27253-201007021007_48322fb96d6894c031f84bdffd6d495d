package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_2029:String;
      
      private var var_2365:int;
      
      private var var_1910:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1910 = param1.readInteger();
         var_2365 = param1.readInteger();
         var_2029 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1910;
      }
      
      public function get pickerUserId() : int
      {
         return var_2365;
      }
      
      public function get pickerUserName() : String
      {
         return var_2029;
      }
   }
}
