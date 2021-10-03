package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1514:Array;
      
      private var var_1752:int;
      
      private var var_1827:int;
      
      private var var_1829:int;
      
      private var var_1828:int;
      
      private var _dayOffsets:Array;
      
      private var var_1830:int;
      
      private var var_1513:Array;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrices(param1:Array) : void
      {
         var_1514 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1827;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1513 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1752 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1829;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1828;
      }
      
      public function get offerCount() : int
      {
         return var_1830;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1830 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1513;
      }
      
      public function get averagePrice() : int
      {
         return var_1752;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1828 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1829 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1827 = param1;
      }
   }
}
