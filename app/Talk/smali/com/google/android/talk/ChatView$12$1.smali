.class Lcom/google/android/talk/ChatView$12$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$12;

.field final synthetic val$mutedFinal:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$12;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2697
    iput-object p1, p0, Lcom/google/android/talk/ChatView$12$1;->this$1:Lcom/google/android/talk/ChatView$12;

    iput-boolean p2, p0, Lcom/google/android/talk/ChatView$12$1;->val$mutedFinal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/talk/videochat/IVideoChatSession;)V
    .locals 1
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2700
    iget-boolean v0, p0, Lcom/google/android/talk/ChatView$12$1;->val$mutedFinal:Z

    invoke-interface {p1, v0}, Lcom/google/android/talk/videochat/IVideoChatSession;->setMute(Z)V

    .line 2701
    return-void
.end method
