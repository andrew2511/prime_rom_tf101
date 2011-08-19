.class Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

.field private mBareJid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 384
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 350
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 352
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 356
    return-void
.end method

.method public getActivity()Lcom/google/android/talk/videochat/VideoChatActivity;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    return-object v0
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public declared-synchronized newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "fullJid"
    .parameter "body"
    .parameter "notify"

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1000(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_0
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized newMessageSent(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 423
    :try_start_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 424
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :cond_0
    monitor-exit p0

    return-void

    .line 424
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 421
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupChatRoom"
    .parameter "nickname"

    .prologue
    .line 433
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "groupChatRoom"
    .parameter "nickname"

    .prologue
    .line 435
    return-void
.end method

.method public removeAssociation(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-ne v0, p1, :cond_0

    .line 379
    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 380
    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    .line 382
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 363
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 354
    return-void
.end method
