.class public Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;
.super Ljava/lang/Object;
.source "RosterListenerImpl.java"


# instance fields
.field private mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mHandler:Landroid/os/Handler;

.field private mLoggedIn:Z

.field private mPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

.field private mPresenceLock:Ljava/lang/Object;

.field private mPresenceUpdateScheduled:Z

.field private mRemoteRosterListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gtalkservice/IRosterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mRosterFetched:Z

.field private mRosterListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

.field private mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback",
            "<",
            "Lcom/google/android/gtalkservice/IRosterListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelfPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    .line 63
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$1;-><init>(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRosterListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

    .line 70
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$2;-><init>(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

    .line 78
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$3;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$3;-><init>(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mSelfPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged(Lcom/google/android/gtalkservice/IRosterListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifySelfPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceUpdateScheduled:Z

    return p1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 747
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterListenerImpl] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void
.end method

.method private static logp(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 751
    const-string v0, "GTalkService/p"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RosterListenerImpl] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    return-void
.end method

.method private notifyPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 160
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Lcom/google/android/gtalkservice/IRosterListener;->presenceChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 164
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyPresenceChanged caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->removeRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    goto :goto_0
.end method

.method private notifyRosterChanged(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 145
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IRosterListener;->rosterChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RosterListenerImpl] notifyRosterChanged caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->removeRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    goto :goto_0
.end method

.method private notifySelfPresenceChanged(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 178
    :try_start_0
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "notifySelfPresenceChanged"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 179
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IRosterListener;->selfPresenceChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 183
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySelfPresenceChanged caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->removeRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V

    goto :goto_0
.end method

.method private removeRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeTalkPresence(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 738
    sget-object v2, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 741
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 743
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTalkPresence for account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method private schedulePresenceNotify()V
    .locals 4

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceUpdateScheduled:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 202
    :cond_0
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "schedulePresenceNotify: in 3000 ms"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$4;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl$4;-><init>(Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceUpdateScheduled:Z

    goto :goto_0
.end method

.method private setNickname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "nickname"
    .parameter "username"

    .prologue
    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    if-nez p1, :cond_0

    .line 218
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RosterListenerImpl.setNickname: username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    return-object p1
.end method

.method private translateCapabilityFlag(I)I
    .locals 2
    .parameter "protobufPresenceCaps"

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 460
    .local v0, capability:I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 461
    or-int/lit8 v0, v0, 0x1

    .line 463
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 464
    or-int/lit8 v0, v0, 0x2

    .line 466
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 467
    or-int/lit8 v0, v0, 0x4

    .line 469
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 470
    or-int/lit8 v0, v0, 0x8

    .line 473
    :cond_3
    return v0
.end method

.method private translateClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)I
    .locals 1
    .parameter "clientType"

    .prologue
    .line 446
    if-eqz p1, :cond_1

    .line 447
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$ClientType;->ANDROID:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    if-ne p1, v0, :cond_0

    .line 448
    const/4 v0, 0x2

    .line 454
    :goto_0
    return v0

    .line 449
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$ClientType;->MOBILE:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    if-ne p1, v0, :cond_1

    .line 450
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private translatePresenceStatus(Lorg/jivesoftware/smack/packet/Presence;)I
    .locals 4
    .parameter "presence"

    .prologue
    const/4 v3, 0x3

    .line 425
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v0

    .line 426
    .local v0, mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    .line 428
    .local v1, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v1, v2, :cond_0

    .line 429
    const/4 v2, 0x0

    .line 442
    :goto_0
    return v2

    .line 431
    :cond_0
    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Mode;->CHAT:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v0, v2, :cond_2

    .line 432
    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    .line 433
    :cond_2
    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v0, v2, :cond_3

    move v2, v3

    .line 434
    goto :goto_0

    .line 435
    :cond_3
    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v0, v2, :cond_4

    .line 436
    const/4 v2, 0x2

    goto :goto_0

    .line 437
    :cond_4
    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v0, v2, :cond_5

    .line 438
    const/4 v2, 0x4

    goto :goto_0

    :cond_5
    move v2, v3

    .line 442
    goto :goto_0
.end method

.method private updatePresenceInDb(JLjava/lang/String;IILjava/lang/String;II)Z
    .locals 3
    .parameter "accountId"
    .parameter "contact"
    .parameter "priority"
    .parameter "mode"
    .parameter "status"
    .parameter "clientType"
    .parameter "capabilities"

    .prologue
    .line 687
    if-nez p6, :cond_0

    .line 688
    const-string p6, ""

    .line 691
    :cond_0
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_1

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePresenceInDb for ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 695
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 696
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 697
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v1, "mode"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    const-string v1, "priority"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    const-string v1, "status"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v1, "client_type"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    const-string v1, "cap"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 108
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IRosterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 110
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IRosterListener;

    .line 112
    .local v2, rl:Lcom/google/android/gtalkservice/IRosterListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IRosterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 113
    monitor-exit v3

    .line 124
    .end local v2           #rl:Lcom/google/android/gtalkservice/IRosterListener;
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->isRosterFetched()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged(Lcom/google/android/gtalkservice/IRosterListener;)V

    goto :goto_0

    .line 117
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public clearAllPresenceRecords()V
    .locals 5

    .prologue
    .line 677
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    .line 678
    .local v2, gtalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, username:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v0

    .line 681
    .local v0, accountId:J
    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->removeTalkPresence(J)V

    .line 682
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v0, v1, v3}, Lcom/google/android/gsf/gtalkservice/ContactPresence;->removeAllContactsPresence(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 683
    return-void
.end method

.method public entriesAdded(JLjava/util/ArrayList;)V
    .locals 28
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p3, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 228
    .local v4, count:I
    sget-boolean v23, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v23, :cond_0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "entriesAdded: add roster for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " contacts, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", accountId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 233
    .local v18, ts:J
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v12, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 238
    .local v7, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/RosterEntry;

    .line 245
    .local v6, entry:Lorg/jivesoftware/smack/RosterEntry;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v21

    .line 246
    .local v21, username:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->setNickname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 248
    .local v11, nickname:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->isBlocked()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 249
    const/16 v20, 0x3

    .line 258
    .local v20, type:I
    :goto_1
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v14

    .line 259
    .local v14, status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object v0, v14

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 260
    const/16 v16, 0x1

    .line 267
    .local v16, subscriptionStatus:I
    :goto_2
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v15

    .line 268
    .local v15, subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object v0, v15

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 269
    const/16 v17, 0x2

    .line 281
    .local v17, subscriptionType:I
    :goto_3
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->isQuickContact()Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x1

    move/from16 v10, v23

    .line 282
    .local v10, isQuickContact:I
    :goto_4
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->googleGetRejected()Z

    move-result v23

    if-eqz v23, :cond_b

    const/16 v23, 0x1

    move/from16 v13, v23

    .line 286
    .local v13, rejected:I
    :goto_5
    sget-object v23, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 287
    .local v3, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v23, "account"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 288
    const-string v23, "username"

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 289
    const-string v23, "nickname"

    move-object v0, v3

    move-object/from16 v1, v23

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 290
    const-string v23, "type"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 291
    const-string v23, "subscriptionStatus"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 292
    const-string v23, "subscriptionType"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 293
    const-string v23, "qc"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 294
    const-string v23, "rejected"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v0, v3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 296
    add-int/lit8 v8, v7, 0x1

    .end local v7           #i:I
    .local v8, i:I
    move v0, v7

    rem-int/lit16 v0, v0, 0x12c

    move/from16 v23, v0

    if-nez v23, :cond_c

    const/16 v23, 0x1

    move/from16 v22, v23

    .line 297
    .local v22, yieldAllowed:Z
    :goto_6
    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 299
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v8

    .line 300
    .end local v8           #i:I
    .restart local v7       #i:I
    goto/16 :goto_0

    .line 250
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #isQuickContact:I
    .end local v13           #rejected:I
    .end local v14           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v15           #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .end local v16           #subscriptionStatus:I
    .end local v17           #subscriptionType:I
    .end local v20           #type:I
    .end local v22           #yieldAllowed:Z
    :cond_1
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->isHidden()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 251
    const/16 v20, 0x4

    .restart local v20       #type:I
    goto/16 :goto_1

    .line 252
    .end local v20           #type:I
    :cond_2
    invoke-virtual {v6}, Lorg/jivesoftware/smack/RosterEntry;->isPinned()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 253
    const/16 v20, 0x5

    .restart local v20       #type:I
    goto/16 :goto_1

    .line 255
    .end local v20           #type:I
    :cond_3
    const/16 v20, 0x0

    .restart local v20       #type:I
    goto/16 :goto_1

    .line 261
    .restart local v14       #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    :cond_4
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->UNSUBCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object v0, v14

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 262
    const/16 v16, 0x2

    .restart local v16       #subscriptionStatus:I
    goto/16 :goto_2

    .line 264
    .end local v16           #subscriptionStatus:I
    :cond_5
    const/16 v16, 0x0

    .restart local v16       #subscriptionStatus:I
    goto/16 :goto_2

    .line 270
    .restart local v15       #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :cond_6
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object v0, v15

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 271
    const/16 v17, 0x3

    .restart local v17       #subscriptionType:I
    goto/16 :goto_3

    .line 272
    .end local v17           #subscriptionType:I
    :cond_7
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object v0, v15

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 273
    const/16 v17, 0x4

    .restart local v17       #subscriptionType:I
    goto/16 :goto_3

    .line 274
    .end local v17           #subscriptionType:I
    :cond_8
    sget-object v23, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object v0, v15

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 275
    const/16 v17, 0x1

    .restart local v17       #subscriptionType:I
    goto/16 :goto_3

    .line 277
    .end local v17           #subscriptionType:I
    :cond_9
    const/16 v17, 0x0

    .restart local v17       #subscriptionType:I
    goto/16 :goto_3

    .line 281
    :cond_a
    const/16 v23, 0x0

    move/from16 v10, v23

    goto/16 :goto_4

    .line 282
    .restart local v10       #isQuickContact:I
    :cond_b
    const/16 v23, 0x0

    move/from16 v13, v23

    goto/16 :goto_5

    .line 296
    .end local v7           #i:I
    .restart local v3       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v8       #i:I
    .restart local v13       #rejected:I
    :cond_c
    const/16 v23, 0x0

    move/from16 v22, v23

    goto :goto_6

    .line 303
    .end local v3           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v6           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v8           #i:I
    .end local v10           #isQuickContact:I
    .end local v11           #nickname:Ljava/lang/String;
    .end local v13           #rejected:I
    .end local v14           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v15           #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .end local v16           #subscriptionStatus:I
    .end local v17           #subscriptionType:I
    .end local v20           #type:I
    .end local v21           #username:Ljava/lang/String;
    .restart local v7       #i:I
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "com.google.android.providers.talk"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged()Z

    .line 316
    return-void

    .line 304
    :catch_0
    move-exception v23

    move-object/from16 v5, v23

    .line 305
    .local v5, e:Landroid/os/RemoteException;
    const-string v23, "GTalkService"

    const-string v24, "%s: %s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 306
    .end local v5           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v23

    move-object/from16 v5, v23

    .line 307
    .local v5, e:Landroid/content/OperationApplicationException;
    const-string v23, "GTalkService"

    const-string v24, "%s: %s"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public entriesDeleted(JLjava/util/ArrayList;)V
    .locals 1
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p3, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->deleteContacts(Landroid/content/ContentResolver;JLjava/util/ArrayList;)V

    .line 420
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged()Z

    .line 421
    return-void
.end method

.method public entriesUpdated(JLjava/util/ArrayList;)V
    .locals 31
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p3, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 320
    .local v5, count:I
    sget-boolean v26, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v26, :cond_0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "entriesUpdated: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", accountId="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 322
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 324
    .local v21, ts:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v3, buf:Ljava/lang/StringBuilder;
    const-string v26, "account"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v26, "=? AND "

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v26, "username"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v26, "=?"

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 331
    .local v15, selection:Ljava/lang/String;
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 332
    .local v16, selectionArgs:[Ljava/lang/String;
    const/16 v26, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v16, v26

    .line 334
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v13, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x0

    .line 339
    .local v8, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smack/RosterEntry;

    .line 344
    .local v7, entry:Lorg/jivesoftware/smack/RosterEntry;
    const/4 v11, 0x0

    .line 346
    .local v11, isQuickContact:I
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v24

    .line 347
    .local v24, username:Ljava/lang/String;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->setNickname(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 349
    .local v12, nickname:Ljava/lang/String;
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->isBlocked()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 350
    const/16 v23, 0x3

    .line 359
    .local v23, type:I
    :goto_1
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v17

    .line 360
    .local v17, status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 361
    const/16 v19, 0x1

    .line 368
    .local v19, subscriptionStatus:I
    :goto_2
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v18

    .line 369
    .local v18, subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->TO:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 370
    const/16 v20, 0x2

    .line 382
    .local v20, subscriptionType:I
    :goto_3
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->isQuickContact()Z

    move-result v26

    if-eqz v26, :cond_a

    const/16 v26, 0x1

    move/from16 v11, v26

    .line 383
    :goto_4
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->googleGetRejected()Z

    move-result v26

    if-eqz v26, :cond_b

    const/16 v26, 0x1

    move/from16 v14, v26

    .line 385
    .local v14, rejected:I
    :goto_5
    sget-object v26, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 386
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v26, "nickname"

    move-object v0, v4

    move-object/from16 v1, v26

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 387
    const-string v26, "type"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 388
    const-string v26, "subscriptionStatus"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 389
    const-string v26, "subscriptionType"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 390
    const-string v26, "qc"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 391
    const-string v26, "rejected"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 393
    const/16 v26, 0x1

    aput-object v24, v16, v26

    .line 394
    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 396
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    move v0, v8

    rem-int/lit16 v0, v0, 0x12c

    move/from16 v26, v0

    if-nez v26, :cond_c

    const/16 v26, 0x1

    move/from16 v25, v26

    .line 397
    .local v25, yieldAllowed:Z
    :goto_6
    move-object v0, v4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 399
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    move-object v0, v13

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .line 400
    .end local v9           #i:I
    .restart local v8       #i:I
    goto/16 :goto_0

    .line 351
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v14           #rejected:I
    .end local v17           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v18           #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .end local v19           #subscriptionStatus:I
    .end local v20           #subscriptionType:I
    .end local v23           #type:I
    .end local v25           #yieldAllowed:Z
    :cond_1
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->isHidden()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 352
    const/16 v23, 0x4

    .restart local v23       #type:I
    goto/16 :goto_1

    .line 353
    .end local v23           #type:I
    :cond_2
    invoke-virtual {v7}, Lorg/jivesoftware/smack/RosterEntry;->isPinned()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 354
    const/16 v23, 0x5

    .restart local v23       #type:I
    goto/16 :goto_1

    .line 356
    .end local v23           #type:I
    :cond_3
    const/16 v23, 0x0

    .restart local v23       #type:I
    goto/16 :goto_1

    .line 362
    .restart local v17       #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    :cond_4
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->UNSUBCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 363
    const/16 v19, 0x2

    .restart local v19       #subscriptionStatus:I
    goto/16 :goto_2

    .line 365
    .end local v19           #subscriptionStatus:I
    :cond_5
    const/16 v19, 0x0

    .restart local v19       #subscriptionStatus:I
    goto/16 :goto_2

    .line 371
    .restart local v18       #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    :cond_6
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->FROM:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 372
    const/16 v20, 0x3

    .restart local v20       #subscriptionType:I
    goto/16 :goto_3

    .line 373
    .end local v20           #subscriptionType:I
    :cond_7
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->BOTH:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 374
    const/16 v20, 0x4

    .restart local v20       #subscriptionType:I
    goto/16 :goto_3

    .line 375
    .end local v20           #subscriptionType:I
    :cond_8
    sget-object v26, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->REMOVE:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 376
    const/16 v20, 0x1

    .restart local v20       #subscriptionType:I
    goto/16 :goto_3

    .line 378
    .end local v20           #subscriptionType:I
    :cond_9
    const/16 v20, 0x0

    .restart local v20       #subscriptionType:I
    goto/16 :goto_3

    .line 382
    :cond_a
    const/16 v26, 0x0

    move/from16 v11, v26

    goto/16 :goto_4

    .line 383
    :cond_b
    const/16 v26, 0x0

    move/from16 v14, v26

    goto/16 :goto_5

    .line 396
    .end local v8           #i:I
    .restart local v4       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v9       #i:I
    .restart local v14       #rejected:I
    :cond_c
    const/16 v26, 0x0

    move/from16 v25, v26

    goto :goto_6

    .line 403
    .end local v4           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v9           #i:I
    .end local v11           #isQuickContact:I
    .end local v12           #nickname:Ljava/lang/String;
    .end local v14           #rejected:I
    .end local v17           #status:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .end local v18           #subsType:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .end local v19           #subscriptionStatus:I
    .end local v20           #subscriptionType:I
    .end local v23           #type:I
    .end local v24           #username:Ljava/lang/String;
    .restart local v8       #i:I
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v26, v0

    const-string v27, "com.google.android.providers.talk"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyRosterChanged()Z

    .line 416
    return-void

    .line 404
    :catch_0
    move-exception v26

    move-object/from16 v6, v26

    .line 405
    .local v6, e:Landroid/os/RemoteException;
    const-string v26, "GTalkService"

    const-string v27, "%s: %s"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 406
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v26

    move-object/from16 v6, v26

    .line 407
    .local v6, e:Landroid/content/OperationApplicationException;
    const-string v26, "GTalkService"

    const-string v27, "%s: %s"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v6}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-virtual {v6}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public init(Landroid/content/ContentResolver;Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;Landroid/os/Handler;)V
    .locals 1
    .parameter "resolver"
    .parameter "mc"
    .parameter "handler"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    .line 92
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 93
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    .line 95
    return-void
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mLoggedIn:Z

    return v0
.end method

.method public isRosterFetched()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRosterFetched:Z

    return v0
.end method

.method public notifyPresenceChanged()Z
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v0

    return v0
.end method

.method public notifyRosterChanged()Z
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRosterListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v0

    return v0
.end method

.method public notifySelfPresenceChanged()Z
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRosterListenerCallback:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mSelfPresenceListenerCallable:Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback;->call(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/RemoteListenerCallback$Callable;)Z

    move-result v0

    return v0
.end method

.method public onLoggedIn()V
    .locals 1

    .prologue
    .line 716
    const-string v0, "onLoggedIn"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mLoggedIn:Z

    .line 718
    return-void
.end method

.method public onLoggedOut()V
    .locals 5

    .prologue
    .line 721
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 722
    :try_start_0
    const-string v4, "onLoggedOut"

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 723
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mLoggedIn:Z

    .line 725
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGtalkAccountId()J

    move-result-wide v0

    .line 726
    .local v0, accountId:J
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, username:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->removeTalkPresence(J)V

    .line 733
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ContactPresence;->removeAllContactsPresence(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 734
    monitor-exit v3

    .line 735
    return-void

    .line 734
    .end local v0           #accountId:J
    .end local v2           #username:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public presenceChanged(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 23
    .parameter "jid"
    .parameter "presence"

    .prologue
    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v21

    .line 478
    .local v21, gtalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, bareJid:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/XmppUtils;->isGroupChat(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    :goto_0
    return-void

    .line 483
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    const-string v4, "presenceChanged: received self presence, ignore"

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v5

    .line 496
    .local v5, accountId:J
    if-nez p2, :cond_3

    .line 497
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v20, buf:Ljava/lang/StringBuilder;
    const-string v4, "contact_id"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " in (select "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "_id"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " from contacts where ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "account"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "=? AND "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "username"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " LIKE ?)"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v4, ")"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 507
    .local v22, selectionArgs:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v22, v4

    .line 508
    const/4 v4, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v22, v4

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4

    .line 511
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mLoggedIn:Z

    move v8, v0

    if-nez v8, :cond_2

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #accountId:J
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "presenceChanged: jid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", not logged in"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 513
    monitor-exit v4

    goto/16 :goto_0

    .line 518
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 516
    .restart local v5       #accountId:J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object v8, v0

    sget-object v9, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v8

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object v8, v0

    invoke-static {v8, v5, v6, v7}, Lcom/google/android/gsf/gtalkservice/ContactPresence;->removeContactPresenceFor(Landroid/content/ContentResolver;JLjava/lang/String;)V

    .line 518
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    .end local v20           #buf:Ljava/lang/StringBuilder;
    .end local v22           #selectionArgs:[Ljava/lang/String;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->schedulePresenceNotify()V

    goto/16 :goto_0

    .line 520
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->translatePresenceStatus(Lorg/jivesoftware/smack/packet/Presence;)I

    move-result v9

    .line 521
    .local v9, mode:I
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Presence;->getClientType()Lorg/jivesoftware/smack/packet/Presence$ClientType;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->translateClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)I

    move-result v11

    .line 522
    .local v11, clientType:I
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v10

    .line 523
    .local v10, status:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v8

    .line 524
    .local v8, priority:I
    invoke-virtual/range {p2 .. p2}, Lorg/jivesoftware/smack/packet/Presence;->getCapabilityFlag()I

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->translateCapabilityFlag(I)I

    move-result v12

    .line 528
    .local v12, capability:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 529
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mLoggedIn:Z

    move v4, v0

    if-nez v4, :cond_4

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "presenceChanged: jid="

    .end local v5           #accountId:J
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", not logged in"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 531
    monitor-exit v20

    goto/16 :goto_0

    .line 548
    .end local v8           #priority:I
    :catchall_1
    move-exception v4

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .restart local v5       #accountId:J
    .restart local v8       #priority:I
    :cond_4
    move-object/from16 v4, p0

    .line 534
    :try_start_3
    invoke-direct/range {v4 .. v12}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->updatePresenceInDb(JLjava/lang/String;IILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 536
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    if-eqz v4, :cond_5

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "presence update ("

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ", priority="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", mode="

    .end local v8           #priority:I
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", clientType="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 541
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object v13, v0

    move-wide v14, v5

    move-object/from16 v16, v7

    move/from16 v17, v9

    move-object/from16 v18, v10

    move/from16 v19, v12

    invoke-static/range {v13 .. v19}, Lcom/google/android/gsf/gtalkservice/ContactPresence;->updateContactPresence(Landroid/content/ContentResolver;JLjava/lang/String;ILjava/lang/String;I)V

    .line 548
    :cond_6
    monitor-exit v20

    goto/16 :goto_1

    .line 543
    .restart local v8       #priority:I
    :cond_7
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugPresence:Z

    if-eqz v4, :cond_6

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---IGNORE--- presence update ("

    .end local v5           #accountId:J
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", priority="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->logp(Ljava/lang/String;)V

    .line 546
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method

.method public presenceChanged(Ljava/util/Collection;)V
    .locals 33
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, presenceEntries:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smack/packet/Presence;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v13

    .line 562
    .local v13, count:I
    if-nez v13, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mGTalkConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v16

    .line 567
    .local v16, gtalkConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v25

    .line 568
    .local v25, username:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v3

    .line 569
    .local v3, accountId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 570
    .local v23, ts:J
    new-array v12, v13, [Landroid/content/ContentValues;

    .line 572
    .local v12, contactsPresenceValues:[Landroid/content/ContentValues;
    const/4 v13, 0x0

    .line 574
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v20, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/jivesoftware/smack/packet/Presence;

    .line 579
    .local v21, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual/range {v21 .. v21}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v15

    .line 580
    .local v15, from:Ljava/lang/String;
    invoke-static {v15}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, bareJid:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, status:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->translatePresenceStatus(Lorg/jivesoftware/smack/packet/Presence;)I

    move-result v6

    .line 583
    .local v6, mode:I
    invoke-virtual/range {v21 .. v21}, Lorg/jivesoftware/smack/packet/Presence;->getClientType()Lorg/jivesoftware/smack/packet/Presence$ClientType;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->translateClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)I

    move-result v10

    .line 584
    .local v10, clientType:I
    invoke-virtual/range {v21 .. v21}, Lorg/jivesoftware/smack/packet/Presence;->getCapabilityFlag()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->translateCapabilityFlag(I)I

    move-result v8

    .line 586
    .local v8, capabilities:I
    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 588
    sget-object v27, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v27 .. v27}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 589
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v27, "account"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 590
    const-string v27, "username"

    move-object v0, v9

    move-object/from16 v1, v27

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 591
    const-string v27, "mode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 592
    const-string v27, "status"

    move-object v0, v9

    move-object/from16 v1, v27

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 593
    const-string v27, "priority"

    invoke-virtual/range {v21 .. v21}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 594
    const-string v27, "client_type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 595
    const-string v27, "cap"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 597
    move v0, v13

    rem-int/lit16 v0, v0, 0x12c

    move/from16 v27, v0

    if-nez v27, :cond_2

    const/16 v27, 0x1

    move/from16 v26, v27

    .line 598
    .local v26, yieldAllowed:Z
    :goto_2
    move-object v0, v9

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 600
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v26           #yieldAllowed:Z
    :goto_3
    invoke-static/range {v3 .. v8}, Lcom/google/android/gsf/gtalkservice/ContactPresence;->buildContactPresenceValues(JLjava/lang/String;ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v11

    .line 608
    .local v11, contactPresenceValue:Landroid/content/ContentValues;
    aput-object v11, v12, v13

    .line 610
    add-int/lit8 v13, v13, 0x1

    .line 611
    goto/16 :goto_1

    .line 597
    .end local v11           #contactPresenceValue:Landroid/content/ContentValues;
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    const/16 v27, 0x0

    move/from16 v26, v27

    goto :goto_2

    .line 602
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    const-string v27, "presenceChanged(batch): received self presence, skipped for Talk presence"

    invoke-static/range {v27 .. v27}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 613
    .end local v5           #bareJid:Ljava/lang/String;
    .end local v6           #mode:I
    .end local v7           #status:Ljava/lang/String;
    .end local v8           #capabilities:I
    .end local v10           #clientType:I
    .end local v15           #from:Ljava/lang/String;
    .end local v21           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_4
    if-eqz v13, :cond_0

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 632
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mLoggedIn:Z

    move/from16 v28, v0

    if-nez v28, :cond_5

    .line 633
    const-string v28, "batch update talk presence: not logged in"

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 634
    monitor-exit v27

    goto/16 :goto_0

    .line 656
    :catchall_0
    move-exception v28

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v28

    .line 639
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    const-string v29, "com.google.android.providers.talk"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v22

    .line 641
    .local v22, result:[Landroid/content/ContentProviderResult;
    const-string v28, "GTalkService"

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 642
    const/16 v19, 0x0

    .line 643
    .local v19, numSuccess:I
    const/16 v18, 0x0

    .local v18, j:I
    :goto_4
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    .line 644
    aget-object v28, v22, v18

    if-eqz v28, :cond_6

    .line 645
    add-int/lit8 v19, v19, 0x1

    .line 643
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 648
    :cond_7
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "batch presence update: success_rate="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 656
    .end local v18           #j:I
    .end local v19           #numSuccess:I
    .end local v22           #result:[Landroid/content/ContentProviderResult;
    :cond_8
    :goto_5
    :try_start_2
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->notifyPresenceChanged()Z

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mPresenceLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 661
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mLoggedIn:Z

    move/from16 v28, v0

    if-nez v28, :cond_9

    .line 662
    const-string v28, "bulk update contacts presence: not logged in"

    invoke-static/range {v28 .. v28}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 663
    monitor-exit v27

    goto/16 :goto_0

    .line 668
    :catchall_1
    move-exception v28

    monitor-exit v27
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v28

    .line 651
    :catch_0
    move-exception v28

    move-object/from16 v14, v28

    .line 652
    .local v14, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v28, "GTalkService"

    const-string v29, "%s: %s"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-virtual {v14}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 653
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v28

    move-object/from16 v14, v28

    .line 654
    .local v14, e:Landroid/content/OperationApplicationException;
    const-string v28, "GTalkService"

    const-string v29, "%s: %s"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 667
    .end local v14           #e:Landroid/content/OperationApplicationException;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/ContactPresence;->bulkUpdateContactPresences(Landroid/content/ContentResolver;[Landroid/content/ContentValues;)V

    .line 668
    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method

.method public removeRemoteRosterListener(Lcom/google/android/gtalkservice/IRosterListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 127
    invoke-interface {p1}, Lcom/google/android/gtalkservice/IRosterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 129
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gtalkservice/IRosterListener;

    .line 131
    .local v2, rl:Lcom/google/android/gtalkservice/IRosterListener;
    invoke-interface {v2}, Lcom/google/android/gtalkservice/IRosterListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 132
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRemoteRosterListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v3

    .line 137
    .end local v2           #rl:Lcom/google/android/gtalkservice/IRosterListener;
    :goto_0
    return-void

    .line 136
    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setRosterFetched(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 103
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRosterFetched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->log(Ljava/lang/String;)V

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->mRosterFetched:Z

    .line 105
    return-void
.end method
