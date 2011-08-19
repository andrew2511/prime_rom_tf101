.class Lcom/google/android/talk/ChatView$11$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$11;->runTask(Lcom/google/android/talk/videochat/IVideoChatSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$11;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$11;)V
    .locals 0
    .parameter

    .prologue
    .line 2656
    iput-object p1, p0, Lcom/google/android/talk/ChatView$11$1;->this$1:Lcom/google/android/talk/ChatView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/google/android/talk/ChatView$11$1;->this$1:Lcom/google/android/talk/ChatView$11;

    iget-object v0, v0, Lcom/google/android/talk/ChatView$11;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$11$1;->this$1:Lcom/google/android/talk/ChatView$11;

    iget-object v1, v1, Lcom/google/android/talk/ChatView$11;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v2, 0x0

    const v3, 0x7f1000be

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z

    .line 2660
    return-void
.end method
