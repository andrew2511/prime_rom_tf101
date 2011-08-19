.class Lcom/google/android/talk/ChatView$13;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
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
    .line 2707
    iput-object p1, p0, Lcom/google/android/talk/ChatView$13;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/google/android/talk/ChatView$13;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/ChatView$13$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$13$1;-><init>(Lcom/google/android/talk/ChatView$13;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->postVideoChatTask(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;)V

    .line 2724
    return-void
.end method
