.class public abstract Lcom/google/android/gsf/gtalkservice/ImSession;
.super Ljava/lang/Object;
.source "ImSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/ImSession$2;
    }
.end annotation


# instance fields
.field protected mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

.field private mConnectionListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

.field private mConnectionListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IConnectionStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

.field protected mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

.field private mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mPresenceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

.field private mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

.field protected mSharedPresence:Lcom/google/android/gtalkservice/Presence;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V
    .locals 2
    .parameter "connectionContext"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    .line 63
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ImSession$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ImSession$1;-><init>(Lcom/google/android/gsf/gtalkservice/ImSession;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

    .line 84
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 85
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

    .line 86
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 93
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 95
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionState;

    invoke-direct {v0, v1}, Lcom/google/android/gtalkservice/ConnectionState;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    .line 96
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError;

    invoke-direct {v0, v1}, Lcom/google/android/gtalkservice/ConnectionError;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/ImSession;Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->notifyListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    return-void
.end method

.method private addPresenceExtensions(Lorg/jivesoftware/smack/packet/Presence;Lcom/google/android/gtalkservice/Presence;)V
    .locals 6
    .parameter "presence"
    .parameter "inPresence"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getShowMobileIndicator()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 543
    const-string v2, "http://www.android.com/gtalk/client/caps"

    .line 548
    .local v2, node:Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/jivesoftware/smack/packet/PresenceCapability;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/packet/PresenceCapability;-><init>(Ljava/lang/String;)V

    .line 549
    .local v0, cap:Lorg/jivesoftware/smack/packet/PresenceCapability;
    invoke-virtual {p2}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v1

    .line 550
    .local v1, caps:I
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 552
    .local v3, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 553
    const-string v4, "pmuc-v1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_0
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 556
    const-string v4, "voice-v1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_1
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    .line 559
    const-string v4, "video-v1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_2
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3

    .line 562
    const-string v4, "camera-v1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/PresenceCapability;->setExtension(Ljava/lang/String;)V

    .line 567
    const-string v4, "1.1"

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/packet/PresenceCapability;->setVersion(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 569
    return-void

    .line 545
    .end local v0           #cap:Lorg/jivesoftware/smack/packet/PresenceCapability;
    .end local v1           #caps:I
    .end local v2           #node:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_4
    const-string v2, "http://www.android.com/gtalk/client/caps2"

    .restart local v2       #node:Ljava/lang/String;
    goto :goto_0
.end method

.method private createChatSessionWrapper(Lcom/google/android/gsf/gtalkservice/ChatSession;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .parameter "chatSession"

    .prologue
    .line 681
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/service/ChatSessionWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/ChatSession;)V

    return-object v0
.end method

.method public static createImSession(Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)Lcom/google/android/gsf/gtalkservice/ImSession;
    .locals 1
    .parameter "connectionContext"

    .prologue
    .line 89
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/gtalk/GTalkImSession;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)V

    return-object v0
.end method

.method private internalSetConnectionState(I)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 167
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalSetConnectionState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v1, p1}, Lcom/google/android/gtalkservice/ConnectionState;->setState(I)V

    .line 171
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 175
    :goto_0
    return v0

    .line 173
    :cond_1
    monitor-exit v0

    .line 175
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 789
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImSession] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    return-void
.end method

