package com.sulake.room.renderer.utils
{
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   
   public class SortableSprite
   {
      
      public static const const_1257:Number = 100000000;
       
      
      private var var_84:Number = 0.0;
      
      private var var_1343:IRoomObjectSprite = null;
      
      private var _name:String = "";
      
      private var var_85:int = 0;
      
      private var _y:int = 0;
      
      public function SortableSprite()
      {
         super();
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set y(param1:int) : void
      {
         _y = param1;
      }
      
      public function set z(param1:Number) : void
      {
         var_84 = param1;
      }
      
      public function get sprite() : IRoomObjectSprite
      {
         return var_1343;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set x(param1:int) : void
      {
         var_85 = param1;
      }
      
      public function set sprite(param1:IRoomObjectSprite) : void
      {
         var_1343 = param1;
      }
      
      public function get x() : int
      {
         return var_85;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function dispose() : void
      {
         var_1343 = null;
         var_84 = -const_1257;
      }
   }
}
