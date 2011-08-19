.class Lcom/google/android/gsf/gtalkservice/ChatMgr$1;
.super Ljava/lang/Object;
.source "ChatMgr.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/PacketFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/ChatMgr;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/ChatMgr;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/ChatMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ChatMgr$1;->this$0:Lcom/google/android/gsf/gtalkservice/ChatMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 2
    .parameter "packet"

    .prologue
    const/4 v1, 0x0

    .line 131
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v0, :cond_0

    move v0, v1

    .line 139
    :goto_0
    return v0

    .line 135
    :cond_0
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 139
    goto :goto_0
.end method
