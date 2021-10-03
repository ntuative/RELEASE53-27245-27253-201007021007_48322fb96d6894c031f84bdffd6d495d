package com.sulake.core.assets.loaders
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   
   class AssetLoaderEventBroker extends EventDispatcher implements IDisposable
   {
       
      
      protected var var_150:int = 0;
      
      protected var var_2481:int = 2;
      
      protected var var_393:int = 0;
      
      function AssetLoaderEventBroker()
      {
         super();
      }
      
      protected function loadEventHandler(param1:Event) : void
      {
         switch(param1.type)
         {
            case HTTPStatusEvent.HTTP_STATUS:
               var_150 = HTTPStatusEvent(param1).status;
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_952,var_150));
               break;
            case Event.COMPLETE:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,var_150));
               break;
            case Event.UNLOAD:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_1031,var_150));
               break;
            case Event.OPEN:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_875,var_150));
               break;
            case ProgressEvent.PROGRESS:
               dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_1023,var_150));
               break;
            case IOErrorEvent.IO_ERROR:
               if(!retry())
               {
                  dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_48,var_150));
               }
               break;
            case SecurityErrorEvent.SECURITY_ERROR:
               if(!retry())
               {
                  dispatchEvent(new AssetLoaderEvent(AssetLoaderEvent.const_48,var_150));
               }
               break;
            default:
               Logger.log("Unknown asset loader event! AssetLoaderEventBroker::loadEventHandler(" + param1 + ")");
         }
      }
      
      protected function retry() : Boolean
      {
         return false;
      }
   }
}
