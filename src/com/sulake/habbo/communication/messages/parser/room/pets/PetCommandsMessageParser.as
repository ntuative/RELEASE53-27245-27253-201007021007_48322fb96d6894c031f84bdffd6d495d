package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1076:Array;
      
      private var var_1288:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1288 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_1076 = new Array();
         while(_loc2_-- > 0)
         {
            var_1076.push(param1.readInteger());
         }
         return true;
      }
      
      public function get enabledCommands() : Array
      {
         return var_1076;
      }
      
      public function get petId() : int
      {
         return var_1288;
      }
      
      public function flush() : Boolean
      {
         var_1288 = -1;
         var_1076 = null;
         return true;
      }
   }
}
