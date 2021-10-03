package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_411:String;
      
      private var var_1936:int;
      
      private var var_2193:String;
      
      private var var_1105:int;
      
      private var var_1288:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1288;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1288 = param1.readInteger();
         var_2193 = param1.readString();
         var_1936 = param1.readInteger();
         var_411 = param1.readString();
         var_1105 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2193;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_411;
      }
      
      public function get petType() : int
      {
         return var_1105;
      }
      
      public function get level() : int
      {
         return var_1936;
      }
   }
}
