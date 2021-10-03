package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import deng.fzip.FZipErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_544:uint = 0;
      
      private var var_97:FZip;
      
      private var var_1365:Array;
      
      private var var_2170:uint = 0;
      
      private var var_945:int = 0;
      
      private var _bytesTotal:uint = 0;
      
      public function ZipLoader(param1:LoaderContext = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
         var_1365 = new Array();
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_97)
         {
            var_97.removeEventListener(Event.COMPLETE,onComplete);
            var_97.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_97.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_97.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
            var_97.removeEventListener(FZipErrorEvent.const_127,onParseError);
         }
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         debug("Load event IO ERROR for file \"undefined\"");
         if(!handleHttpStatus(var_150))
         {
            var_190 = getTimer();
            failure("IO Error, load operation failed for file \"undefined\" (" + var_544 + "/" + _bytesTotal + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_544;
      }
      
      private function onParseError(param1:FZipErrorEvent) : void
      {
         debug("Load event parse error for file \"undefined\"");
         if(!handleHttpStatus(var_150))
         {
            var_190 = getTimer();
            failure("Parse Error, load operation failed for file \"undefined\" (" + var_544 + "/" + _bytesTotal + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
      }
      
      override public function get bytesTotal() : uint
      {
         return _bytesTotal;
      }
      
      public function get method_16() : Array
      {
         return var_1365;
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var name:String = null;
         var event:Event = param1;
         try
         {
            name = getQualifiedClassName(var_14.content);
            var_1365.push(var_14.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_945;
            if(var_1365.length == var_2170)
            {
               var_14.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_14.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               var_577 = true;
               var_190 = getTimer();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,_bytesTotal,var_544,elapsedTime));
            }
            else
            {
               var_14.loadBytes(var_97.getFileAt(var_945).content);
            }
         }
         catch(e:Error)
         {
            failure("Crashed on ZipLoader.onLoaderComplete: \"undefined\" (" + var_544 + "/" + _bytesTotal + " bytes): " + e.message);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         _bytesTotal = param1.bytesTotal;
         var_544 = param1.bytesLoaded;
         debug("Load event PROGRESS for file \"undefined\"");
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,_bytesTotal,var_544,elapsedTime));
      }
      
      override public function load(param1:URLRequest, param2:int = 5) : void
      {
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         var_40 = param1;
         _name = parseNameFromUrl(var_40.url);
         var_299 = param2;
         if(var_97)
         {
            var_97.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_97 = new FZip();
         var_97.addEventListener(Event.COMPLETE,onComplete);
         var_97.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_97.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_97.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_97.addEventListener(FZipErrorEvent.const_127,onParseError);
         if(!var_472)
         {
            var_824 = getTimer();
            var_97.load(var_40);
         }
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(var_299 > 0)
            {
               if(var_97)
               {
                  var_97.close();
               }
               addRequestCounterToUrlRequest(var_40,const_871 - var_299);
               if(var_1187)
               {
                  var_40.requestHeaders.push(new URLRequestHeader("pragma","no-cache"));
                  var_40.requestHeaders.push(new URLRequestHeader("Cache-Control","no-cache"));
                  var_1187 = false;
               }
               var_97.load(var_40);
               --var_299;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_40.url + "\" (" + var_544 + "/" + _bytesTotal + " bytes)");
            removeEventListeners();
         }
         return false;
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_945 = 0;
         var_2170 = var_97.getFileCount();
         debug("Load event COMPLETE for file \"undefined\"");
         removeEventListeners();
         try
         {
            if(var_14)
            {
               var_14.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_14.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_14.loadBytes(var_97.getFileAt(var_945).content);
            }
         }
         catch(e:Error)
         {
            debug("Failed to extract files from library \"undefined\"");
            if(!handleHttpStatus(var_150))
            {
               failure("Crashed on ZipLoader.onComplete: \"undefined\" (" + var_544 + "/" + _bytesTotal + " bytes): " + e.message);
            }
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_150 = param1.status;
         debug("Load event STATUS " + var_150 + " for file \"" + var_40.url + "\"");
      }
      
      override public function resume() : void
      {
         if(var_472 && !_disposed)
         {
            var_472 = false;
            if(!var_577 && var_40)
            {
               var_97.load(var_40);
            }
         }
      }
   }
}
