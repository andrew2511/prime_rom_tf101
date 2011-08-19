.class Lcom/google/android/talk/ChatView$11;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 2651
    iput-object p1, p0, Lcom/google/android/talk/ChatView$11;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    .locals 2
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/google/android/talk/ChatView$11;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getBestAvailableJid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/talk/videochat/IVideoChatSession;->terminateChat(Ljava/lang/String;)V

    .line 2656
    iget-object v0, p0, Lcom/google/android/talk/ChatView$11;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/ChatView$11$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$11$1;-><init>(Lcom/google/android/talk/ChatView$11;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2662
    return-void
.end method
