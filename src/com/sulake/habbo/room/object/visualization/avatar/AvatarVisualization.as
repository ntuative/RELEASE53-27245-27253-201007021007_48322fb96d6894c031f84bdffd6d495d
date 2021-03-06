package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_790:int = 2;
      
      private static const const_1092:Array = [0,0,0];
       
      
      private var var_717:int = 0;
      
      private var var_411:String;
      
      private var var_1951:int = 0;
      
      private const const_1463:int = 1;
      
      private var var_408:String = "";
      
      private var var_730:int = 0;
      
      private var var_1263:int = 0;
      
      private var var_1834:Boolean = false;
      
      private var var_431:Boolean;
      
      private const const_1091:int = 3;
      
      private var var_1048:int = 0;
      
      private var _effectType:int = 0;
      
      private var var_64:IAvatarImage = null;
      
      private var var_1518:String = "";
      
      private var var_1836:Boolean = false;
      
      private var var_551:Boolean = false;
      
      private var var_1835:Boolean = false;
      
      private var var_731:int = 0;
      
      private var _isDisposed:Boolean;
      
      private const const_1724:int = 3;
      
      private var var_1362:int = -1;
      
      private var var_1519:int = -1;
      
      private var var_1232:Boolean = false;
      
      private var var_2423:Array;
      
      private const const_1093:int = 0;
      
      private var var_1516:int = -1;
      
      private var var_1544:int = -1;
      
      private var var_1049:int = 0;
      
      private var var_1517:int = 0;
      
      private var var_607:String;
      
      private var var_863:Boolean = false;
      
      private var var_1233:Boolean = false;
      
      private var var_490:BitmapDataAsset;
      
      private const const_1460:int = 2;
      
      private var _visualizationData:AvatarVisualizationData = null;
      
      private var var_310:BitmapDataAsset;
      
      private var var_491:Map;
      
      public function AvatarVisualization()
      {
         var_2423 = new Array();
         super();
         var_491 = new Map();
         var_431 = false;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         _visualizationData = param1 as AvatarVisualizationData;
         createSprites(const_1091);
         return true;
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            var_1233 = false;
         }
         if(var_408 == "sit" || var_408 == "lay")
         {
            var_1048 = param1 / 2;
         }
         else
         {
            var_1048 = 0;
         }
         var_1232 = false;
         var_863 = false;
         if(var_408 == "lay")
         {
            var_863 = true;
            _loc2_ = int(var_1518);
            if(_loc2_ < 0)
            {
               var_1232 = true;
            }
         }
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number) : Boolean
      {
         var _loc3_:* = null;
         if(param1.getUpdateID() != var_168)
         {
            var_1835 = param1.getNumber(RoomObjectVariableEnum.const_230) > 0;
            var_1836 = param1.getNumber(RoomObjectVariableEnum.const_202) > 0;
            var_1834 = param1.getNumber(RoomObjectVariableEnum.const_497) > 0;
            var_1233 = param1.getNumber(RoomObjectVariableEnum.const_644) > 0;
            var_551 = param1.getNumber(RoomObjectVariableEnum.const_999) > 0;
            var_1263 = param1.getNumber(RoomObjectVariableEnum.const_266);
            var_408 = param1.getString(RoomObjectVariableEnum.const_383);
            var_1518 = param1.getString(RoomObjectVariableEnum.const_654);
            var_1517 = param1.getNumber(RoomObjectVariableEnum.const_894);
            _effectType = param1.getNumber(RoomObjectVariableEnum.const_1004);
            var_1049 = param1.getNumber(RoomObjectVariableEnum.const_428);
            var_717 = param1.getNumber(RoomObjectVariableEnum.const_337);
            var_1544 = param1.getNumber(RoomObjectVariableEnum.const_359);
            if(var_1049 > 0 && param1.getNumber(RoomObjectVariableEnum.const_337) > 0)
            {
               var_717 = var_1049;
            }
            else
            {
               var_717 = 0;
            }
            validateActions(param2);
            var_607 = param1.getString(RoomObjectVariableEnum.const_1049);
            _loc3_ = param1.getString(RoomObjectVariableEnum.const_180);
            updateFigure(_loc3_);
            var_168 = param1.getUpdateID();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in var_491)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         var_491.reset();
         var_64 = null;
         _loc2_ = getSprite(const_1093);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
         }
      }
      
      private function updateFigure(param1:String) : void
      {
         if(var_411 != param1)
         {
            var_411 = param1;
            resetImages();
         }
      }
      
      override public function dispose() : void
      {
         if(var_491 != null)
         {
            resetImages();
            var_491.dispose();
            var_491 = null;
         }
         _visualizationData = null;
         var_310 = null;
         var_490 = null;
         super.dispose();
         _isDisposed = true;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(const_1463);
         var_310 = null;
         if(var_408 == "mv" || var_408 == "std")
         {
            _loc2_.visible = true;
            if(var_310 == null || param1 != var_151)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  var_310 = var_64.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  var_310 = var_64.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(var_310 != null)
               {
                  _loc2_.asset = var_310.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            var_310 = null;
            _loc2_.visible = false;
         }
      }
      
      private function getAvatarImage(param1:Number) : IAvatarImage
      {
         var _loc2_:String = "avatarImage" + param1.toString();
         var _loc3_:IAvatarImage = var_491.getValue(_loc2_) as IAvatarImage;
         if(_loc3_ == null)
         {
            _loc3_ = _visualizationData.getAvatar(var_411,param1,var_607,this);
            if(_loc3_ != null)
            {
               var_491.add(_loc2_,_loc3_);
            }
         }
         return _loc3_;
      }
      
      public function avatarImageReady(param1:String) : void
      {
         resetImages();
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var_490 = null;
         var _loc2_:IRoomObjectSprite = getSprite(const_1460);
         if(var_551)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               var_490 = _visualizationData.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               var_490 = _visualizationData.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(var_408 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(var_408 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(var_490 != null)
            {
               _loc2_.asset = var_490.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      override public function update(param1:IRoomGeometry = null, param2:int = 0) : void
      {
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:* = null;
         var _loc27_:* = null;
         var _loc3_:IRoomObject = object;
         if(_loc3_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(_visualizationData == null)
         {
            return;
         }
         var _loc4_:IRoomObjectModel = _loc3_.getModel();
         var _loc5_:Number = param1.scale;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = updateModel(_loc4_,_loc5_);
         if(_loc9_ || _loc5_ != var_151 || var_64 == null)
         {
            if(_loc5_ != var_151)
            {
               _loc7_ = true;
               validateActions(_loc5_);
            }
            if(_loc7_ || var_64 == null)
            {
               var_64 = getAvatarImage(_loc5_);
               _loc6_ = true;
            }
            if(var_64 == null)
            {
               return;
            }
            updateShadow(_loc5_);
            updateTypingBubble(_loc5_);
            _loc8_ = updateObject(_loc3_,param1,true);
            updateActions(var_64);
            var_151 = _loc5_;
         }
         else
         {
            _loc8_ = updateObject(_loc3_,param1);
         }
         var _loc10_:Boolean = _loc8_ || _loc9_ || _loc7_;
         var _loc11_:Boolean = var_431 || var_731 > 0;
         if(_loc10_)
         {
            var_731 = const_790;
         }
         if(_loc10_ || _loc11_)
         {
            increaseUpdateId();
            --var_731;
            --var_730;
            if(!(var_730 <= 0 || _loc7_ || _loc9_ || _loc6_))
            {
               return;
            }
            var_64.updateAnimationByFrames(1);
            var_730 = const_790;
            _loc13_ = var_64.getCanvasOffsets();
            if(_loc13_ == null || _loc13_.length < 3)
            {
               _loc13_ = const_1092;
            }
            _loc12_ = getSprite(const_1093);
            if(_loc12_ != null)
            {
               _loc16_ = var_64.getImage(AvatarSetType.const_35,false);
               if(_loc16_ != null)
               {
                  _loc12_.asset = _loc16_;
               }
               if(_loc12_.asset)
               {
                  _loc12_.offsetX = -1 * _loc5_ / 2 + _loc13_[0];
                  _loc12_.offsetY = -_loc12_.asset.height + _loc5_ / 4 + _loc13_[1] + var_1048;
               }
               if(var_863)
               {
                  if(var_1232)
                  {
                     _loc12_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc12_.relativeDepth = -0.409 + _loc13_[2];
                  }
               }
               else
               {
                  _loc12_.relativeDepth = -0.01 + _loc13_[2];
               }
            }
            _loc12_ = getSprite(const_1460);
            if(_loc12_ != null && _loc12_.visible)
            {
               if(!var_863)
               {
                  _loc12_.relativeDepth = -0.02 + _loc13_[2];
               }
               else
               {
                  _loc12_.relativeDepth = -0.44 + _loc13_[2];
               }
            }
            var_431 = var_64.isAnimating();
            _loc14_ = const_1091;
            for each(_loc15_ in var_64.getSprites())
            {
               if(_loc15_.id == "avatar")
               {
                  _loc12_ = getSprite(const_1093);
                  _loc17_ = var_64.getLayerData(_loc15_);
                  _loc18_ = _loc15_.getDirectionOffsetX(var_64.getDirection());
                  _loc19_ = _loc15_.getDirectionOffsetY(var_64.getDirection());
                  if(_loc17_ != null)
                  {
                     _loc18_ += _loc17_.dx;
                     _loc19_ += _loc17_.dy;
                  }
                  if(_loc5_ < 48)
                  {
                     _loc18_ /= 2;
                     _loc19_ /= 2;
                  }
                  _loc12_.offsetX += _loc18_;
                  _loc12_.offsetY += _loc19_;
               }
               else
               {
                  _loc12_ = getSprite(_loc14_);
                  if(_loc12_ != null)
                  {
                     _loc12_.visible = true;
                     _loc20_ = var_64.getLayerData(_loc15_);
                     _loc21_ = 0;
                     _loc22_ = _loc15_.getDirectionOffsetX(var_64.getDirection());
                     _loc23_ = _loc15_.getDirectionOffsetY(var_64.getDirection());
                     _loc24_ = _loc15_.getDirectionOffsetZ(var_64.getDirection());
                     _loc25_ = 0;
                     if(_loc15_.hasDirections)
                     {
                        _loc25_ = var_64.getDirection();
                     }
                     if(_loc20_ != null)
                     {
                        _loc21_ = _loc20_.animationFrame;
                        _loc22_ += _loc20_.dx;
                        _loc23_ += _loc20_.dy;
                        _loc25_ += _loc20_.directionOffset;
                     }
                     if(_loc5_ < 48)
                     {
                        _loc22_ /= 2;
                        _loc23_ /= 2;
                     }
                     if(_loc25_ < 0)
                     {
                        _loc25_ += 8;
                     }
                     else if(_loc25_ > 7)
                     {
                        _loc25_ -= 8;
                     }
                     _loc26_ = var_64.getScale() + "_" + _loc15_.member + "_" + _loc25_ + "_" + _loc21_;
                     _loc27_ = var_64.getAsset(_loc26_);
                     if(_loc27_ == null)
                     {
                        continue;
                     }
                     _loc12_.asset = _loc27_.content as BitmapData;
                     _loc12_.offsetX = -_loc27_.offset.x - _loc5_ / 2 + _loc22_;
                     _loc12_.offsetY = -_loc27_.offset.y + _loc23_ + var_1048;
                     if(var_863)
                     {
                        _loc12_.relativeDepth = -0.409 - 0.1 * spriteCount * _loc24_;
                     }
                     else
                     {
                        _loc12_.relativeDepth = -0.01 - 0.1 * spriteCount * _loc24_;
                     }
                     if(_loc15_.ink == 33)
                     {
                        _loc12_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc12_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc14_++;
               }
            }
         }
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param3 || var_301 != param1.getUpdateID() || var_1362 != param2.updateId)
         {
            _loc4_ = param1.getDirection().x - param2.direction.x;
            _loc4_ = (_loc4_ % 360 + 360) % 360;
            _loc5_ = var_1544;
            if(var_408 == "float")
            {
               _loc5_ = _loc4_;
            }
            else
            {
               _loc5_ -= param2.direction.x;
            }
            _loc5_ = (_loc5_ % 360 + 360) % 360;
            if(_loc4_ != var_1516 || param3)
            {
               var_1516 = _loc4_;
               _loc4_ -= 112.5;
               _loc4_ = (_loc4_ + 360) % 360;
               var_64.setDirectionAngle(AvatarSetType.const_35,_loc4_);
            }
            if(_loc5_ != var_1519 || param3)
            {
               var_1519 = _loc5_;
               if(var_1519 != var_1516)
               {
                  _loc5_ -= 112.5;
                  _loc5_ = (_loc5_ + 360) % 360;
                  var_64.setDirectionAngle(AvatarSetType.const_45,_loc5_);
               }
            }
            var_301 = param1.getUpdateID();
            var_1362 = param2.updateId;
            return true;
         }
         return false;
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_376,var_408,var_1518);
         if(var_1263 > 0)
         {
            param1.appendAction(AvatarAction.const_286,AvatarAction.const_1386[var_1263]);
         }
         if(var_1517 > 0)
         {
            param1.appendAction(AvatarAction.const_962,var_1517);
         }
         if(var_1951 > 0)
         {
            param1.appendAction(AvatarAction.const_832,var_1951);
         }
         if(var_1049 > 0)
         {
            param1.appendAction(AvatarAction.const_937,var_1049);
         }
         if(var_717 > 0)
         {
            param1.appendAction(AvatarAction.const_1007,var_717);
         }
         if(var_1835)
         {
            param1.appendAction(AvatarAction.const_267);
         }
         if(var_1834 || var_1233)
         {
            param1.appendAction(AvatarAction.const_377);
         }
         if(var_1836)
         {
            param1.appendAction(AvatarAction.const_291);
         }
         if(_effectType > 0)
         {
            param1.appendAction(AvatarAction.const_434,_effectType);
         }
         param1.endActionAppends();
         var_431 = param1.isAnimating();
         var _loc2_:int = const_1091;
         for each(_loc3_ in var_64.getSprites())
         {
            if(_loc3_.id != "avatarImage")
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
   }
}
