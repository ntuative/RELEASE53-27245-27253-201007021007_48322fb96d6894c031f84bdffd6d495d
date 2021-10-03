package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1690:int = 5;
      
      public static const const_1594:int = 113;
      
      public static const const_1691:int = 29;
      
      public static const const_1566:int = 0;
      
      public static const const_1553:int = 102;
      
      public static const const_1675:int = 25;
      
      public static const const_1640:int = 20;
      
      public static const const_1532:int = 116;
      
      public static const const_1604:int = 114;
      
      public static const const_1528:int = 101;
      
      public static const const_1672:int = 108;
      
      public static const const_1495:int = 112;
      
      public static const const_1718:int = 100;
      
      public static const const_1702:int = 24;
      
      public static const const_1357:int = 10;
      
      public static const const_1529:int = 111;
      
      public static const const_1627:int = 23;
      
      public static const const_1548:int = 26;
      
      public static const const_1377:int = 2;
      
      public static const const_1609:int = 22;
      
      public static const const_1572:int = 17;
      
      public static const const_1666:int = 18;
      
      public static const const_1657:int = 3;
      
      public static const const_1558:int = 109;
      
      public static const const_1189:int = 1;
      
      public static const const_1575:int = 103;
      
      public static const const_1546:int = 11;
      
      public static const const_1505:int = 28;
      
      public static const const_1543:int = 104;
      
      public static const const_1668:int = 13;
      
      public static const const_1536:int = 107;
      
      public static const const_1688:int = 27;
      
      public static const const_1671:int = 118;
      
      public static const const_1709:int = 115;
      
      public static const const_1611:int = 16;
      
      public static const const_1674:int = 19;
      
      public static const const_1717:int = 4;
      
      public static const const_1598:int = 105;
      
      public static const const_1574:int = 117;
      
      public static const const_1662:int = 119;
      
      public static const const_1509:int = 106;
      
      public static const const_1695:int = 12;
      
      public static const const_1519:int = 110;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_7 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(reason)
         {
            case const_1189:
            case const_1357:
               return "banned";
            case const_1377:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
