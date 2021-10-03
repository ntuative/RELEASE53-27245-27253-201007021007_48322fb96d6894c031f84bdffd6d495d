package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1557:int = 2;
      
      public static const const_1434:int = 4;
      
      public static const const_1211:int = 1;
      
      public static const const_1356:int = 3;
       
      
      private var var_1118:int = 0;
      
      private var var_938:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1118;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1118 = param1.readInteger();
         if(var_1118 == 3)
         {
            var_938 = param1.readString();
         }
         else
         {
            var_938 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1118 = 0;
         var_938 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_938;
      }
   }
}
