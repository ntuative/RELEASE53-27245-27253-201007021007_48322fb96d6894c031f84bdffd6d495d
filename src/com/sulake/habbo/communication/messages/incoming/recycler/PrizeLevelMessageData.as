package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_2308:int;
      
      private var var_1436:int;
      
      private var var_721:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1436 = param1.readInteger();
         var_2308 = param1.readInteger();
         var_721 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_721.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_2308;
      }
      
      public function get prizes() : Array
      {
         return var_721;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1436;
      }
   }
}
