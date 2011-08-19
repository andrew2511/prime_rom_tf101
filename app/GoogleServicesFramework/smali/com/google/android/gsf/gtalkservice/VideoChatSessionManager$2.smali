.class Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$2;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 8
    .parameter "packet"

    .prologue
    .line 158
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    move-object v1, v0

    .line 159
    .local v1, iq:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    .line 160
    .local v6, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getAccountId()J

    move-result-wide v2

    .line 161
    .local v2, packetAccountId:J
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$2;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->access$300(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;)Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v4

    .line 162
    .local v4, sessionAccountId:J
    cmp-long v7, v4, v2

    if-nez v7, :cond_0

    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method
