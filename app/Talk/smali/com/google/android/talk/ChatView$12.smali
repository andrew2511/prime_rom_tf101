.class Lcom/google/android/talk/ChatView$12;
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
    .line 2666
    iput-object p1, p0, Lcom/google/android/talk/ChatView$12;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 2670
    iget-object v3, p0, Lcom/google/android/talk/ChatView$12;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v2

    .line 2671
    .local v2, nextState:Lcom/google/android/talk/ChatView$VideoChatState;
    sget-object v3, Lcom/google/android/talk/ChatView$19;->$SwitchMap$com$google$android$talk$ChatView$VideoChatState:[I

    iget-object v4, p0, Lcom/google/android/talk/ChatView$12;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ChatView$VideoChatState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2689
    const/4 v0, 0x0

    .line 2693
    .local v0, muted:Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/ChatView$12;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView$MessageBar;->getState()Lcom/google/android/talk/ChatView$VideoChatState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 2694
    iget-object v3, p0, Lcom/google/android/talk/ChatView$12;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$2600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/talk/ChatView$MessageBar;->setMessageBarState(Lcom/google/android/talk/ChatView$VideoChatState;)V

    .line 2696
    move v1, v0

    .line 2697
    .local v1, mutedFinal:Z
    iget-object v3, p0, Lcom/google/android/talk/ChatView$12;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$6200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;

    move-result-object v3

    new-instance v4, Lcom/google/android/talk/ChatView$12$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/talk/ChatView$12$1;-><init>(Lcom/google/android/talk/ChatView$12;Z)V

    invoke-virtual {v3, v4}, Lcom/google/android/talk/videochat/RemoteVideoChatAccessor;->postVideoChatTask(Lcom/google/android/talk/videochat/RemoteVideoChatAccessor$VideoChatTask;)V

    .line 2704
    .end local v1           #mutedFinal:Z
    :cond_0
    return-void

    .line 2673
    .end local v0           #muted:Z
    :pswitch_0
    const/4 v0, 0x0

    .line 2674
    .restart local v0       #muted:Z
    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 2675
    goto :goto_0

    .line 2677
    .end local v0           #muted:Z
    :pswitch_1
    const/4 v0, 0x1

    .line 2678
    .restart local v0       #muted:Z
    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VOICE_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 2679
    goto :goto_0

    .line 2681
    .end local v0           #muted:Z
    :pswitch_2
    const/4 v0, 0x0

    .line 2682
    .restart local v0       #muted:Z
    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_ACTIVE:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 2683
    goto :goto_0

    .line 2685
    .end local v0           #muted:Z
    :pswitch_3
    const/4 v0, 0x1

    .line 2686
    .restart local v0       #muted:Z
    sget-object v2, Lcom/google/android/talk/ChatView$VideoChatState;->VIDEO_MUTED:Lcom/google/android/talk/ChatView$VideoChatState;

    .line 2687
    goto :goto_0

    .line 2671
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
