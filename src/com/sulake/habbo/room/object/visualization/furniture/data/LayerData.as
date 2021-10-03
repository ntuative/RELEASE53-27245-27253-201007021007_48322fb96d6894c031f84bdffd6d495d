package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_396:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_488:int = 0;
      
      public static const const_971:int = 2;
      
      public static const const_884:int = 1;
      
      public static const const_722:Boolean = false;
      
      public static const const_599:String = "";
      
      public static const const_386:int = 0;
      
      public static const const_419:int = 0;
      
      public static const const_453:int = 0;
       
      
      private var var_1858:int = 0;
      
      private var var_1751:String = "";
      
      private var var_1552:int = 0;
      
      private var var_1857:int = 0;
      
      private var var_1859:Number = 0;
      
      private var var_1856:int = 255;
      
      private var var_1855:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1858;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1552 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1859;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1857 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1858 = param1;
      }
      
      public function get tag() : String
      {
         return var_1751;
      }
      
      public function get alpha() : int
      {
         return var_1856;
      }
      
      public function get ink() : int
      {
         return var_1552;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1859 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1857;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1855 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1855;
      }
      
      public function set tag(param1:String) : void
      {
         var_1751 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1856 = param1;
      }
   }
}
