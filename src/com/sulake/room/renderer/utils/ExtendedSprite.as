package com.sulake.room.renderer.utils
{
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class ExtendedSprite extends Sprite
   {
       
      
      private var var_1149:Boolean = false;
      
      private var var_2464:Point;
      
      private var var_1317:String = "";
      
      private var var_2256:Boolean = false;
      
      private var var_1394:int = -1;
      
      private var var_2255:Boolean = false;
      
      private var _bitmap:ExtendedBitmap = null;
      
      private var var_1751:String = "";
      
      private var var_1396:int = -1;
      
      private var var_1395:int = 128;
      
      public function ExtendedSprite()
      {
         super();
         var_2464 = new Point();
         enableAlpha();
      }
      
      public function get alphaActive() : Boolean
      {
         return var_1149;
      }
      
      public function needsUpdate(param1:int, param2:int) : Boolean
      {
         if(param1 != var_1396 || param2 != var_1394)
         {
            var_1396 = param1;
            var_1394 = param2;
            return true;
         }
         if(_bitmap != null && false)
         {
            return true;
         }
         return false;
      }
      
      override public function removeChildAt(param1:int) : DisplayObject
      {
         if(param1 == 0)
         {
            var_1396 = -1;
            var_1394 = -1;
            return removeChild(_bitmap);
         }
         return null;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_2256;
      }
      
      public function get alphaTolerance() : int
      {
         return var_1395;
      }
      
      private function hitTestBitmapData(param1:Number, param2:Number) : Boolean
      {
         if(param1 < 0 || param2 < 0 || param1 >= _bitmap.bitmapData.width || param2 >= _bitmap.bitmapData.height)
         {
            return false;
         }
         if(!var_1149 || !_bitmap.bitmapData.transparent)
         {
            return true;
         }
         var _loc3_:uint = _bitmap.bitmapData.getPixel32(param1,param2);
         _loc3_ >>= 24;
         return _loc3_ > var_1395;
      }
      
      public function set identifier(param1:String) : void
      {
         var_1317 = param1;
      }
      
      public function get tag() : String
      {
         return var_1751;
      }
      
      public function set alphaTolerance(param1:int) : void
      {
         var_1395 = param1;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(numChildren > 0)
         {
            _loc1_ = removeChildAt(0);
            if(_loc1_ != null && _loc1_ is Bitmap)
            {
               _loc2_ = _loc1_ as Bitmap;
               _loc2_.bitmapData = null;
            }
         }
         _bitmap = null;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_2256 = param1;
      }
      
      override public function set hitArea(param1:Sprite) : void
      {
         if(param1 != null && super.hitArea == null)
         {
            disableAlpha();
         }
         else if(param1 == null && super.hitArea != null)
         {
            enableAlpha();
         }
         super.hitArea = param1;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_2255 = param1;
      }
      
      public function get identifier() : String
      {
         return var_1317;
      }
      
      public function enableAlpha() : void
      {
         disableAlpha();
         if(hitArea != null)
         {
            return;
         }
         var_1149 = true;
      }
      
      override public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         var x:Number = param1;
         var y:Number = param2;
         var shapeFlag:Boolean = param3;
         if(var_1395 > 255)
         {
            return false;
         }
         if(numChildren == 0)
         {
            return false;
         }
         if(_bitmap == null)
         {
            return false;
         }
         var wasHit:Boolean = false;
         try
         {
            wasHit = hitTestBitmapData(x,y);
         }
         catch(e:Error)
         {
            removeChildAt(0);
         }
         return wasHit;
      }
      
      public function disableAlpha() : void
      {
         var_1149 = false;
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         if(param2 != 0)
         {
            return param1;
         }
         return addChild(param1);
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_2255;
      }
      
      public function set tag(param1:String) : void
      {
         var_1751 = param1;
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         if(param1 == null)
         {
            return null;
         }
         if(param1 as ExtendedBitmap == _bitmap)
         {
            _bitmap.dispose();
            _bitmap = null;
         }
         return super.removeChild(param1);
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         if(numChildren > 0)
         {
            return param1;
         }
         if(param1 is ExtendedBitmap)
         {
            super.addChild(param1);
            _bitmap = param1 as ExtendedBitmap;
         }
         return param1;
      }
   }
}
