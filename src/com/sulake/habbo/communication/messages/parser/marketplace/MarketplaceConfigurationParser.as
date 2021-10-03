package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1974:int;
      
      private var var_1648:int;
      
      private var var_1973:int;
      
      private var var_1976:int;
      
      private var var_1975:int;
      
      private var var_1649:int;
      
      private var var_1865:int;
      
      private var var_1244:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1974;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1648;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1865;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1976;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1975;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1649;
      }
      
      public function get commission() : int
      {
         return var_1973;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1244 = param1.readBoolean();
         var_1973 = param1.readInteger();
         var_1648 = param1.readInteger();
         var_1649 = param1.readInteger();
         var_1976 = param1.readInteger();
         var_1974 = param1.readInteger();
         var_1975 = param1.readInteger();
         var_1865 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1244;
      }
   }
}
