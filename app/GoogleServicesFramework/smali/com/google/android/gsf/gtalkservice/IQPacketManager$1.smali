.class Lcom/google/android/gsf/gtalkservice/IQPacketManager$1;
.super Ljava/lang/Object;
.source "IQPacketManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/IQPacketManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/IQPacketManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/IQPacketManager;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager$1;->this$0:Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 4
    .parameter "packet"

    .prologue
    .line 51
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    move-object v1, v0

    .line 52
    .local v1, iq:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    .line 53
    .local v2, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
