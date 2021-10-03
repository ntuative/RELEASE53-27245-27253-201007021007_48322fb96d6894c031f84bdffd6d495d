package com.sulake.habbo.communication
{
   import com.sulake.core.Core;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.messages.outgoing.handshake.DisconnectMessageComposer;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_83:int = 0;
      
      private var var_35:String = "";
      
      private var var_1441:Timer;
      
      private var var_296:Array;
      
      private var var_2363:Boolean = false;
      
      private var var_89:String = "";
      
      private var _habboConfiguration:IHabboConfigurationManager;
      
      private var var_1094:IMessageConfiguration;
      
      private const const_1750:int = 2;
      
      private var var_387:int = -1;
      
      private var var_337:ICoreCommunicationManager;
      
      private var var_987:int = 1;
      
      private var var_2364:Boolean = false;
      
      private var var_2362:Boolean = false;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1094 = new HabboMessages();
         var_296 = [];
         var_1441 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
         param1.events.addEventListener(Event.UNLOAD,unloading);
      }
      
      public function get port() : int
      {
         if(var_387 < 0 || var_387 >= var_296.length)
         {
            return 0;
         }
         return var_296[var_387];
      }
      
      private function unloading(param1:Event) : void
      {
         if(_connection)
         {
            _connection.send(new DisconnectMessageComposer());
            _connection.dispose();
            _connection = null;
         }
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_296[var_387]);
         tryNextPort();
      }
      
      private function onConnect(param1:Event) : void
      {
         ErrorReportStorage.addDebugData("Connection","Connected with " + var_987 + " attempts");
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + _habboConfiguration);
         if(_habboConfiguration == null)
         {
            Core.crash("Received configuration ready event but configuration was null",Core.const_189);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Ready");
            var_296 = [];
            var_35 = _habboConfiguration.getKey("connection.info.host",null);
            if(var_35 == null)
            {
               Core.crash("connection.info.host was not defined",Core.const_356);
               return;
            }
            _loc2_ = _habboConfiguration.getKey("connection.info.port",null);
            if(_loc2_ == null)
            {
               Core.crash("connection.info.port was not defined",Core.const_356);
               return;
            }
            if(_habboConfiguration.keyExists("local.environment"))
            {
               var_35 = _habboConfiguration.getKey("connection.info.host.local");
               _loc2_ = _habboConfiguration.getKey("connection.info.port.local");
            }
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_296.push(parseInt(_loc4_.replace(" ","")));
            }
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Host: " + var_35);
            Logger.log("Connection Host: " + var_35);
            Logger.log("Connection Ports: " + var_296);
            Logger.log("Habbo Connection Info:" + _connection);
            var_2364 = true;
            if(var_2362)
            {
               nextPort();
            }
         }
      }
      
      public function messageReceived(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1402,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1316,param1 + " " + param2);
         if(false)
         {
            var_89 += ",R:" + param1;
         }
         else
         {
            var_89 = "R:" + param1;
         }
         if(false)
         {
            var_89 = var_89.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_89);
      }
      
      private function nextPort() : void
      {
         if(false)
         {
            return;
         }
         ++var_387;
         if(var_387 >= var_296.length)
         {
            ++var_987;
            ErrorReportStorage.addDebugData("ConnectionRetry","Connection attempt " + var_987);
            if(var_987 > const_1750)
            {
               if(var_2363)
               {
                  return;
               }
               var_2363 = true;
               Core.error("Connection failed to host " + var_35 + " ports " + var_296,true,Core.const_356);
               return;
            }
            var_387 = 0;
         }
         _connection.timeout = var_987 * 10000;
         _connection.init(var_35,var_296[var_387]);
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1441.stop();
         nextPort();
      }
      
      public function get mode() : int
      {
         return var_83;
      }
      
      override public function dispose() : void
      {
         if(_connection)
         {
            _connection.dispose();
            _connection = null;
         }
         if(var_337)
         {
            var_337.release(new IIDCoreCommunicationManager());
            var_337 = null;
         }
         if(_habboConfiguration)
         {
            _habboConfiguration.release(new IIDHabboConfigurationManager());
            _habboConfiguration = null;
         }
         super.dispose();
      }
      
      public function initConnection(param1:String) : void
      {
         switch(param1)
         {
            case HabboConnectionType.const_278:
               if(_habboConfiguration == null)
               {
                  Core.crash("Tried to connect to proxy but configuration was null",Core.const_356);
                  return;
               }
               if(_connection == null)
               {
                  Core.crash("Tried to connect to proxy but connection was null",Core.const_356);
                  return;
               }
               var_2362 = true;
               if(var_2364)
               {
                  nextPort();
               }
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = _habboConfiguration.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         var_337.addConnectionMessageEvent(HabboConnectionType.const_278,param1);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1404,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1304,String(param2));
      }
      
      public function messageSent(param1:String, param2:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1375,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1439,param1 + " " + param2);
         if(false)
         {
            var_89 += ",S:" + param1;
         }
         else
         {
            var_89 = "S:" + param1;
         }
         if(false)
         {
            var_89 = var_89.substring(-150);
         }
         ErrorReportStorage.addDebugData("MESSAGE_QUEUE",var_89);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_296[var_387]);
         tryNextPort();
      }
      
      public function set mode(param1:int) : void
      {
         var_83 = param1;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_337 = param2 as ICoreCommunicationManager;
            var_337.connectionStateListener = this;
            var_337.registerProtocolType(HabboProtocolType.const_982,WedgieProtocol);
            _connection = var_337.createConnection(HabboConnectionType.const_278,ConnectionType.const_854);
            _loc3_ = var_337.getProtocolInstanceOfType(HabboProtocolType.const_982);
            _connection.registerMessageClasses(var_1094);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
            _connection.addEventListener(Event.CONNECT,onConnect);
         }
      }
      
      private function tryNextPort() : void
      {
         var_1441.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1441.start();
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Received");
            _habboConfiguration = param2 as IHabboConfigurationManager;
            (_habboConfiguration as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config NOT received");
         }
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return !!var_337 ? var_337.queueConnection(HabboConnectionType.const_278,param1) : null;
      }
   }
}
