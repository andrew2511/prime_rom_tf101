.class public Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
.super Lcom/google/android/gtalkservice/IGTalkConnection$Stub;
.source "GTalkConnectionWrapper.java"


# instance fields
.field private mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

.field private mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 1
    .parameter "connection"
    .parameter "service"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGTalkConnection$Stub;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    .line 37
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0, p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setSessionWrapper(Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;)V

    .line 38
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 39
    return-void
.end method


# virtual methods
.method public clearConnectionStatistics()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->clearStats()V

    .line 108
    return-void
.end method

.method public createImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getImSession(Z)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionUptime()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionUptime()I

    move-result v0

    return v0
.end method

.method public getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, deviceId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 64
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_0
    return-object v1
.end method

.method public getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    return-object v0
.end method

.method public getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getJid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastActivityFromServerTime()J
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getLastActivityFromServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastActivityToServerTime()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getLastActivityToServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfConnectionsAttempted()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getNumberOfConnectionsAttempted()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNumberOfConnectionsMade()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getNumberOfConnectionsMade()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method logout()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logout()V

    .line 51
    return-void
.end method

.method public sendHeartbeat()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const-string v1, "com.google.android.gtalkservice.permission.SEND_HEARTBEAT"

    const-string v2, "Need SEND_HEART_BEAT permission"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no connection object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendHeartbeatToServer()Z

    .line 124
    return-void
.end method

.method public sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V
    .locals 1
    .parameter "data"
    .parameter "cb"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->mConnection:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V

    .line 112
    return-void
.end method
