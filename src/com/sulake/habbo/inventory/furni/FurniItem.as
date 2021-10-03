package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1769:int;
      
      private var var_1772:Boolean;
      
      private var var_1770:int;
      
      private var var_1472:String;
      
      private var var_1771:Boolean = false;
      
      private var var_1775:int;
      
      private var var_473:int;
      
      private var var_1111:String;
      
      private var var_1528:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1350:int;
      
      private var var_1773:Boolean;
      
      private var var_1774:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1769 = param1;
         var_1111 = param2;
         _objId = param3;
         var_1350 = param4;
         var_1472 = param5;
         var_1772 = param6;
         var_1773 = param7;
         var_1775 = param8;
         var_1528 = param9;
         var_1770 = param10;
         var_473 = -1;
      }
      
      public function get songId() : int
      {
         return var_1770;
      }
      
      public function get iconCallbackId() : int
      {
         return var_473;
      }
      
      public function get expiryTime() : int
      {
         return var_1775;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_1774 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_1771 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_473 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1773;
      }
      
      public function get slotId() : String
      {
         return var_1528;
      }
      
      public function get classId() : int
      {
         return var_1350;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1772;
      }
      
      public function get stuffData() : String
      {
         return var_1472;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1769;
      }
      
      public function get isLocked() : Boolean
      {
         return var_1771;
      }
      
      public function get prevCallbackId() : int
      {
         return var_1774;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1111;
      }
   }
}
