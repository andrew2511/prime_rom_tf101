.class final Lcom/google/android/talk/ChatView$ConnectionStateListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 2092
    return-void
.end method


# virtual methods
.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 2097
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v0

    .line 2099
    .local v0, connState:I
    packed-switch v0, :pswitch_data_0

    .line 2123
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ConnectionStateListener$2;

    invoke-direct {v2, p0}, Lcom/google/android/talk/ChatView$ConnectionStateListener$2;-><init>(Lcom/google/android/talk/ChatView$ConnectionStateListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2134
    :goto_1
    return-void

    .line 2102
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;-><init>(Lcom/google/android/talk/ChatView$ConnectionStateListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2114
    :pswitch_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 2115
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    const-string v2, "Session terminated, invalidate IM sessions"

    invoke-static {v1, v2}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2116
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$5500(Lcom/google/android/talk/ChatView;)V

    .line 2117
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->invalidateImSession()V

    .line 2118
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->addInvitationListener()V

    goto :goto_0

    .line 2099
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
