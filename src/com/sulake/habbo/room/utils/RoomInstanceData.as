package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_836:LegacyWallGeometry = null;
      
      private var var_592:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_590:TileHeightMap = null;
      
      private var var_1742:String = null;
      
      private var _roomId:int = 0;
      
      private var var_591:SelectedRoomObjectData = null;
      
      private var var_837:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_836 = new LegacyWallGeometry();
         var_837 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_592 != null)
         {
            var_592.dispose();
         }
         var_592 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_590 != null)
         {
            var_590.dispose();
         }
         var_590 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1742 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_836;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_591;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_837;
      }
      
      public function dispose() : void
      {
         if(var_590 != null)
         {
            var_590.dispose();
            var_590 = null;
         }
         if(var_836 != null)
         {
            var_836.dispose();
            var_836 = null;
         }
         if(var_837 != null)
         {
            var_837.dispose();
            var_837 = null;
         }
         if(var_592 != null)
         {
            var_592.dispose();
            var_592 = null;
         }
         if(var_591 != null)
         {
            var_591.dispose();
            var_591 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_590;
      }
      
      public function get worldType() : String
      {
         return var_1742;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_591 != null)
         {
            var_591.dispose();
         }
         var_591 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_592;
      }
   }
}
