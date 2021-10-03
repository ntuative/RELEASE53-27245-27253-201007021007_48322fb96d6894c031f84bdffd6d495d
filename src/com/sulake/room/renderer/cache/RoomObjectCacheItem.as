package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_635:RoomObjectLocationCacheItem = null;
      
      private var var_181:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_635 = new RoomObjectLocationCacheItem(param1);
         var_181 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_635;
      }
      
      public function dispose() : void
      {
         if(var_635 != null)
         {
            var_635.dispose();
            var_635 = null;
         }
         if(var_181 != null)
         {
            var_181.dispose();
            var_181 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_181;
      }
   }
}
