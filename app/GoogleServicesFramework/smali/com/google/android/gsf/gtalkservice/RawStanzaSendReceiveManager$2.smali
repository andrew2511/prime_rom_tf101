.class Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;
.super Ljava/lang/Object;
.source "RawStanzaSendReceiveManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->init(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 8
    .parameter "packet"

    .prologue
    const/4 v7, 0x0

    .line 90
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v2

    .line 91
    .local v2, packetAccountId:J
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->access$300(Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v4

    .line 92
    .local v4, sessionAccountId:J
    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    move v6, v7

    .line 104
    :goto_0
    return v6

    .line 96
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getExtensions()Ljava/util/Iterator;

    move-result-object v1

    .line 97
    .local v1, extensions:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 99
    .local v0, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    instance-of v6, v0, Lcom/google/android/gsf/gtalkservice/extensions/RawXmlExtension;

    if-eqz v6, :cond_1

    .line 100
    const/4 v6, 0x1

    goto :goto_0

    .end local v0           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    :cond_2
    move v6, v7

    .line 104
    goto :goto_0
.end method
