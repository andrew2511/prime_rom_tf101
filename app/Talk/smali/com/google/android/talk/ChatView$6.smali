.class Lcom/google/android/talk/ChatView$6;
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
    .line 2599
    iput-object p1, p0, Lcom/google/android/talk/ChatView$6;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/google/android/talk/ChatView$6;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v0

    sget-object v1, Lcom/google/android/talk/ChatView$VideoChatState;->IDLE:Lcom/google/android/talk/ChatView$VideoChatState;

    if-eq v0, v1, :cond_0

    .line 2603
    iget-object v0, p0, Lcom/google/android/talk/ChatView$6;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6100(Lcom/google/android/talk/ChatView;)V

    .line 2607
    :goto_0
    return-void

    .line 2605
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$6;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$6;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v2, 0x0

    const v3, 0x7f1000be

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z

    goto :goto_0
.end method
