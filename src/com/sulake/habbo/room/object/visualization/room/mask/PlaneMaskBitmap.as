package com.sulake.habbo.room.object.visualization.room.mask
{
   import com.sulake.room.object.visualization.utils.IGraphicAsset;
   
   public class PlaneMaskBitmap
   {
      
      public static const const_53:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_1879:Number = -1.0;
      
      private var var_904:IGraphicAsset = null;
      
      private var var_1878:Number = 1.0;
      
      private var var_1877:Number = -1.0;
      
      public function PlaneMaskBitmap(param1:IGraphicAsset, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         var_1879 = param2;
         _normalMaxX = param3;
         var_1877 = param4;
         var_1878 = param5;
         var_904 = param1;
      }
      
      public function get normalMaxY() : Number
      {
         return var_1878;
      }
      
      public function get normalMaxX() : Number
      {
         return _normalMaxX;
      }
      
      public function get normalMinX() : Number
      {
         return var_1879;
      }
      
      public function get normalMinY() : Number
      {
         return var_1877;
      }
      
      public function get asset() : IGraphicAsset
      {
         return var_904;
      }
      
      public function dispose() : void
      {
         var_904 = null;
      }
   }
}
