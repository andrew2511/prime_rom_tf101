.class public Lcom/google/android/talk/videochat/LibjingleEventHandler;
.super Landroid/os/Handler;
.source "LibjingleEventHandler.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCallback:Lcom/google/android/talk/videochat/LibjingleEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/android/talk/videochat/LibjingleEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/talk/videochat/LibjingleEventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 83
    const-string v0, "talk:videochat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[libjingleHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 48
    sget-boolean v6, Lcom/google/android/talk/videochat/LibjingleEventHandler;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/talk/videochat/LibjingleEventHandler;->mCallback:Lcom/google/android/talk/videochat/LibjingleEventCallback;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    .local v0, data:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 53
    .local v3, remoteJid:Ljava/lang/String;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 77
    const-string v6, "talk:videochat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 55
    :pswitch_0
    const-string v6, "str1"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, stanza:Ljava/lang/String;
    const-string v6, "str2"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v6, p0, Lcom/google/android/talk/videochat/LibjingleEventHandler;->mCallback:Lcom/google/android/talk/videochat/LibjingleEventCallback;

    invoke-interface {v6, v4, v3}, Lcom/google/android/talk/videochat/LibjingleEventCallback;->handleOutgoingSessionStanza(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    .end local v4           #stanza:Ljava/lang/String;
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 64
    .local v2, newState:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 65
    .local v1, error:I
    const-string v6, "str1"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage(CALL_STATE_CHANGED): new state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/talk/videochat/LibjingleEventHandler;->log(Ljava/lang/String;)V

    .line 67
    iget-object v6, p0, Lcom/google/android/talk/videochat/LibjingleEventHandler;->mCallback:Lcom/google/android/talk/videochat/LibjingleEventCallback;

    invoke-interface {v6, v2, v1, v3}, Lcom/google/android/talk/videochat/LibjingleEventCallback;->handleCallStateChanged(IILjava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v1           #error:I
    .end local v2           #newState:I
    :pswitch_2
    const-string v6, "str1"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, stats:Ljava/lang/String;
    const-string v6, "str2"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    iget-object v6, p0, Lcom/google/android/talk/videochat/LibjingleEventHandler;->mCallback:Lcom/google/android/talk/videochat/LibjingleEventCallback;

    invoke-interface {v6, v5}, Lcom/google/android/talk/videochat/LibjingleEventCallback;->handleStatsUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCallback(Lcom/google/android/talk/videochat/LibjingleEventCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/talk/videochat/LibjingleEventHandler;->mCallback:Lcom/google/android/talk/videochat/LibjingleEventCallback;

    .line 44
    return-void
.end method
