package com.sulake.room.object
{
   import flash.utils.Dictionary;
   
   public class RoomObjectModel implements IRoomObjectModelController
   {
       
      
      private var _updateID:int;
      
      private var _stringArrayReadOnlyList:Array;
      
      private var _numberArrayReadOnlyList:Array;
      
      private var var_565:Dictionary;
      
      private var var_566:Dictionary;
      
      private var var_1081:Array;
      
      private var var_510:Dictionary;
      
      private var var_1082:Array;
      
      private var var_511:Dictionary;
      
      public function RoomObjectModel()
      {
         super();
         var_510 = new Dictionary();
         var_511 = new Dictionary();
         var_566 = new Dictionary();
         var_565 = new Dictionary();
         var_1081 = [];
         var_1082 = [];
         _numberArrayReadOnlyList = [];
         _stringArrayReadOnlyList = [];
         _updateID = 0;
      }
      
      public function setNumber(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(var_1081.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            var_1081.push(param1);
         }
         if(var_510[param1] != param2)
         {
            var_510[param1] = param2;
            ++_updateID;
         }
      }
      
      public function setStringArray(param1:String, param2:Array, param3:Boolean = false) : void
      {
         if(param2 == null)
         {
            return;
         }
         if(_stringArrayReadOnlyList.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            _stringArrayReadOnlyList.push(param1);
         }
         var _loc4_:* = [];
         var _loc5_:int = 0;
         _loc5_ = 0;
         while(_loc5_ < param2.length)
         {
            if(param2[_loc5_] is String)
            {
               _loc4_.push(param2[_loc5_]);
            }
            _loc5_++;
         }
         var _loc6_:Array = var_565[param1];
         var _loc7_:Boolean = true;
         if(_loc6_ != null && _loc6_.length == _loc4_.length)
         {
            _loc5_ = _loc4_.length - 1;
            while(_loc5_ >= 0)
            {
               if(_loc4_[_loc5_] as String != _loc6_[_loc5_] as String)
               {
                  _loc7_ = false;
                  break;
               }
               _loc5_--;
            }
         }
         else
         {
            _loc7_ = false;
         }
         if(_loc7_)
         {
            return;
         }
         var_565[param1] = _loc4_;
         ++_updateID;
      }
      
      public function getNumber(param1:String) : Number
      {
         return var_510[param1];
      }
      
      public function setString(param1:String, param2:String, param3:Boolean = false) : void
      {
         if(var_1082.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            var_1082.push(param1);
         }
         if(var_511[param1] != param2)
         {
            var_511[param1] = param2;
            ++_updateID;
         }
      }
      
      public function setNumberArray(param1:String, param2:Array, param3:Boolean = false) : void
      {
         if(param2 == null)
         {
            return;
         }
         if(_numberArrayReadOnlyList.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            _numberArrayReadOnlyList.push(param1);
         }
         var _loc4_:* = [];
         var _loc5_:int = 0;
         _loc5_ = 0;
         while(_loc5_ < param2.length)
         {
            if(param2[_loc5_] is Number)
            {
               _loc4_.push(param2[_loc5_]);
            }
            _loc5_++;
         }
         var _loc6_:Array = var_566[param1];
         var _loc7_:Boolean = true;
         if(_loc6_ != null && _loc6_.length == _loc4_.length)
         {
            _loc5_ = _loc4_.length - 1;
            while(_loc5_ >= 0)
            {
               if(_loc4_[_loc5_] as Number != _loc6_[_loc5_] as Number)
               {
                  _loc7_ = false;
                  break;
               }
               _loc5_--;
            }
         }
         else
         {
            _loc7_ = false;
         }
         if(_loc7_)
         {
            return;
         }
         var_566[param1] = _loc4_;
         ++_updateID;
      }
      
      public function getString(param1:String) : String
      {
         return var_511[param1];
      }
      
      public function getNumberArray(param1:String) : Array
      {
         var _loc2_:Array = var_566[param1];
         if(_loc2_ != null)
         {
            _loc2_ = _loc2_.slice();
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(var_510 != null)
         {
            for(_loc1_ in var_510)
            {
               delete var_510[_loc1_];
            }
            var_510 = null;
         }
         if(var_511 != null)
         {
            for(_loc1_ in var_511)
            {
               delete var_511[_loc1_];
            }
            var_511 = null;
         }
         if(var_566 != null)
         {
            for(_loc1_ in var_566)
            {
               delete var_566[_loc1_];
            }
            var_566 = null;
         }
         if(var_565 != null)
         {
            for(_loc1_ in var_565)
            {
               delete var_565[_loc1_];
            }
            var_565 = null;
         }
         var_1082 = [];
         var_1081 = [];
         _stringArrayReadOnlyList = [];
         _numberArrayReadOnlyList = [];
      }
      
      public function getStringArray(param1:String) : Array
      {
         var _loc2_:Array = var_565[param1];
         if(_loc2_ != null)
         {
            _loc2_ = _loc2_.slice();
         }
         return _loc2_;
      }
      
      public function getUpdateID() : int
      {
         return _updateID;
      }
   }
}
