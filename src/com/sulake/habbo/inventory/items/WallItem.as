package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var var_2406:Boolean;
      
      protected var var_2405:Boolean;
      
      protected var var_1493:Number;
      
      protected var _ref:int;
      
      protected var _type:int;
      
      protected var _category:int;
      
      protected var var_1760:Boolean;
      
      protected var var_2404:Boolean;
      
      protected var var_2402:Boolean;
      
      protected var var_1472:String;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1760 = param5;
         var_2406 = param6;
         var_2405 = param7;
         var_2404 = param8;
         var_1472 = param9;
         var_1493 = param10;
      }
      
      public function get stuffData() : String
      {
         return var_1472;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get locked() : Boolean
      {
         return var_2402;
      }
      
      public function get sellable() : Boolean
      {
         return var_2404;
      }
      
      public function get extra() : Number
      {
         return var_1493;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2406;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2405;
      }
      
      public function get groupable() : Boolean
      {
         return var_1760;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2402 = param1;
      }
      
      public function set stuffData(param1:String) : void
      {
         var_1472 = param1;
      }
   }
}
