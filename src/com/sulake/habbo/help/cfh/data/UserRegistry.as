package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1098:int = 80;
       
      
      private var var_502:Map;
      
      private var var_734:String = "";
      
      private var var_1269:Array;
      
      public function UserRegistry()
      {
         var_502 = new Map();
         var_1269 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_502.getValue(var_1269.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_734;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_502.getValue(param1) != null)
         {
            var_502.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_734);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_734 == "")
         {
            var_1269.push(param1);
         }
         var_502.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_502;
      }
      
      public function unregisterRoom() : void
      {
         var_734 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_502.length > const_1098)
         {
            _loc1_ = var_502.getKey(0);
            var_502.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_734 = param1;
         if(var_734 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
