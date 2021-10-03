package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1124:Boolean;
      
      private var var_1123:Boolean;
      
      private var var_1122:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1124;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1123;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1122 = param1.readBoolean();
         var_1123 = param1.readBoolean();
         var_1124 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1122;
      }
      
      public function flush() : Boolean
      {
         var_1122 = false;
         var_1123 = false;
         var_1124 = false;
         return true;
      }
   }
}
