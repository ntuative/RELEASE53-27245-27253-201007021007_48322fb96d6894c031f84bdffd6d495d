package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_835:Array;
      
      private var var_935:int;
      
      private var var_1349:String;
      
      private var _offerId:int;
      
      private var var_934:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1349 = param1.readString();
         var_935 = param1.readInteger();
         var_934 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_835 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_835.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_835;
      }
      
      public function get priceInCredits() : int
      {
         return var_935;
      }
      
      public function get localizationId() : String
      {
         return var_1349;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_934;
      }
   }
}
