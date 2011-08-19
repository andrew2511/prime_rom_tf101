.class public Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;
.super Ljava/lang/Object;
.source "RawStanzaSendReceiveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;
    }
.end annotation


# instance fields
.field private mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mExtensibleIqStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mRawXmlExtensionFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mRawXmlPacketListener:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

.field private mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlPacketListener:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->onIqStanzaReceived(Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->onStanzaReceived(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V

    return-void
.end method

.method private static createIqStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 125
    if-nez p4, :cond_0

    .line 126
    new-instance v1, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$3;

    invoke-direct {v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$3;-><init>()V

    .line 136
    .local v1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_0
    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 140
    const-string v2, "set"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    :goto_1
    move-object v2, v1

    .line 153
    :goto_2
    return-object v2

    .line 132
    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    new-instance v1, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    invoke-direct {v1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;-><init>()V

    .line 133
    .restart local v1       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move-object v0, v1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    move-object v2, v0

    invoke-virtual {v2, p4}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->setExtension(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    const-string v2, "get"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 144
    :cond_2
    const-string v2, "result"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 146
    :cond_3
    const-string v2, "error"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_1

    .line 149
    :cond_4
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createIqStanza: invalid IQ type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private static createMessageStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;
    .locals 5
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 211
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 213
    .local v1, stanza:Lorg/jivesoftware/smack/packet/Message;
    if-eqz p4, :cond_0

    .line 214
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;-><init>()V

    .line 215
    .local v0, packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    invoke-virtual {v0, p4}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->setExtension(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 219
    .end local v0           #packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_0
    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 223
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    const-string v2, "HEADLINE"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 235
    :cond_1
    :goto_0
    return-object v1

    .line 226
    :cond_2
    const-string v2, "ERROR"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    goto :goto_0

    .line 230
    :cond_3
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMessageStanza: unsupported type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createPresenceStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 6
    .parameter "packetId"
    .parameter "from"
    .parameter "to"
    .parameter "type"
    .parameter "extension"

    .prologue
    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, presenceType:Lorg/jivesoftware/smack/packet/Presence$Type;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    const-string v3, "AVAILABLE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 300
    :cond_0
    :goto_0
    new-instance v2, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 302
    .local v2, stanza:Lorg/jivesoftware/smack/packet/Presence;
    if-eqz p4, :cond_1

    .line 303
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;-><init>()V

    .line 304
    .local v0, packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    invoke-virtual {v0, p4}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->setExtension(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 308
    .end local v0           #packetExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_1
    invoke-virtual {v2, p0}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    move-object v3, v2

    .line 312
    .end local v2           #stanza:Lorg/jivesoftware/smack/packet/Presence;
    :goto_1
    return-object v3

    .line 284
    :cond_2
    const-string v3, "UNAVAILABLE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 286
    :cond_3
    const-string v3, "SUBSCRIBE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 287
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 288
    :cond_4
    const-string v3, "UNSUBSCRIBE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 290
    :cond_5
    const-string v3, "PROBE"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 291
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 292
    :cond_6
    const-string v3, "ERROR"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_0

    .line 296
    :cond_7
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPresenceStanza: unsupported type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getAppPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "intent"

    .prologue
    .line 508
    const-string v4, "app"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 511
    .local v3, parcelable:Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 512
    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    move-object v1, v0

    .line 513
    .local v1, appPI:Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    .line 518
    .end local v1           #appPI:Landroid/app/PendingIntent;
    .local v2, appPackage:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 515
    .end local v2           #appPackage:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #appPackage:Ljava/lang/String;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 522
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RawStanzaSendReceiveMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    return-void
.end method

.method private onIqStanzaReceived(Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;)V
    .locals 6
    .parameter "iqStanza"

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, from:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, elementName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, namespace:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;->toXML()Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, rawXml:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIqStanzaReceived: element="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", ns="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 364
    const-string v5, "iq"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendXmppReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private onStanzaReceived(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 11
    .parameter "packet"

    .prologue
    .line 374
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, from:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getExtensions()Ljava/util/Iterator;

    move-result-object v8

    .line 377
    .local v8, extensions:Ljava/util/Iterator;
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 379
    .local v7, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    instance-of v1, v7, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    if-eqz v1, :cond_0

    .line 380
    move-object v0, v7

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    move-object v9, v0

    .line 381
    .local v9, rawXmlExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->getElementName()Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, elementName:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, namespace:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;->toXML()Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, rawXml:Ljava/lang/String;
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v1, :cond_1

    .line 387
    const-string v6, "message"

    .line 392
    .local v6, type:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onStanzaReceived: element="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", ns="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", type="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    move-object v1, p0

    .line 394
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendXmppReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v3           #elementName:Ljava/lang/String;
    .end local v4           #namespace:Ljava/lang/String;
    .end local v5           #rawXml:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .end local v7           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    .end local v9           #rawXmlExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_0
    return-void

    .line 389
    .restart local v3       #elementName:Ljava/lang/String;
    .restart local v4       #namespace:Ljava/lang/String;
    .restart local v5       #rawXml:Ljava/lang/String;
    .restart local v7       #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    .restart local v9       #rawXmlExtension:Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;
    :cond_1
    const-string v6, "presence"

    .restart local v6       #type:Ljava/lang/String;
    goto :goto_0
.end method

.method private processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V
    .locals 6
    .parameter "original"
    .parameter "response"
    .parameter "sendXmppIntent"

    .prologue
    .line 452
    invoke-static {p3}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, appPackage:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 455
    :cond_0
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processResponse, original="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reponse="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-void

    .line 460
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gtalkservice.intent.RECEIVE_IQ_RESPONSE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "from"

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v3, "accountId"

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 465
    const-string v3, "message"

    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v3, "originalStanza"

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".permission.RECEIVE_XMPP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, permission:Ljava/lang/String;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processResponse, send intent broadcast with category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", permission="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 479
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "sendXmppIntent"
    .parameter "error"

    .prologue
    .line 483
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, appPackage:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 485
    const-string v3, "GTalkService"

    const-string v4, "[RawStanzaSendReceiveMgr] processSendFailed:app not found in the sendXmppIntent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gtalkservice.intent.SEND_XMPP_FAILED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "error"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const-string v3, "intent"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 493
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".permission.RECEIVE_XMPP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, permission:Ljava/lang/String;
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 499
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[RawStanzaSendReceiveMgr] processSendFailed: send intent broadcast with category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", permission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendXmppReceiveIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "from"
    .parameter "elementName"
    .parameter "namespace"
    .parameter "rawXml"
    .parameter "stanzaType"

    .prologue
    .line 404
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    move-result-object v5

    invoke-virtual {v5, p5, p2, p3}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->getParserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 407
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 408
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendXmppReceiveIntent: cannot find a ParserInfo for element <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">, stanzaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 442
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.gtalkservice.intent.RECEIVE_XMPP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "from"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v5, "accountId"

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 417
    const-string v5, "message"

    invoke-virtual {v2, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v5, "stanzaType"

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string v5, "iq"

    invoke-virtual {p5, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 424
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;

    .line 426
    .local v1, info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendXmppReceiveIntent: element="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ns="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stanzaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 429
    iget-object v5, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    invoke-direct {p0, v2, v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sentIntent(Landroid/content/Intent;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 433
    .end local v1           #info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;

    .line 434
    .restart local v1       #info:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 436
    .local v3, intentCopy:Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendXmppReceiveIntent: element="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ns="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stanzaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", component="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->log(Ljava/lang/String;)V

    .line 439
    iget-object v5, v1, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager$ParserInfo;->intentReceiverInfo:Landroid/content/ComponentName;

    invoke-direct {p0, v3, v5}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sentIntent(Landroid/content/Intent;Landroid/content/ComponentName;)V

    goto :goto_1
.end method

.method private sentIntent(Landroid/content/Intent;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "intent"
    .parameter "cName"

    .prologue
    .line 445
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v1, "com.google.android.xmpp.permission.SEND_RECEIVE"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 449
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 69
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 73
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lcom/google/android/gsf/gtalkservice/extensions/ExtensibleIQ;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 74
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mExtensibleIqStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 88
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlExtensionFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 107
    return-void
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlPacketListener:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mExtensibleIqStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlPacketListener:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$RawXmlPacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mRawXmlExtensionFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    goto :goto_0
.end method

.method public sendIqStanza(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 162
    const/4 v6, 0x0

    .line 166
    .local v6, result:Z
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 167
    .local v0, conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    const-string v10, "attr:id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, packetId:Ljava/lang/String;
    const-string v10, "attr:from"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, from:Ljava/lang/String;
    const-string v10, "attr:to"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, to:Ljava/lang/String;
    const-string v10, "attr:type"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, type:Ljava/lang/String;
    const-string v10, "extension"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, extension:Ljava/lang/String;
    const-string v10, "use_rmq"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 174
    .local v9, useRmq:Z
    invoke-static {v5, v2, v7, v8, v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->createIqStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    .line 175
    .local v3, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v4

    .line 177
    .local v4, iqType:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v10, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v4, v10, :cond_0

    sget-object v10, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v4, v10, :cond_2

    .line 181
    :cond_0
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v10

    new-instance v11, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;

    invoke-direct {v11, p0, v3, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$4;-><init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;Lorg/jivesoftware/smack/packet/IQ;Landroid/content/Intent;)V

    invoke-virtual {v10, v3, v11, v9}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    move-result v6

    .line 193
    :goto_0
    if-nez v6, :cond_1

    .line 194
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v11, "no_connection"

    invoke-static {v10, p1, v11}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 196
    :cond_1
    return-void

    .line 189
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 190
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v6

    goto :goto_0
.end method

.method public sendMessageStanza(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    .line 244
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 245
    .local v0, conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    const-string v8, "attr:id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, packetId:Ljava/lang/String;
    const-string v8, "attr:from"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, from:Ljava/lang/String;
    const-string v8, "attr:to"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, to:Ljava/lang/String;
    const-string v8, "attr:type"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, type:Ljava/lang/String;
    const-string v8, "extension"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, extension:Ljava/lang/String;
    const-string v8, "use_rmq"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 252
    .local v7, useRmq:Z
    invoke-static {v3, v2, v5, v6, v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->createMessageStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v4

    .line 253
    .local v4, stanza:Lorg/jivesoftware/smack/packet/Message;
    if-nez v4, :cond_1

    .line 254
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v9, "unsupported_message_type"

    invoke-static {v8, p1, v9}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/jivesoftware/smack/packet/Message;->setAccountId(J)V

    .line 261
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 262
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v9, "no_connection"

    invoke-static {v8, p1, v9}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPresenceStanza(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 321
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 322
    .local v0, conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    const-string v8, "attr:to"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, to:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 326
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 327
    :cond_1
    const-string v8, "GTalkService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendPresenceStanza: presence must have a \'to\' field that\'s not the same as the user\'s own username, intent\'s to="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v9, "unsupported_presence"

    invoke-static {v8, p1, v9}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 350
    :cond_2
    :goto_0
    return-void

    .line 333
    :cond_3
    const-string v8, "attr:id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, packetId:Ljava/lang/String;
    const-string v8, "attr:from"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, from:Ljava/lang/String;
    const-string v8, "attr:type"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, type:Ljava/lang/String;
    const-string v8, "extension"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, extension:Ljava/lang/String;
    const-string v8, "use_rmq"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 339
    .local v7, useRmq:Z
    invoke-static {v3, v2, v5, v6, v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->createPresenceStanza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v4

    .line 340
    .local v4, stanza:Lorg/jivesoftware/smack/packet/Presence;
    if-nez v4, :cond_4

    .line 341
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v9, "unsupported_presence"

    invoke-static {v8, p1, v9}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lorg/jivesoftware/smack/packet/Presence;->setAccountId(J)V

    .line 347
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v8

    if-nez v8, :cond_2

    .line 348
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v9, "no_connection"

    invoke-static {v8, p1, v9}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
