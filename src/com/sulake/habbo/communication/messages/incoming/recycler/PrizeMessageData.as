package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1497:int;
      
      private var var_1806:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1806 = param1.readString();
         var_1497 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1497;
      }
      
      public function get productItemType() : String
      {
         return var_1806;
      }
   }
}
