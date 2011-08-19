.class public abstract Lcom/android/exchange/AbstractSyncService;
.super Ljava/lang/Object;
.source "AbstractSyncService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/AbstractSyncService$ValidationResult;
    }
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;

.field public mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field public mChangeCount:I

.field public mContext:Landroid/content/Context;

.field protected mExitStatus:I

.field public mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field protected mMailboxId:J

.field protected mMailboxName:Ljava/lang/String;

.field protected mPendingRequest:Lcom/android/exchange/PartRequest;

.field protected mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/exchange/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mRequestTime:J

.field protected volatile mStop:Z

.field public volatile mSyncReason:I

.field protected final mSynchronizer:Ljava/lang/Object;

.field protected volatile mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 2
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 66
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 67
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 68
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 73
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 117
    iput-object p1, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 119
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 120
    iget-object v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    .line 121
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "AbstractSyncService"

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 66
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mChangeCount:I

    .line 67
    iput v1, p0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 68
    iput-boolean v1, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 73
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mPendingRequest:Lcom/android/exchange/PartRequest;

    .line 126
    return-void
.end method

.method public static validate(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;
    .locals 8
    .parameter
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ",
            "Landroid/content/Context;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/android/exchange/AbstractSyncService;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .local v0, svc:Lcom/android/exchange/AbstractSyncService;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 149
    invoke-virtual/range {v0 .. v7}, Lcom/android/exchange/AbstractSyncService;->validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 154
    .end local v0           #svc:Lcom/android/exchange/AbstractSyncService;
    :goto_0
    return-object v1

    .line 152
    :catch_0
    move-exception v1

    .line 154
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addRequest(Lcom/android/exchange/Request;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public abstract alarm()Z
.end method

.method public clearRequests()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 310
    return-void
.end method

.method public errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method public getSynchronizer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mSynchronizer:Ljava/lang/Object;

    return-object v0
.end method

.method public hasConnectivity()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 272
    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 274
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .local v3, tries:I
    move v4, v3

    .line 275
    .end local v3           #tries:I
    .local v4, tries:I
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #tries:I
    .restart local v3       #tries:I
    if-ge v4, v7, :cond_1

    .line 276
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 277
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 279
    .local v2, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v5, :cond_0

    move v5, v7

    .line 288
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #state:Landroid/net/NetworkInfo$DetailedState;
    :goto_1
    return v5

    .line 284
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :cond_0
    const-wide/16 v5, 0x2710

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v4, v3

    .line 287
    .end local v3           #tries:I
    .restart local v4       #tries:I
    goto :goto_0

    .line 288
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v4           #tries:I
    .restart local v3       #tries:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 285
    .restart local v1       #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public hasPendingRequests()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mRequestQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/android/exchange/AbstractSyncService;->mStop:Z

    return v0
.end method

.method public abstract reset()V
.end method

.method public abstract stop()V
.end method

.method public userLog(Ljava/lang/String;I)V
    .locals 3
    .parameter "string"
    .parameter "code"

    .prologue
    .line 213
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void
.end method

.method public userLog(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "string"
    .parameter "code"
    .parameter "string2"

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method public userLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "str"
    .parameter "e"

    .prologue
    .line 219
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :goto_0
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-static {p2}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/Exception;)V

    .line 227
    :cond_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs userLog([Ljava/lang/String;)V
    .locals 8
    .parameter "strings"

    .prologue
    .line 236
    sget-boolean v6, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v6, :cond_0

    .line 238
    array-length v6, p1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 239
    const/4 v6, 0x0

    aget-object v3, p1, v6

    .line 247
    .local v3, logText:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-boolean v6, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v6, :cond_0

    .line 249
    iget-object v6, p0, Lcom/android/exchange/AbstractSyncService;->TAG:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .end local v3           #logText:Ljava/lang/String;
    :cond_0
    return-void

    .line 241
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v4, sb:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 243
    .local v5, string:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v5           #string:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #logText:Ljava/lang/String;
    goto :goto_0
.end method

.method public abstract validateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/Context;)Landroid/os/Bundle;
.end method
