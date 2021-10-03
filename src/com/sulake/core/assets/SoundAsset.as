package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var var_20:Sound = null;
      
      private var _disposed:Boolean = false;
      
      private var var_1297:AssetTypeDeclaration;
      
      private var var_687:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1297 = param1;
         var_687 = param2;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1297;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get url() : String
      {
         return var_687;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(var_20)
            {
               var_20.close();
            }
            var_20 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(var_20)
            {
               var_20.close();
            }
            var_20 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(var_20)
            {
               var_20.close();
            }
            var_20 = SoundAsset(param1).var_20;
            return;
         }
      }
      
      public function get content() : Object
      {
         return var_20 as Object;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            var_20 = SoundAsset(param1).var_20;
         }
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_20 = null;
            var_1297 = null;
            var_687 = null;
         }
      }
   }
}
