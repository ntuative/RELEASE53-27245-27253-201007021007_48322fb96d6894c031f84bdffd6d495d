package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1930:int;
      
      private var var_1453:int;
      
      private var var_1924:int;
      
      private var _offerId:int;
      
      private var var_1928:int;
      
      private var var_1929:int;
      
      private var var_1926:Boolean;
      
      private var var_1925:int;
      
      private var var_1927:Boolean;
      
      private var var_1437:String;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1437 = param1.readString();
         var_1453 = param1.readInteger();
         var_1927 = param1.readBoolean();
         var_1926 = param1.readBoolean();
         var_1924 = param1.readInteger();
         var_1925 = param1.readInteger();
         var_1928 = param1.readInteger();
         var_1930 = param1.readInteger();
         var_1929 = param1.readInteger();
      }
      
      public function get year() : int
      {
         return var_1928;
      }
      
      public function get month() : int
      {
         return var_1930;
      }
      
      public function get price() : int
      {
         return var_1453;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get periods() : int
      {
         return var_1924;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1925;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1927;
      }
      
      public function get day() : int
      {
         return var_1929;
      }
      
      public function get vip() : Boolean
      {
         return var_1926;
      }
      
      public function get productCode() : String
      {
         return var_1437;
      }
   }
}
