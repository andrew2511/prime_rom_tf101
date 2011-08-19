.class Lcom/google/android/talk/fragments/ChatScreenFragment$21;
.super Lcom/google/android/talk/videochat/ICallStateListener$Stub;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2107
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/ICallStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V
    .locals 2
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "requestReply"

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$21;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2400(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/talk/fragments/ChatScreenFragment$21$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$21;Ljava/lang/String;Lcom/google/android/talk/videochat/CallState;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2120
    return-void
.end method
