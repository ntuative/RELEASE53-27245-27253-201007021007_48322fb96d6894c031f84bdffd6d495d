package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1472:String;
      
      private var var_1111:String;
      
      private var var_1804:Boolean;
      
      private var var_1493:int;
      
      private var var_1769:int;
      
      private var var_1803:Boolean;
      
      private var var_1528:String = "";
      
      private var var_1772:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1350:int;
      
      private var var_1773:Boolean;
      
      private var var_1770:int = -1;
      
      private var var_1775:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1769 = param1;
         var_1111 = param2;
         _objId = param3;
         var_1350 = param4;
         _category = param5;
         var_1472 = param6;
         var_1804 = param7;
         var_1772 = param8;
         var_1773 = param9;
         var_1803 = param10;
         var_1775 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1528;
      }
      
      public function get extra() : int
      {
         return var_1493;
      }
      
      public function get classId() : int
      {
         return var_1350;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1803;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1804;
      }
      
      public function get stripId() : int
      {
         return var_1769;
      }
      
      public function get stuffData() : String
      {
         return var_1472;
      }
      
      public function get songId() : int
      {
         return var_1770;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1528 = param1;
         var_1493 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1111;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1775;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1773;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1772;
      }
   }
}
