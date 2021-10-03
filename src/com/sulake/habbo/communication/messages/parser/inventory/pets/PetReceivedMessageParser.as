package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1168:PetData;
      
      private var var_1683:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1683 = param1.readBoolean();
         var_1168 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1683 + ", " + var_1168.id + ", " + var_1168.name + ", " + pet.figure + ", " + var_1168.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1683;
      }
      
      public function get pet() : PetData
      {
         return var_1168;
      }
   }
}
