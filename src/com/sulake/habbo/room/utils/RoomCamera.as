package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_364:Number = 0.5;
      
      private static const const_781:int = 3;
      
      private static const const_1083:Number = 1;
       
      
      private var var_1788:Boolean = false;
      
      private var var_1794:Boolean = false;
      
      private var var_1038:int = 0;
      
      private var var_263:Vector3d = null;
      
      private var var_1789:int = 0;
      
      private var var_1791:int = 0;
      
      private var var_1787:Boolean = false;
      
      private var var_1795:int = -2;
      
      private var var_1792:Boolean = false;
      
      private var var_1793:int = 0;
      
      private var var_1790:int = -1;
      
      private var var_402:Vector3d = null;
      
      private var var_1796:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1789;
      }
      
      public function get targetId() : int
      {
         return var_1790;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1793 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1789 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1788 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1790 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1794 = param1;
      }
      
      public function dispose() : void
      {
         var_402 = null;
         var_263 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_402 == null)
         {
            var_402 = new Vector3d();
         }
         var_402.assign(param1);
         var_1038 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1795;
      }
      
      public function get screenHt() : int
      {
         return var_1796;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1791 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_263;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1796 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1793;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1788;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1794;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_402 != null && var_263 != null)
         {
            ++var_1038;
            _loc2_ = Vector3d.dif(var_402,var_263);
            if(_loc2_.length <= const_364)
            {
               var_263 = var_402;
               var_402 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_364 * (const_781 + 1))
               {
                  _loc2_.mul(const_364);
               }
               else if(var_1038 <= const_781)
               {
                  _loc2_.mul(const_364);
               }
               else
               {
                  _loc2_.mul(const_1083);
               }
               var_263 = Vector3d.sum(var_263,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1787 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1791;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1792 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1795 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_263 != null)
         {
            return;
         }
         var_263 = new Vector3d();
         var_263.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1787;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1792;
      }
   }
}
