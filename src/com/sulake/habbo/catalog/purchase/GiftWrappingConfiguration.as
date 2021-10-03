package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_666:Array;
      
      private var var_1453:int;
      
      private var var_1637:Array;
      
      private var var_665:Array;
      
      private var var_1244:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1244 = _loc2_.isWrappingEnabled;
         var_1453 = _loc2_.wrappingPrice;
         var_1637 = _loc2_.stuffTypes;
         var_665 = _loc2_.boxTypes;
         var_666 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_666;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1637;
      }
      
      public function get price() : int
      {
         return var_1453;
      }
      
      public function get boxTypes() : Array
      {
         return var_665;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1244;
      }
   }
}
