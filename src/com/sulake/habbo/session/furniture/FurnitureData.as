package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1687:String = "e";
      
      public static const const_1669:String = "i";
      
      public static const const_1630:String = "s";
       
      
      private var _id:int;
      
      private var var_2228:String;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2229:int;
      
      private var var_1450:Array;
      
      private var var_2226:int;
      
      private var var_2225:int;
      
      private var var_2227:int;
      
      private var _name:String;
      
      private var _revision:int;
      
      private var var_1336:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String, param12:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2229 = param4;
         _revision = param5;
         var_2226 = param6;
         var_2225 = param7;
         var_2227 = param8;
         var_1450 = param9;
         _title = param10;
         var_1336 = param11;
         var_2228 = param12;
      }
      
      public function get tileSizeY() : int
      {
         return var_2225;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2227;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get adUrl() : String
      {
         return var_2228;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return _revision;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2229;
      }
      
      public function get tileSizeX() : int
      {
         return var_2226;
      }
      
      public function get colours() : Array
      {
         return var_1450;
      }
      
      public function get description() : String
      {
         return var_1336;
      }
   }
}
