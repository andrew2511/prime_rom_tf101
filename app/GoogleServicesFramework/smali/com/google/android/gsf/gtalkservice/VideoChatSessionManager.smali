.class public Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$JingleInfoPacketListener;,
        Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$SessionPacketListener;
    }
.end annotation


# static fields
.field public static final CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mContext:Landroid/content/Context;

.field private mIncomingJingleInfoStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mIncomingSessionStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field public mJingleInfoListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mJingleInfoPacketListener:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$JingleInfoPacketListener;

.field private mLastJingleInfoStanza:Ljava/lang/String;

.field public mListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/ISessionStanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteSessionStanzaListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/ISessionStanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionPacketListener:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$SessionPacketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "<(\\s+)?(\\w+?:)?session\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?session(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    const-string v0, "<(\\s+)?(\\w+?:)?callPerfStats\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 86
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?callPerfStats(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "<(\\s+)?(\\w+?:)?systemInfoStats\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 96
    const-string v0, "<(\\s+)?/(\\s+)?(\\w+?:)?systemInfoStats(\\s+)?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    .line 107
    new-instance v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$SessionPacketListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$SessionPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mSessionPacketListener:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$SessionPacketListener;

    .line 114
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mJingleInfoListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    .line 117
    new-instance v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$JingleInfoPacketListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$JingleInfoPacketListener;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mJingleInfoPacketListener:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$JingleInfoPacketListener;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 143
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mIncomingSessionStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 155
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 156
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$2;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mIncomingJingleInfoStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 166
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->processJingleInfoPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->tryRemoveSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->notifyEachJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "sessionXml"

    .prologue
    .line 306
    if-nez p0, :cond_0

    .line 308
    new-instance v1, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$5;

    invoke-direct {v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$5;-><init>()V

    .line 318
    .local v1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_0
    return-object v1

    .line 314
    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    new-instance v1, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;

    invoke-direct {v1}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;-><init>()V

    .line 315
    .restart local v1       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move-object v0, v1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;

    move-object v2, v0

    invoke-virtual {v2, p0}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->setSessionRawXml(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static extractCallPerfStatsXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 513
    sget-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->CALL_PERF_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->CALL_PERF_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractSessionXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 497
    sget-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->SESSION_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->SESSION_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractSystemInfoStatsXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "iqStanzaXml"

    .prologue
    .line 531
    sget-object v0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->SYSTEM_INFO_STATS_START_TAG_PATTERN:Ljava/util/regex/Pattern;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->SYSTEM_INFO_STATS_END_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractXmlNode(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 10
    .parameter "parentXml"
    .parameter "startTagPattern"
    .parameter "endTagPattern"

    .prologue
    const/4 v9, 0x0

    .line 538
    const/4 v4, -0x1

    .line 539
    .local v4, startIndex:I
    const/4 v0, -0x1

    .line 540
    .local v0, endIndex:I
    const/4 v3, 0x0

    .line 543
    .local v3, offset:I
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 544
    .local v5, startMatcher:Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v9

    .line 573
    :goto_0
    return-object v6

    .line 550
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    .line 551
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 554
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 555
    .local v1, endMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 556
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 568
    :goto_1
    if-gt v0, v4, :cond_3

    .line 569
    const-string v6, "GTalkService"

    const-string v7, "[VideoChatSessionMgr] extractXmlNode: failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 570
    goto :goto_0

    .line 559
    :cond_1
    const-string v6, "/>"

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 560
    .local v2, index:I
    if-gez v2, :cond_2

    .line 561
    const-string v6, "GTalkService"

    const-string v7, "[VideoChatSessionMgr] extractXmlNode: no close tag:"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v6, "GTalkService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 563
    goto :goto_0

    .line 565
    :cond_2
    add-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 573
    .end local v2           #index:I
    :cond_3
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 9
    .parameter "rawIqStanza"
    .parameter "sessionXml"

    .prologue
    .line 387
    const/4 v1, 0x0

    .line 390
    .local v1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local p0
    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 391
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmlParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 392
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string p0, "UTF-8"

    invoke-interface {v5, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4

    .line 395
    const/4 v0, 0x0

    .line 396
    .local v0, inErrorNode:Z
    const/4 p0, 0x0

    .local p0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    move v2, v0

    .end local v0           #inErrorNode:Z
    .local v2, inErrorNode:Z
    move-object v3, v1

    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local v3, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move-object v0, p0

    .line 398
    .end local p0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    :goto_0
    :try_start_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, event:I
    const/4 p0, 0x1

    if-eq v1, p0, :cond_0

    .line 399
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 400
    .local p0, elementName:Ljava/lang/String;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, namespace:Ljava/lang/String;
    const/4 v6, 0x2

    if-ne v1, v6, :cond_9

    .line 403
    const-string v1, "iq"

    .end local v1           #event:I
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 404
    const-string p0, ""

    .end local p0           #elementName:Ljava/lang/String;
    const-string v1, "from"

    invoke-interface {v5, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 405
    .local p0, from:Ljava/lang/String;
    const-string v1, ""

    const-string v4, "to"

    .end local v4           #namespace:Ljava/lang/String;
    invoke-interface {v5, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, to:Ljava/lang/String;
    const-string v1, ""

    const-string v6, "id"

    invoke-interface {v5, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, id:Ljava/lang/String;
    const-string v6, ""

    const-string v7, "type"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 411
    .local v6, type:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 412
    const-string p0, "GTalkService"

    .end local p0           #from:Ljava/lang/String;
    const-string p1, "more than one <iq> found!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #id:Ljava/lang/String;
    .end local v4           #to:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    :cond_0
    move-object p0, v3

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v2           #inErrorNode:Z
    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local p0, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_1
    move-object p1, p0

    .line 481
    :goto_2
    return-object p1

    .line 416
    .restart local v0       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #inErrorNode:Z
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #to:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:Ljava/lang/String;
    .local p0, from:Ljava/lang/String;
    .restart local p1
    :cond_1
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->createIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v3

    .line 419
    invoke-virtual {v3, p0}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/packet/IQ;->setPacketID(Ljava/lang/String;)V

    .line 423
    const-string p0, "set"

    .end local p0           #from:Ljava/lang/String;
    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 424
    sget-object p0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, p0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    :goto_3
    move-object p0, v0

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local p0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    move-object v1, v3

    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local v1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move v0, v2

    .end local v2           #inErrorNode:Z
    .end local v4           #to:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .local v0, inErrorNode:Z
    :goto_4
    move v2, v0

    .end local v0           #inErrorNode:Z
    .restart local v2       #inErrorNode:Z
    move-object v3, v1

    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move-object v0, p0

    .line 474
    .end local p0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    goto :goto_0

    .line 425
    .local v1, id:Ljava/lang/String;
    .restart local v4       #to:Ljava/lang/String;
    .restart local v6       #type:Ljava/lang/String;
    :cond_2
    const-string p0, "get"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 426
    sget-object p0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, p0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 475
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #inErrorNode:Z
    .end local v4           #to:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .end local p1
    :catch_0
    move-exception p0

    move-object p1, v3

    .line 476
    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local p0, ioEx:Ljava/io/IOException;
    .local p1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :goto_5
    const-string v0, "GTalkService"

    const-string v1, "[VideoChatSessionMgr] parseRawIqXml caught "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, p1

    .line 479
    .end local p1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local p0, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    goto :goto_1

    .line 427
    .end local p0           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v0       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #inErrorNode:Z
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #to:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:Ljava/lang/String;
    .local p1, sessionXml:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string p0, "result"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 428
    sget-object p0, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, p0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 477
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #inErrorNode:Z
    .end local v4           #to:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .end local p1           #sessionXml:Ljava/lang/String;
    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .line 478
    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local p1, parserEx:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    const-string v0, "GTalkService"

    const-string v1, "[VideoChatSessionMgr] parseRawIqXml caught "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 429
    .end local p0           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v0       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #inErrorNode:Z
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #to:Ljava/lang/String;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #type:Ljava/lang/String;
    .local p1, sessionXml:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string p0, "error"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 430
    sget-object p0, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, p0}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_3

    .line 432
    :cond_5
    const-string p0, "GTalkService"

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #sessionXml:Ljava/lang/String;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseRawIqXml: BAD IQ type "

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 p0, 0x0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local p0       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    goto :goto_2

    .line 435
    .end local v1           #id:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .restart local v0       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local v4, namespace:Ljava/lang/String;
    .local p0, elementName:Ljava/lang/String;
    .restart local p1       #sessionXml:Ljava/lang/String;
    :cond_6
    const-string v1, "error"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 436
    const-string p0, ""

    .end local p0           #elementName:Ljava/lang/String;
    const-string v0, "code"

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-interface {v5, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, codeStr:Ljava/lang/String;
    const-string p0, ""

    const-string v1, "type"

    invoke-interface {v5, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v1

    .line 438
    .local v1, type:Ljava/lang/String;
    const/4 p0, 0x0

    .line 441
    .local p0, code:I
    :try_start_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .end local v2           #inErrorNode:Z
    if-nez v2, :cond_7

    .line 442
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    move-result p0

    .line 448
    .end local v0           #codeStr:Ljava/lang/String;
    .end local v4           #namespace:Ljava/lang/String;
    :cond_7
    :goto_7
    :try_start_5
    new-instance v0, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>()V

    .line 449
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/XMPPError;->setCode(I)V

    .line 450
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/XMPPError;->setType(Ljava/lang/String;)V

    .line 451
    const/4 p0, 0x1

    .local p0, inErrorNode:Z
    move-object v1, v3

    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local v1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move v8, p0

    .end local p0           #inErrorNode:Z
    .local v8, inErrorNode:Z
    move-object p0, v0

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local p0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    move v0, v8

    .line 452
    .end local v8           #inErrorNode:Z
    .local v0, inErrorNode:Z
    goto/16 :goto_4

    .line 444
    .local v0, codeStr:Ljava/lang/String;
    .local v1, type:Ljava/lang/String;
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #namespace:Ljava/lang/String;
    .local p0, code:I
    :catch_2
    move-exception v0

    .line 445
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #namespace:Ljava/lang/String;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseRawIqXml: caught "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    .line 454
    .end local v1           #type:Ljava/lang/String;
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v2       #inErrorNode:Z
    .restart local v4       #namespace:Ljava/lang/String;
    .local p0, elementName:Ljava/lang/String;
    :cond_8
    if-eqz v2, :cond_c

    if-eqz v0, :cond_c

    .line 456
    :try_start_6
    invoke-static {p0, v4, v5}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object p0

    .line 458
    .local p0, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/packet/XMPPError;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1

    move-object p0, v0

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local p0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    move-object v1, v3

    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local v1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move v0, v2

    .line 461
    .end local v2           #inErrorNode:Z
    .local v0, inErrorNode:Z
    goto/16 :goto_4

    .line 459
    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .end local p0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v2       #inErrorNode:Z
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :catch_3
    move-exception p0

    .line 460
    .local p0, ex:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #namespace:Ljava/lang/String;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseRawIqXml: caught "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local p0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    move-object v1, v3

    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v1       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move v0, v2

    .line 461
    .end local v2           #inErrorNode:Z
    .local v0, inErrorNode:Z
    goto/16 :goto_4

    .line 464
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local v1, event:I
    .restart local v2       #inErrorNode:Z
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #namespace:Ljava/lang/String;
    .local p0, elementName:Ljava/lang/String;
    :cond_9
    const/4 v4, 0x3

    if-ne v1, v4, :cond_b

    .line 465
    .end local v4           #namespace:Ljava/lang/String;
    const-string v1, "error"

    .end local v1           #event:I
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    .end local p0           #elementName:Ljava/lang/String;
    if-eqz p0, :cond_b

    .line 466
    if-eqz v3, :cond_a

    .line 467
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 471
    :goto_8
    const/4 p0, 0x0

    .end local v2           #inErrorNode:Z
    .local p0, inErrorNode:Z
    move-object v1, v3

    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local v1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move v8, p0

    .end local p0           #inErrorNode:Z
    .restart local v8       #inErrorNode:Z
    move-object p0, v0

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local p0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    move v0, v8

    .end local v8           #inErrorNode:Z
    .local v0, inErrorNode:Z
    goto/16 :goto_4

    .line 469
    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .end local p0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v2       #inErrorNode:Z
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :cond_a
    const-string p0, "GTalkService"

    const-string v1, "parseRawIqXml: found Error node before IQ"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    .line 477
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .end local v2           #inErrorNode:Z
    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :catch_4
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local p0, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    goto/16 :goto_6

    .line 475
    .end local p0           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v1       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    :catch_5
    move-exception p0

    move-object p1, v1

    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local p1, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    goto/16 :goto_5

    .restart local v0       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v2       #inErrorNode:Z
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .local p1, sessionXml:Ljava/lang/String;
    :cond_b
    move-object p0, v0

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local p0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    move-object v1, v3

    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v1       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move v0, v2

    .end local v2           #inErrorNode:Z
    .local v0, inErrorNode:Z
    goto/16 :goto_4

    .end local v1           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    .restart local v2       #inErrorNode:Z
    .restart local v3       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v4       #namespace:Ljava/lang/String;
    .local p0, elementName:Ljava/lang/String;
    :cond_c
    move-object p0, v0

    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    .local p0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    move-object v1, v3

    .end local v3           #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    .restart local v1       #iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    move v0, v2

    .end local v2           #inErrorNode:Z
    .local v0, inErrorNode:Z
    goto/16 :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 773
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VideoChatSessionMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void
.end method

.method private notifyEachJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z
    .locals 8
    .parameter "listener"
    .parameter "jingleInfo"

    .prologue
    const/4 v7, 0x0

    .line 748
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->getAccountId()J

    move-result-wide v2

    .line 749
    .local v2, listenerAccountId:J
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    move v4, v7

    .line 769
    .end local v2           #listenerAccountId:J
    :goto_0
    return v4

    .line 753
    .restart local v2       #listenerAccountId:J
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->onStanzaReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    const/4 v4, 0x1

    goto :goto_0

    .line 755
    .end local v2           #listenerAccountId:J
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 756
    .local v0, ex:Landroid/os/RemoteException;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VideoChatSessionMgr] notifyEachJingleInfoListener caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", removing listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 761
    :try_start_2
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 762
    monitor-exit v4

    :goto_1
    move v4, v7

    .line 769
    goto :goto_0

    .line 762
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 763
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 764
    .local v1, ex1:Ljava/lang/Exception;
    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove JingleInfoStanzaListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyIncomingSessionStanza(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 10
    .parameter "fromJid"
    .parameter "iqStanza"

    .prologue
    const/4 v2, 0x0

    .line 586
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->toXML()Ljava/lang/String;

    move-result-object v9

    .line 588
    .local v9, messageXml:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v0

    const-string v3, "voice.google.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    const-string v0, "GTalkService"

    const-string v2, "[VideoChatSessionMgr] dropping incoming google voice call"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;

    invoke-direct {v4, p0, p1, v9}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$6;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v8

    .line 615
    .local v8, handled:Z
    if-nez v8, :cond_0

    .line 616
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.google.android.videochat.RECEIVED_MESSAGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "from"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v0, "accountId"

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 621
    const-string v0, "message"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_2

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyIncomingStanza: no listener, send intent broadcast "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private notifyResponse(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .parameter "fromJid"
    .parameter "original"
    .parameter "response"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$7;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$7;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 659
    return-void
.end method

.method static parseRawIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .parameter "rawIqStanza"

    .prologue
    .line 336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "GTalkService"

    const-string v1, "[VideoChatSessionMgr] parseRawIqXml: invalid xml!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->extractSessionXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    goto :goto_0
.end method

.method static parseRawIqStanzaWithCallPerfStats(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 7
    .parameter "rawIqStanza"

    .prologue
    const/4 v6, 0x0

    .line 359
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const-string v4, "GTalkService"

    const-string v5, "[VideoChatSessionMgr] parseRawIqXml: invalid xml!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 383
    :goto_0
    return-object v4

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->extractCallPerfStatsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, callPerfStatsXml:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->extractSessionXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    .local v2, sessionXml:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_2
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->extractSystemInfoStatsXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, systemInfoStatsXml:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {p0, v4}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->generateIqStanza(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v6

    goto :goto_1
.end method

.method private processJingleInfoPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    .line 726
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    .line 728
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 729
    const-string v1, "processJingleInfoPacket: "

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mJingleInfoListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$9;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$9;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v0

    .line 740
    .local v0, handled:Z
    if-nez v0, :cond_1

    .line 741
    const-string v1, "processJingleInfoPacket: cannot find listener, drop packet"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 743
    :cond_1
    return-void
.end method

.method private tryRemoveSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    monitor-exit v1

    .line 226
    :goto_0
    return-void

    .line 222
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 223
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 224
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRemoveSessionStanzaListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addRemoteJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 671
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 673
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 674
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

    .line 675
    .local v2, rl:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 676
    monitor-exit v3

    goto :goto_0

    .line 685
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #rl:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 679
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 683
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->notifyEachJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z

    .line 685
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public addRemoteSessionListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 195
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 196
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/ISessionStanzaListener;

    .line 197
    .local v2, rl:Lcom/google/android/gtalkservice/ISessionStanzaListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 198
    monitor-exit v3

    goto :goto_0

    .line 202
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #rl:Lcom/google/android/gtalkservice/ISessionStanzaListener;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 201
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V
    .locals 0
    .parameter "context"
    .parameter "connectionContext"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 171
    return-void
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mSessionPacketListener:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$SessionPacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mIncomingSessionStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 179
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mJingleInfoPacketListener:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$JingleInfoPacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mIncomingJingleInfoStanzaFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    goto :goto_0
.end method

.method processIncomingSessionPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 578
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/jivesoftware/smack/packet/IQ;

    .end local p1
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->notifyIncomingSessionStanza(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;)V

    .line 579
    return-void
.end method

.method processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 1
    .parameter "original"
    .parameter "response"

    .prologue
    .line 582
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->notifyResponse(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V

    .line 583
    return-void
.end method

.method public queryJingleInfo()V
    .locals 5

    .prologue
    .line 702
    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;-><init>()V

    .line 704
    .local v2, query:Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    .line 705
    .local v1, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 706
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getJid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->setFrom(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->setTo(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQuery;->makeQuery()V

    .line 714
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 716
    .local v0, conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v3

    new-instance v4, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$8;

    invoke-direct {v4, p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$8;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)V

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z

    .line 722
    return-void
.end method

.method public removeRemoteJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 689
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 691
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 692
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

    .line 693
    .local v2, rl:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 694
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteJingleInfoStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 695
    monitor-exit v3

    .line 699
    .end local v2           #rl:Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;
    :goto_0
    return-void

    .line 698
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeRemoteSessionListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 206
    invoke-interface {p1}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 208
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 209
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/ISessionStanzaListener;

    .line 210
    .local v2, rl:Lcom/google/android/gtalkservice/ISessionStanzaListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/ISessionStanzaListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 211
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mRemoteSessionStanzaListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 212
    monitor-exit v3

    .line 216
    .end local v2           #rl:Lcom/google/android/gtalkservice/ISessionStanzaListener;
    :goto_0
    return-void

    .line 215
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public sendCallPerfStatsStanza(Ljava/lang/String;)V
    .locals 5
    .parameter "callPerfStatsStanza"

    .prologue
    .line 273
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->parseRawIqStanzaWithCallPerfStats(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 275
    .local v0, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    if-nez v0, :cond_1

    .line 276
    const-string v2, "sendCallPerfStatsStanza: stanza is not an IQ!"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 277
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    .line 283
    .local v1, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v1, v2, :cond_2

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_0

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v2

    new-instance v3, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$4;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$4;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    goto :goto_0
.end method

.method public sendSessionStanza(Ljava/lang/String;)V
    .locals 6
    .parameter "stanza"

    .prologue
    .line 229
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->parseRawIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    .line 231
    .local v2, iqStanza:Lorg/jivesoftware/smack/packet/IQ;
    if-nez v2, :cond_0

    .line 232
    const-string v4, "sendSessionStanza: stanza is not an IQ!"

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 233
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 243
    .local v0, conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    .line 244
    .local v3, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v3, v4, :cond_1

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v3, v4, :cond_3

    .line 245
    :cond_1
    const-string v4, "TestSessionError"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    const-string v4, "candidate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 247
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->parseRawIqStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 248
    .local v1, errorResponse:Lorg/jivesoftware/smack/packet/IQ;
    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 249
    const-string v4, "##### TEST SESSION ERROR #####"

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->log(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->processResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/IQ;)V

    goto :goto_0

    .line 259
    .end local v1           #errorResponse:Lorg/jivesoftware/smack/packet/IQ;
    :cond_2
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v4

    new-instance v5, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$3;

    invoke-direct {v5, p0, v2}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$3;-><init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lorg/jivesoftware/smack/packet/IQ;)V

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z

    goto :goto_0

    .line 267
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 268
    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    goto :goto_0
.end method
