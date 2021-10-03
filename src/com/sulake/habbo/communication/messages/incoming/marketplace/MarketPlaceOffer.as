package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1453:int;
      
      private var var_1752:int;
      
      private var var_1754:int = -1;
      
      private var var_150:int;
      
      private var var_1753:int;
      
      private var _offerId:int;
      
      private var var_1452:int;
      
      private var _furniId:int;
      
      private var var_1472:String;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         _offerId = param1;
         _furniId = param2;
         var_1753 = param3;
         var_1472 = param4;
         var_1453 = param5;
         var_150 = param6;
         var_1754 = param7;
         var_1752 = param8;
         var_1452 = param9;
      }
      
      public function get status() : int
      {
         return var_150;
      }
      
      public function get price() : int
      {
         return var_1453;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1754;
      }
      
      public function get offerCount() : int
      {
         return var_1452;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1753;
      }
      
      public function get averagePrice() : int
      {
         return var_1752;
      }
      
      public function get furniId() : int
      {
         return _furniId;
      }
      
      public function get stuffData() : String
      {
         return var_1472;
      }
   }
}
