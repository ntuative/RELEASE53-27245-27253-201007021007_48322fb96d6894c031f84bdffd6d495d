package com.sulake.habbo.avatar.cache
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   import flash.utils.getTimer;
   
   public class AvatarImageBodyPartCache
   {
       
      
      private var var_124:Map;
      
      private var var_1750:int;
      
      private var var_593:IActiveActionData;
      
      public function AvatarImageBodyPartCache()
      {
         super();
         var_124 = new Map();
      }
      
      private function debugInfo(param1:String) : void
      {
      }
      
      public function getDirection() : int
      {
         return var_1750;
      }
      
      public function getAction() : IActiveActionData
      {
         return var_593;
      }
      
      public function updateActionCache(param1:IActiveActionData, param2:AvatarImageActionCache) : void
      {
         var_124.add(param1.id,param2);
      }
      
      public function getActionCache(param1:IActiveActionData = null) : AvatarImageActionCache
      {
         if(!var_593)
         {
            return null;
         }
         if(param1 == null)
         {
            param1 = var_593;
         }
         return var_124.getValue(param1.id) as AvatarImageActionCache;
      }
      
      public function setAction(param1:IActiveActionData, param2:int) : void
      {
         if(var_593 == null)
         {
            var_593 = param1;
         }
         var _loc3_:AvatarImageActionCache = getActionCache(var_593);
         if(_loc3_ != null)
         {
            _loc3_.setLastAccessTime(param2);
         }
         var_593 = param1;
      }
      
      public function setDirection(param1:int) : void
      {
         var_1750 = param1;
      }
      
      public function disposeActions(param1:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         if(var_124 == null)
         {
            return;
         }
         var _loc2_:int = getTimer();
         var _loc3_:Array = var_124.getKeys();
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = var_124.getValue(_loc4_) as AvatarImageActionCache;
            if(_loc5_ != null)
            {
               _loc6_ = _loc5_.getLastAccessTime();
               if(_loc2_ - _loc6_ >= param1)
               {
                  debugInfo("[Disposing inactive: " + _loc4_ + "]");
                  _loc5_.dispose();
                  var_124.remove(_loc4_);
               }
            }
         }
      }
      
      public function dispose() : void
      {
         if(var_124 == null)
         {
            return;
         }
         Logger.log("[dispose]");
         var_124.dispose();
      }
   }
}
