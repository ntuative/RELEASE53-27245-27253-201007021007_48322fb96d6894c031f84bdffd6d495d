package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1930:int;
      
      private var var_2079:Boolean = false;
      
      private var var_1924:int;
      
      private var var_1928:int;
      
      private var var_1925:int;
      
      private var var_1437:String;
      
      private var var_1453:int;
      
      private var _offerId:int;
      
      private var var_1929:int;
      
      private var var_1926:Boolean;
      
      private var var_1927:Boolean;
      
      private var var_400:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1437 = param2;
         var_1453 = param3;
         var_1927 = param4;
         var_1926 = param5;
         var_1924 = param6;
         var_1925 = param7;
         var_1928 = param8;
         var_1930 = param9;
         var_1929 = param10;
      }
      
      public function get month() : int
      {
         return var_1930;
      }
      
      public function get page() : ICatalogPage
      {
         return var_400;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1926;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_400 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_302;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1927;
      }
      
      public function get localizationId() : String
      {
         return var_1437;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1925;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_2079;
      }
      
      public function get day() : int
      {
         return var_1929;
      }
      
      public function get year() : int
      {
         return var_1928;
      }
      
      public function get price() : int
      {
         return var_1453;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_2079 = param1;
      }
      
      public function get periods() : int
      {
         return var_1924;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1453;
      }
      
      public function get productCode() : String
      {
         return var_1437;
      }
   }
}
