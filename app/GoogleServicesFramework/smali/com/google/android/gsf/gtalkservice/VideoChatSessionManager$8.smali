.class Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$8;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/IQPacketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->queryJingleInfo()V
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
    .line 717
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$8;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager$8;->this$0:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    invoke-static {v0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->access$200(Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;Lorg/jivesoftware/smack/packet/Packet;)V

    .line 720
    return-void
.end method