.method private notifyListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 282
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConnectionListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 286
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gtalkservice/IConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 289
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyListener caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 292
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static sendPresence(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "connection"
    .parameter "presence"

    .prologue
    .line 481
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 484
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPresence caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private translateGTalkPresence(Lcom/google/android/gtalkservice/Presence;)I
    .locals 4
    .parameter "p"

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    const/4 v2, 0x0

    .line 412
    :goto_0
    return v2

    .line 390
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    const/4 v2, 0x1

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v1

    .line 397
    .local v1, show:Lcom/google/android/gtalkservice/Presence$Show;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/ImSession$2;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 408
    const/4 v0, 0x5

    .local v0, availability:I
    :goto_1
    move v2, v0

    .line 412
    goto :goto_0

    .line 399
    .end local v0           #availability:I
    :pswitch_0
    const/4 v0, 0x4

    .line 400
    .restart local v0       #availability:I
    goto :goto_1

    .line 404
    .end local v0           #availability:I
    :pswitch_1
    const/4 v0, 0x2

    .line 405
    .restart local v0       #availability:I
    goto :goto_1

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 252
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IConnectionStateListener;

    .line 254
    .local v1, remoteListener:Lcom/google/android/gtalkservice/IConnectionStateListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IConnectionStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gtalkservice/IConnectionStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 255
    monitor-exit v2

    .line 263
    .end local v1           #remoteListener:Lcom/google/android/gtalkservice/IConnectionStateListener;
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->notifyListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V

    goto :goto_0

    .line 260
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public abstract addContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract addGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
.end method

.method public addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 635
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 636
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->addRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 637
    return-void
.end method

.method public addRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 757
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    move-result-object v0

    .line 759
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->addRemoteJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V

    .line 760
    return-void
.end method

.method public addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 645
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    .line 646
    .local v0, rosterHandler:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 647
    return-void
.end method

.method public addRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 739
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    move-result-object v0

    .line 741
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->addRemoteSessionListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    .line 742
    return-void
.end method

.method public approveSubscriptionRequest(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "contact"
    .parameter "nickname"
    .parameter "groups"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getSubscriptionManager()Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    move-result-object v0

    .line 626
    .local v0, sMgr:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getAccountId()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->acceptRequestForUser(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method public abstract blockContact(Ljava/lang/String;)V
.end method

.method public abstract clearContactFlags(Ljava/lang/String;)V
.end method

.method public abstract closeAllChatSessions()V
.end method

.method public createChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 8
    .parameter "to"

    .prologue
    const/4 v5, 0x1

    .line 671
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 672
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getAccountId()J

    move-result-wide v3

    move-object v2, p1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->createChatSession(Ljava/lang/String;Ljava/lang/String;JZZ)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v7

    .line 677
    .local v7, session:Lcom/google/android/gsf/gtalkservice/ChatSession;
    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/ImSession;->createChatSessionWrapper(Lcom/google/android/gsf/gtalkservice/ChatSession;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v1

    return-object v1
.end method

.method public abstract createGroupChatSession(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract declineGroupChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public declineSubscriptionRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "contact"

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getSubscriptionManager()Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    move-result-object v0

    .line 631
    .local v0, sMgr:Lcom/google/android/gsf/gtalkservice/SubscriptionManager;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->declineRequestForUser(JLjava/lang/String;)V

    .line 632
    return-void
.end method

.method public abstract editContact(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract getAccountId()J
.end method

.method public getChatSession(Ljava/lang/String;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 3
    .parameter "to"

    .prologue
    .line 685
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 686
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->getChatSession(Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/ChatSession;

    move-result-object v1

    .line 688
    .local v1, session:Lcom/google/android/gsf/gtalkservice/ChatSession;
    if-nez v1, :cond_0

    .line 689
    const/4 v2, 0x0

    .line 692
    :goto_0
    return-object v2

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/ImSession;->createChatSessionWrapper(Lcom/google/android/gsf/gtalkservice/ChatSession;)Lcom/google/android/gtalkservice/IChatSession;

    move-result-object v2

    goto :goto_0
.end method

.method public getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-exit v0

    return-object v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    monitor-exit v0

    return-object v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    return-object v0
.end method

.method protected getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    return-object v0
.end method

.method public getIntendedPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 471
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getPresence()Lcom/google/android/gtalkservice/Presence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 435
    .local v0, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    sget-object v1, Lcom/google/android/gtalkservice/Presence;->OFFLINE:Lcom/google/android/gtalkservice/Presence;

    .line 439
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    goto :goto_0
.end method

.method public getSharedPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mSharedPresence:Lcom/google/android/gtalkservice/Presence;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goOffRecordInRoom(Ljava/lang/String;Z)V
    .locals 2
    .parameter "room"
    .parameter "offRecordFlag"

    .prologue
    .line 660
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/OtrManager;

    move-result-object v0

    .line 661
    .local v0, otrMgr:Lcom/google/android/gsf/gtalkservice/OtrManager;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/OtrManager;->goOffRecordInRoom(Ljava/lang/String;Z)V

    .line 662
    return-void
.end method

.method public goOffRecordWithContact(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter
    .parameter "offRecordFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, contacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/OtrManager;

    move-result-object v0

    .line 656
    .local v0, otrMgr:Lcom/google/android/gsf/gtalkservice/OtrManager;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/OtrManager;->goOffRecordWithContact(Ljava/util/ArrayList;Z)V

    .line 657
    return-void
.end method

.method public abstract hideContact(Ljava/lang/String;)V
.end method

.method public hostSessionConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionState:Lcom/google/android/gtalkservice/ConnectionState;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v0

    .line 227
    .local v0, ourState:I
    packed-switch v0, :pswitch_data_0

    .line 241
    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    .line 242
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gsf/gtalkservice/ImSession;->setConnectionStateAndError(IIZ)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 233
    :pswitch_0
    if-le p1, v0, :cond_0

    .line 234
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/gsf/gtalkservice/ImSession;->setConnectionStateAndError(IIZ)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
.end method

.method public abstract inviteContactsToGroupchat(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 134
    .local v0, presence:Lcom/google/android/gtalkservice/Presence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x1

    .line 138
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOffRecordWithContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "contact"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->isOffTheRecordWithContact(Landroid/content/ContentResolver;JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract joinGroupChatSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public loadVCard()V
    .locals 4

    .prologue
    .line 599
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "load user\'s vCard from server"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, username:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/VCardMgr;

    move-result-object v2

    .line 605
    .local v2, vcardMgr:Lcom/google/android/gsf/gtalkservice/VCardMgr;
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->getStoredAvatarHashForContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, storedHash:Ljava/lang/String;
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->loadAvatarForUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->addToNotificationMap(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public abstract login(Ljava/lang/String;Z)V
.end method

.method public abstract logout()V
.end method

.method protected notifyConnectionListeners()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    .line 278
    return-void
.end method

.method protected onLoggedOut()V
    .locals 3

    .prologue
    .line 124
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "onLoggedOut"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->onImSessionLoggedOut()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->onLogout(J)V

    .line 129
    return-void
.end method

.method public abstract pinContact(Ljava/lang/String;)V
.end method

.method public abstract pruneOldChatSessions(JJJZ)V
.end method

.method public queryJingleInfo()V
    .locals 2

    .prologue
    .line 751
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    move-result-object v0

    .line 753
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->queryJingleInfo()V

    .line 754
    return-void
.end method

.method public removeConnectionStateListener(Lcom/google/android/gtalkservice/IConnectionStateListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 266
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 267
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gtalkservice/IConnectionStateListener;

    .line 268
    .local v1, remoteListener:Lcom/google/android/gtalkservice/IConnectionStateListener;
    invoke-interface {v1}, Lcom/google/android/gtalkservice/IConnectionStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gtalkservice/IConnectionStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 269
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v2

    .line 274
    .end local v1           #remoteListener:Lcom/google/android/gtalkservice/IConnectionStateListener;
    :goto_0
    return-void

    .line 273
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public abstract removeContact(Ljava/lang/String;)V
.end method

.method public abstract removeGroupChatInvitationListener(Lcom/google/android/gtalkservice/IGroupChatInvitationListener;)V
.end method

.method public removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 640
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    .line 641
    .local v0, chatMgr:Lcom/google/android/gsf/gtalkservice/ChatMgr;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 642
    return-void
.end method

.method public removeRemoteJingleInfoStanzaListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 763
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    move-result-object v0

    .line 765
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->removeRemoteJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)V

    .line 766
    return-void
.end method

.method public removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 650
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    .line 651
    .local v0, rosterHandler:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    .line 652
    return-void
.end method

.method public removeRemoteSessionStanzaListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    move-result-object v0

    .line 747
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->removeRemoteSessionListener(Lcom/google/android/gtalkservice/ISessionStanzaListener;)V

    .line 748
    return-void
.end method

.method public requestBatchedBuddyPresence()V
    .locals 6

    .prologue
    .line 715
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    .line 716
    .local v1, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 717
    :cond_0
    const-string v3, "requestBatchedBuddyPresence: not connected to server, bail"

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 721
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/packet/BatchPresence;

    sget-object v3, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->GET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    invoke-direct {v0, v3}, Lorg/jivesoftware/smack/packet/BatchPresence;-><init>(Lorg/jivesoftware/smack/packet/BatchPresence$Type;)V

    .line 722
    .local v0, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/packet/BatchPresence;->setAccountId(J)V

    .line 723
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/BatchPresence;->setTo(Ljava/lang/String;)V

    .line 726
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 727
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 728
    .local v2, ex:Ljava/lang/IllegalStateException;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendPresence caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendCallPerfStatsStanza(Ljava/lang/String;)V
    .locals 2
    .parameter "callPerfStatsStanza"

    .prologue
    .line 769
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    move-result-object v0

    .line 771
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->sendCallPerfStatsStanza(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public sendIqStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendIqStanza(Landroid/content/Intent;)V

    .line 776
    return-void
.end method

.method public sendMessageStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendMessageStanza(Landroid/content/Intent;)V

    .line 781
    return-void
.end method

.method public sendPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->translatePresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v0

    .line 422
    .local v0, p:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->sendPresence(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lorg/jivesoftware/smack/packet/Packet;)V

    .line 423
    return-void
.end method

.method public sendPresenceCapability()V
    .locals 4

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 580
    .local v0, currentPresence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 583
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->translateXmppPresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v1

    .line 585
    .local v1, p:Lorg/jivesoftware/smack/packet/Packet;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPresenceCapability: p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gsf/gtalkservice/ImSession;->sendPresence(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lorg/jivesoftware/smack/packet/Packet;)V

    .line 588
    .end local v1           #p:Lorg/jivesoftware/smack/packet/Packet;
    :cond_0
    return-void
.end method

.method public sendPresenceStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->sendPresenceStanza(Landroid/content/Intent;)V

    .line 786
    return-void
.end method

.method public sendSessionStanza(Ljava/lang/String;)V
    .locals 2
    .parameter "stanza"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    move-result-object v0

    .line 735
    .local v0, sessionMgr:Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->sendSessionStanza(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public setAndSendPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 1
    .parameter "presence"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)Z

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->sendPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 305
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnectionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifySelfPresenceChanged()Z

    .line 306
    return-void
.end method

.method public setConnectionError(I)Z
    .locals 3
    .parameter "error"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 203
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mConnectionError:Lcom/google/android/gtalkservice/ConnectionError;

    invoke-virtual {v1, p1}, Lcom/google/android/gtalkservice/ConnectionError;->setError(I)V

    .line 205
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_1
    monitor-exit v0

    .line 209
    const/4 v0, 0x0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setConnectionState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->setConnectionState(IZ)Z

    move-result v0

    return v0
.end method

.method public setConnectionState(IZ)Z
    .locals 2
    .parameter "state"
    .parameter "notify"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->internalSetConnectionState(I)Z

    move-result v0

    .line 184
    .local v0, changed:Z
    if-eqz v0, :cond_1

    .line 185
    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->notifyConnectionListeners()V

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->asyncUpdateAccountStatus()V

    .line 191
    :cond_1
    return v0
.end method

.method public setConnectionStateAndError(IIZ)V
    .locals 2
    .parameter "state"
    .parameter "error"
    .parameter "forceNotify"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->internalSetConnectionState(I)Z

    move-result v0

    .line 215
    .local v0, notify:Z
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/ImSession;->setConnectionError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 219
    :cond_0
    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->notifyConnectionListeners()V

    .line 222
    :cond_2
    return-void
.end method

.method protected setLastLoginState(Z)V
    .locals 8
    .parameter "isLoggedIn"

    .prologue
    const/4 v7, 0x0

    .line 153
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v3, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_1

    const/4 v4, 0x1

    move v2, v4

    .line 155
    .local v2, lastLoggedInVal:I
    :goto_0
    const-string v4, "last_login_state"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    sget-object v4, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getAccountId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 157
    .local v0, accountUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 159
    .local v1, count:I
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLastLoginState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for acct "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getAccountId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void

    .line 154
    .end local v0           #accountUri:Landroid/net/Uri;
    .end local v1           #count:I
    .end local v2           #lastLoggedInVal:I
    :cond_1
    const/4 v4, 0x0

    move v2, v4

    goto :goto_0
.end method

.method public setPresence(Lcom/google/android/gtalkservice/Presence;)Z
    .locals 6
    .parameter "presence"

    .prologue
    .line 314
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v3, :cond_2

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPresence for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->printDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 320
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 322
    .local v2, retVal:Z
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 325
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    .line 329
    .local v1, oldPresence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {p1, v1}, Lcom/google/android/gtalkservice/Presence;->equals(Lcom/google/android/gtalkservice/Presence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 331
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 332
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->asyncUpdateAccountStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    const/4 v2, 0x1

    .line 337
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 340
    return v2

    .line 316
    .end local v1           #oldPresence:Lcom/google/android/gtalkservice/Presence;
    .end local v2           #retVal:Z
    :cond_2
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPresence(acct="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    .restart local v2       #retVal:Z
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mPresenceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method public setSharedPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 1
    .parameter "presence"

    .prologue
    .line 458
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v0, p1}, Lcom/google/android/gtalkservice/Presence;-><init>(Lcom/google/android/gtalkservice/Presence;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mSharedPresence:Lcom/google/android/gtalkservice/Presence;

    .line 459
    return-void
.end method

.method protected abstract translatePresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;
.end method

.method protected translateXmppPresence(Lcom/google/android/gtalkservice/Presence;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 7
    .parameter "inPresence"

    .prologue
    .line 492
    const/16 v2, 0x18

    .line 495
    .local v2, priority:I
    if-nez p1, :cond_0

    .line 496
    const/4 v1, 0x0

    .line 497
    .local v1, isAvailable:Z
    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    .line 498
    .local v4, show:Lcom/google/android/gtalkservice/Presence$Show;
    const/4 v0, 0x0

    .line 505
    .local v0, customStatus:Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v1, :cond_1

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    :goto_1
    invoke-direct {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 508
    .local v3, retVal:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    .line 511
    sget-object v5, Lcom/google/android/gsf/gtalkservice/ImSession$2;->$SwitchMap$com$google$android$gtalkservice$Presence$Show:[I

    invoke-virtual {v4}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 532
    :goto_2
    invoke-direct {p0, v3, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->addPresenceExtensions(Lorg/jivesoftware/smack/packet/Presence;Lcom/google/android/gtalkservice/Presence;)V

    .line 535
    return-object v3

    .line 500
    .end local v0           #customStatus:Ljava/lang/String;
    .end local v1           #isAvailable:Z
    .end local v3           #retVal:Lorg/jivesoftware/smack/packet/Presence;
    .end local v4           #show:Lcom/google/android/gtalkservice/Presence$Show;
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v1

    .line 501
    .restart local v1       #isAvailable:Z
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v4

    .line 502
    .restart local v4       #show:Lcom/google/android/gtalkservice/Presence$Show;
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #customStatus:Ljava/lang/String;
    goto :goto_0

    .line 505
    :cond_1
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto :goto_1

    .line 513
    .restart local v3       #retVal:Lorg/jivesoftware/smack/packet/Presence;
    :pswitch_0
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 517
    :pswitch_1
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 521
    :pswitch_2
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 525
    :pswitch_3
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateAccountStatus()V
    .locals 13

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v10

    .line 345
    .local v10, state:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v9

    .line 347
    .local v9, presence:Lcom/google/android/gtalkservice/Presence;
    const/4 v4, 0x0

    .line 348
    .local v4, presenceMode:I
    const/4 v7, 0x0

    .line 353
    .local v7, connStatus:I
    invoke-virtual {v10}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 354
    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/ImSession;->translateGTalkPresence(Lcom/google/android/gtalkservice/Presence;)I

    move-result v4

    .line 355
    const/4 v7, 0x3

    .line 358
    :cond_0
    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/ImSession;->mHostConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v11}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v8

    .line 360
    .local v8, hostConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    .line 361
    .local v1, accountId:J
    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, username:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, status:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/android/gtalkservice/Presence;->getCapabilities()I

    move-result v6

    .line 365
    .local v6, capabilities:I
    invoke-static {v0, v1, v2, v4, v7}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->setAccountStatus(Landroid/content/ContentResolver;JII)V

    .line 368
    const-string v11, "GTalkService"

    const/4 v12, 0x3

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 369
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAccountStatus: update contact presence for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", account="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", presence="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", connStatus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", state.isOnline()="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/ConnectionState;->isOnline()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gsf/gtalkservice/ImSession;->log(Ljava/lang/String;)V

    .line 377
    :cond_1
    if-nez v4, :cond_2

    .line 378
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/gtalkservice/ContactPresence;->removeContactPresenceFor(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 383
    :goto_0
    return-void

    .line 380
    :cond_2
    invoke-static/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/ContactPresence;->updateContactPresence(Landroid/content/ContentResolver;JLjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public uploadAvatar(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "avatar"

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/VCardMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->uploadAvatar(Landroid/graphics/Bitmap;)V

    .line 592
    return-void
.end method

.method public uploadAvatarFromDb()V
    .locals 2

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getHostConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/VCardMgr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->uploadAvatarFromDb(Ljava/lang/String;)V

    .line 596
    return-void
.end method
