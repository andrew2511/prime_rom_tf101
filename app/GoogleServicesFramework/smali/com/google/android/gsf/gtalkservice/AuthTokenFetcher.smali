.class public Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;
.super Ljava/lang/Object;
.source "AuthTokenFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;
    }
.end annotation


# instance fields
.field private mAuthTokenType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mAuthTokenType:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 58
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GTALK_AUTH_TOKEN"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    return-void
.end method

.method private internalFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;
    .locals 6
    .parameter "username"
    .parameter "callback"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 135
    .local v0, authToken:Ljava/lang/String;
    :try_start_0
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalFetch: get auth token for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->log(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    new-instance v3, Landroid/accounts/Account;

    const-string v4, "com.google"

    invoke-direct {v3, p1, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mAuthTokenType:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 140
    if-nez v0, :cond_1

    .line 141
    invoke-interface {p2, p1}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;->authFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    const/4 v2, 0x0

    .line 157
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 148
    .local v1, e:Ljava/io/IOException;
    invoke-interface {p2, p1}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;->fetchAuthTokenLater(Ljava/lang/String;)V

    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    move-object v2, v0

    .line 157
    goto :goto_0

    .line 149
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 151
    .local v1, e:Landroid/accounts/AuthenticatorException;
    invoke-interface {p2, p1}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;->fetchAuthTokenLater(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    move-object v1, v2

    .line 154
    .local v1, e:Landroid/accounts/OperationCanceledException;
    invoke-interface {p2, p1}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;->fetchAuthTokenLater(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 161
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AuthTokenFetcher] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method private throwIfRunningInUiThread()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t run on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GTalkService"

    const-string v2, "Not allowed to run on main thread "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    throw v0

    .line 68
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method


# virtual methods
.method public blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .parameter "callback"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->throwIfRunningInUiThread()V

    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "blockingFetch: missing callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p1, :cond_1

    .line 78
    const-string v0, "GTalkService"

    const-string v1, "asyncFetch: no username"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-interface {p2}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;->accountMissing()V

    .line 80
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->internalFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method public blockingRefreshAuthToken(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;
    .locals 3
    .parameter "username"
    .parameter "authToken"
    .parameter "callback"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->throwIfRunningInUiThread()V

    .line 96
    if-nez p3, :cond_0

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "blockingRefreshAuthToken: missing callback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    if-nez p1, :cond_1

    .line 101
    const-string v1, "GTalkService"

    const-string v2, "asyncFetchAuthToken: no username!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-interface {p3}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;->accountMissing()V

    .line 103
    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 109
    .local v0, retVal:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 111
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_2

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingRefreshAuthToken: inval old and fetch new token for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->log(Ljava/lang/String;)V

    .line 115
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->internalFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object v1, v0

    .line 128
    goto :goto_0

    .line 120
    :cond_4
    :try_start_1
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "blockingRefreshAuthToken: auth token is already empty."

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method
