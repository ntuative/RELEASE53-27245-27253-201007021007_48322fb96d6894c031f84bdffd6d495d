package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2242:int;
      
      private var var_2243:Boolean;
      
      private var _offerId:int;
      
      private var var_1908:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2243 = param1.readBoolean();
         var_2242 = param1.readInteger();
         var_1908 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1908;
      }
      
      public function get monthsRequired() : int
      {
         return var_2242;
      }
      
      public function get isVip() : Boolean
      {
         return var_2243;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
