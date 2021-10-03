package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1111:String;
      
      private var var_1758:int;
      
      private var var_1763:int;
      
      private var var_1493:int;
      
      private var var_1762:int;
      
      private var _category:int;
      
      private var var_2499:int;
      
      private var var_1764:int;
      
      private var var_1761:int;
      
      private var var_1759:int;
      
      private var var_1765:int;
      
      private var var_1760:Boolean;
      
      private var var_1472:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1758 = param1;
         var_1111 = param2;
         var_1763 = param3;
         var_1759 = param4;
         _category = param5;
         var_1472 = param6;
         var_1493 = param7;
         var_1761 = param8;
         var_1764 = param9;
         var_1765 = param10;
         var_1762 = param11;
         var_1760 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1759;
      }
      
      public function get extra() : int
      {
         return var_1493;
      }
      
      public function get stuffData() : String
      {
         return var_1472;
      }
      
      public function get groupable() : Boolean
      {
         return var_1760;
      }
      
      public function get creationMonth() : int
      {
         return var_1765;
      }
      
      public function get roomItemID() : int
      {
         return var_1763;
      }
      
      public function get itemType() : String
      {
         return var_1111;
      }
      
      public function get itemID() : int
      {
         return var_1758;
      }
      
      public function get songID() : int
      {
         return var_1493;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1761;
      }
      
      public function get creationYear() : int
      {
         return var_1762;
      }
      
      public function get creationDay() : int
      {
         return var_1764;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
