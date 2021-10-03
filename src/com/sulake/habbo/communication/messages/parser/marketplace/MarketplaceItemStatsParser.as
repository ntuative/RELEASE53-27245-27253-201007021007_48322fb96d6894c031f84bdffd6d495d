package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1514:Array;
      
      private var var_1752:int;
      
      private var var_1827:int;
      
      private var var_1828:int;
      
      private var var_1829:int;
      
      private var _dayOffsets:Array;
      
      private var var_1830:int;
      
      private var var_1513:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1514;
      }
      
      public function get furniTypeId() : int
      {
         return var_1827;
      }
      
      public function get historyLength() : int
      {
         return var_1829;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1828;
      }
      
      public function get offerCount() : int
      {
         return var_1830;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1513;
      }
      
      public function get averagePrice() : int
      {
         return var_1752;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1752 = param1.readInteger();
         var_1830 = param1.readInteger();
         var_1829 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1514 = [];
         var_1513 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1514.push(param1.readInteger());
            var_1513.push(param1.readInteger());
            _loc3_++;
         }
         var_1828 = param1.readInteger();
         var_1827 = param1.readInteger();
         return true;
      }
   }
}
