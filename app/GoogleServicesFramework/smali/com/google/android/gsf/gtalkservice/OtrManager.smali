.class public Lcom/google/android/gsf/gtalkservice/OtrManager;
.super Ljava/lang/Object;
.source "OtrManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/OtrManager$3;,
        Lcom/google/android/gsf/gtalkservice/OtrManager$OtrQueryListener;
    }
.end annotation


# instance fields
.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mQueryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

.field private mQueryListener:Lorg/jivesoftware/smack/PacketListener;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/OtrManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/OtrManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/OtrManager;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 312
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OtrMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method


# virtual methods
.method public getOtrEtag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 68
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/TalkContract$ContactsEtag;->getOtrEtag(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public goOffRecordInRoom(Ljava/lang/String;Z)V
    .locals 5
    .parameter "room"
    .parameter "otrStatus"

    .prologue
    .line 113
    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;-><init>()V

    .line 114
    .local v2, packet:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setTo(Ljava/lang/String;)V

    .line 115
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 117
    new-instance v1, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;-><init>(Ljava/lang/String;Z)V

    .line 118
    .local v1, item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->addItem(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;)V

    .line 120
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    .line 121
    .local v0, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v3, Lcom/google/android/gsf/gtalkservice/OtrManager$2;

    invoke-direct {v3, p0, p2}, Lcom/google/android/gsf/gtalkservice/OtrManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/OtrManager;Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    .line 131
    return-void
.end method

.method public goOffRecordWithContact(Ljava/util/ArrayList;Z)V
    .locals 7
    .parameter
    .parameter "otrStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;

    invoke-direct {v4}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;-><init>()V

    .line 93
    .local v4, packet:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, contact:Ljava/lang/String;
    new-instance v3, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;

    invoke-direct {v3, v0, p2}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;-><init>(Ljava/lang/String;Z)V

    .line 97
    .local v3, item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    invoke-virtual {v4, v3}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->addItem(Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;)V

    goto :goto_0

    .line 100
    .end local v0           #contact:Ljava/lang/String;
    .end local v3           #item:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery$Item;
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v2

    .line 101
    .local v2, iqMgr:Lcom/google/android/gsf/gtalkservice/IQPacketManager;
    new-instance v5, Lcom/google/android/gsf/gtalkservice/OtrManager$1;

    invoke-direct {v5, p0, p2}, Lcom/google/android/gsf/gtalkservice/OtrManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/OtrManager;Z)V

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    .line 110
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V
    .locals 0
    .parameter "context"
    .parameter "resolver"
    .parameter "connectionCtx"

    .prologue
    .line 51
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 52
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mResolver:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mQueryListener:Lorg/jivesoftware/smack/PacketListener;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/google/android/gsf/gtalkservice/OtrManager$OtrQueryListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/OtrManager$OtrQueryListener;-><init>(Lcom/google/android/gsf/gtalkservice/OtrManager;Lcom/google/android/gsf/gtalkservice/OtrManager$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mQueryListener:Lorg/jivesoftware/smack/PacketListener;

    .line 58
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v1, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnectionAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mQueryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mQueryListener:Lorg/jivesoftware/smack/PacketListener;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mQueryFilter:Lorg/jivesoftware/smack/filter/PacketFilter;

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 64
    return-void
.end method

.method public queryStatus()V
    .locals 4

    .prologue
    .line 72
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "queryStatus"

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/OtrManager;->log(Ljava/lang/String;)V

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/OtrManager;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 76
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;-><init>()V

    .line 77
    .local v2, query:Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setTo(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/OtrManager;->getOtrEtag()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, etag:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/extensions/OtrQuery;->setEtag(Ljava/lang/String;)V

    .line 88
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    .line 89
    return-void
.end method
