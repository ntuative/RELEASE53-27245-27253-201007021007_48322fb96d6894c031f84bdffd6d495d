package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_453:FloorRasterizer;
      
      private var var_941:Boolean = false;
      
      private var var_653:PlaneMaskManager;
      
      private var var_454:WallRasterizer;
      
      private var var_652:WallAdRasterizer;
      
      private var var_455:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_454 = new WallRasterizer();
         var_453 = new FloorRasterizer();
         var_652 = new WallAdRasterizer();
         var_455 = new LandscapeRasterizer();
         var_653 = new PlaneMaskManager();
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_454;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return var_652;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_453;
      }
      
      public function get initialized() : Boolean
      {
         return var_941;
      }
      
      protected function reset() : void
      {
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_653;
      }
      
      public function dispose() : void
      {
         if(var_454 != null)
         {
            var_454.dispose();
            var_454 = null;
         }
         if(var_453 != null)
         {
            var_453.dispose();
            var_453 = null;
         }
         if(var_652 != null)
         {
            var_652.dispose();
            var_652 = null;
         }
         if(var_455 != null)
         {
            var_455.dispose();
            var_455 = null;
         }
         if(var_653 != null)
         {
            var_653.dispose();
            var_653 = null;
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            var_454.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            var_453.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            var_652.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            var_455.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            var_653.initialize(_loc11_);
         }
         return true;
      }
      
      public function clearCache() : void
      {
         if(var_454 != null)
         {
            var_454.clearCache();
         }
         if(var_453 != null)
         {
            var_453.clearCache();
         }
         if(var_455 != null)
         {
            var_455.clearCache();
         }
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return var_455;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(var_941)
         {
            return;
         }
         var_454.initializeAssetCollection(param1);
         var_453.initializeAssetCollection(param1);
         var_652.initializeAssetCollection(param1);
         var_455.initializeAssetCollection(param1);
         var_653.initializeAssetCollection(param1);
         var_941 = true;
      }
   }
}
