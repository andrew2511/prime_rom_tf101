.class public Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
.super Ljava/lang/Object;
.source "GoogleLoginServiceBlockingHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GoogleLoginServiceBlockingHelper"


# instance fields
.field private final mBackoffFactor:D

.field private mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

.field private final mContext:Landroid/content/Context;

.field private mDelay:I

.field private mGlsVerified:Z

.field private volatile mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

.field private mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

.field private final mMaxDelaySecs:I

.field private final mMinDelaySecs:I

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    .line 61
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    .line 62
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    .line 64
    iput-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    .line 145
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    .line 146
    const/16 v0, 0x12c

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    .line 147
    const-wide/high16 v0, 0x4000

    iput-wide v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBackoffFactor:D

    .line 148
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 149
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    .line 152
    const-string v0, "com.google.android.googleapps.GoogleLoginService"

    invoke-static {p1, v0}, Lcom/google/android/googlelogin/GoogleAppsVerifier;->isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;

    invoke-direct {v0, v2}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;-><init>(I)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 160
    :try_start_0
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$1;-><init>(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)V

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 189
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/googlelogin/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGlsVerified:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Lcom/google/android/googleapps/IGoogleLoginService;)Lcom/google/android/googleapps/IGoogleLoginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private checkGoogleLoginServiceVerificationLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGlsVerified:Z

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;-><init>(I)V

    throw v0

    .line 274
    :cond_0
    return-void
.end method

.method private delay()V
    .locals 4

    .prologue
    .line 222
    :try_start_0
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBackoffFactor:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 227
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    iget v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMaxDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 228
    :cond_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAccount(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "requiresGoogle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 377
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAccounts(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 329
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAccounts()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 331
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAndroidId(Landroid/content/Context;)J
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 546
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAndroidId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 548
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 430
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 432
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static getOneAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 132
    .local v0, loginHelper:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method public static invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;

    invoke-direct {v0, p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, h:Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    .line 292
    return-void

    .line 290
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
.end method

.method private resetDelay()V
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mMinDelaySecs:I

    iput v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mDelay:I

    .line 235
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAccount(Z)Ljava/lang/String;
    .locals 3
    .parameter "requiresGoogle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 397
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 399
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAccount(Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 400
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public getAccounts()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 347
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 349
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAccounts()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 350
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public getAndroidId()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 565
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 567
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1}, Lcom/google/android/googleapps/IGoogleLoginService;->getAndroidId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 568
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public getAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;,
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 456
    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v2

    .line 457
    .local v2, result:Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 458
    const/4 v3, 0x0

    .line 459
    .local v3, status:Lcom/google/android/googleapps/LoginData$Status;
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v0

    .line 460
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 461
    const-string v4, "loginData"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/googleapps/LoginData;

    .line 462
    .local v1, loginData:Lcom/google/android/googleapps/LoginData;
    if-eqz v1, :cond_0

    .line 463
    iget-object v3, v1, Lcom/google/android/googleapps/LoginData;->mStatus:Lcom/google/android/googleapps/LoginData$Status;

    .line 466
    .end local v1           #loginData:Lcom/google/android/googleapps/LoginData;
    :cond_0
    new-instance v4, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;

    const-string v5, "unable to find auth token for account"

    invoke-direct {v4, p0, v5, v3}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper$AuthenticationException;-><init>(Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;Ljava/lang/String;Lcom/google/android/googleapps/LoginData$Status;)V

    throw v4

    .line 468
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #status:Lcom/google/android/googleapps/LoginData$Status;
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    .locals 3
    .parameter "username"
    .parameter "service"
    .parameter "notifyAuthFailure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 501
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 503
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/googleapps/IGoogleLoginService;->blockingGetCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 505
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 247
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mServiceThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "calling GoogleLoginServiceBlockingHelper methods from your main thread can lead to deadlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 252
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 254
    :try_start_2
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mBindWaitCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0

    .line 260
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->checkGoogleLoginServiceVerificationLocked()V

    .line 262
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    iget-object v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->mGoogleLoginServiceLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 305
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 307
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/googleapps/IGoogleLoginService;->invalidateAuthToken(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method

.method public peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "username"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/googlelogin/GoogleLoginServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->resetDelay()V

    .line 524
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->getLoginService()Lcom/google/android/googleapps/IGoogleLoginService;

    move-result-object v1

    .line 526
    .local v1, loginService:Lcom/google/android/googleapps/IGoogleLoginService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/google/android/googleapps/IGoogleLoginService;->peekCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, e:Landroid/os/RemoteException;
    invoke-direct {p0}, Lcom/google/android/googlelogin/GoogleLoginServiceBlockingHelper;->delay()V

    goto :goto_0
.end method
