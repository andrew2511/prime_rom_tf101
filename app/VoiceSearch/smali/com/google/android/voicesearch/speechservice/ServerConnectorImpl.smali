.class public Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;
.super Ljava/lang/Object;
.source "ServerConnectorImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/ServerConnector;
.implements Lcom/google/android/voicesearch/speechservice/ConnectionCallback;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ServerConnectorImpl"


# instance fields
.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

.field private mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

.field private final mContext:Landroid/content/Context;

.field private mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

.field private final mNetworkConnectionTimeoutMillis:I

.field private mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

.field private mPendingMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceLogger:Lcom/google/android/voicesearch/performanceanalysis/PerformanceLogger;

.field private mReportSender:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

.field private mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

.field private mUseTcp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mUseTcp:Z

    .line 80
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 83
    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    invoke-direct {v1, p1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    .line 86
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getNetworkTimeout()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mNetworkConnectionTimeoutMillis:I

    .line 87
    new-instance v0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mReportSender:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    .line 92
    return-void
.end method

.method private addPendingMessage(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mPendingMessages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mPendingMessages:Ljava/util/List;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mPendingMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method private closeTcpSession()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->destroySession()V

    .line 226
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->close()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    .line 231
    :cond_0
    return-void
.end method

.method private copyAudioData(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .parameter

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 319
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 320
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 321
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 322
    return-object v0
.end method

.method private createHttpSession()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "ServerConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previous session not destroyed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->clearSession()V

    .line 201
    const-string v0, "ServerConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting HTTP session, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    .line 203
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->addPendingMessage(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 204
    return-void
.end method

.method private createTcpConnection(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasServerAddress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 171
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    invoke-interface {v0, v6}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V

    .line 193
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getServerAddress()Lcom/google/protos/speech/service/SpeechService$SocketAddress;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$SocketAddress;->getPort()I

    move-result v0

    .line 178
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getStunId()Ljava/lang/String;

    move-result-object v2

    .line 179
    const-string v3, "ServerConnectorImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating TCP connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 182
    new-instance v3, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    iget v4, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mNetworkConnectionTimeoutMillis:I

    invoke-direct {v3, v1, v0, v2, v4}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v3, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    .line 184
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    invoke-virtual {v0, p0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->start(Lcom/google/android/voicesearch/speechservice/ConnectionCallback;)V
    :try_end_0
    .catch Lcom/google/android/voicesearch/speechservice/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Failed to create TCP connection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 191
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    invoke-interface {v0, v6}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V

    goto :goto_0
.end method

.method private createTcpSession()V
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->hasTcpSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "ServerConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reusing session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->clearSession()V

    .line 138
    :try_start_0
    const-string v0, "ServerConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting TCP session, url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCreateSessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Z)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->onResponseAvailable(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    .line 146
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->createTcpConnection(Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;)V
    :try_end_0
    .catch Lcom/google/android/voicesearch/speechservice/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Failed to create session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 151
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V

    goto :goto_0
.end method

.method private destroySession()V
    .locals 3

    .prologue
    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->incrementRequestId()V

    .line 398
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeDestroySessionRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    :try_end_0
    .catch Lcom/google/android/voicesearch/speechservice/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Destroying session failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private flushMessages()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mPendingMessages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mPendingMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mPendingMessages:Ljava/util/List;

    .line 412
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mPendingMessages:Ljava/util/List;

    .line 419
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    .line 421
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->onResponseAvailable(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    goto :goto_0

    .line 428
    :cond_0
    return-void
.end method

.method private hasTcpSession()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->hasTcpSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->addPendingMessage(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelRecognition()V
    .locals 3

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mUseTcp:Z

    if-nez v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    const-string v0, "ServerConnectorImpl"

    const-string v1, "Canceling recognition request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    if-eqz v0, :cond_0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeCancelRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    :try_end_0
    .catch Lcom/google/android/voicesearch/speechservice/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Sending cancel request failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->close()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->closeTcpSession()V

    .line 221
    return-void
.end method

.method public createClientReport()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    const-string v0, "ServerConnectorImpl"

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->toString(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mReportSender:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->createClientReportRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->addReport(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    goto :goto_0
.end method

.method public createSession(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V
    .locals 4
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    .line 109
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    .line 111
    new-instance v0, Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mHttpClient:Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/util/AccountHelper;Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mReportSender:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    .line 113
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    invoke-direct {v0}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->setNetworkType(I)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mPendingMessages:Ljava/util/List;

    .line 116
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mUseTcp:Z

    if-eqz v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->createTcpSession()V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->createHttpSession()V

    goto :goto_0
.end method

.method public onConnectionAlive()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    invoke-interface {v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onIsAlive()V

    .line 551
    return-void
.end method

.method public onConnectionClosed()V
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mTcpConnection:Lcom/google/android/voicesearch/tcp/TcpConnectionImpl;

    .line 540
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V

    .line 544
    const-string v0, "ServerConnectorImpl"

    const-string v1, "connection exception received"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 547
    return-void
.end method

.method public onResponseAvailable(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V
    .locals 5
    .parameter

    .prologue
    .line 452
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getHeader()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    if-nez v0, :cond_2

    .line 453
    :cond_0
    const-string v0, "ServerConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No header in response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1
    :goto_0
    return-void

    .line 462
    :cond_2
    sget-object v1, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->setSessionId(Ljava/lang/String;)V

    .line 468
    const-string v0, "ServerConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->createSessionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;

    .line 472
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasClientExperimentConfigHash()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/voicesearch/Experiments;->getExperimentHash(Landroid/content/Context;)J

    move-result-wide v1

    .line 474
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getClientExperimentConfigHash()I

    move-result v3

    int-to-long v3, v3

    .line 478
    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v4}, Lcom/google/android/voicesearch/Experiments;->updateExperimentHash(Landroid/content/Context;J)V

    .line 481
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->hasClientExperimentConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CreateSessionResponse;->getClientExperimentConfig()Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;

    move-result-object v0

    .line 484
    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->hasClientParameters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/protos/speech/ClientParametersProto$ClientExperimentConfig;->getClientParameters()Lcom/google/protos/speech/ClientParametersProto$ClientParameters;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/voicesearch/Experiments;->setExperimentParameters(Landroid/content/Context;Lcom/google/protos/speech/ClientParametersProto$ClientParameters;)V

    goto :goto_0

    .line 497
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mUseTcp:Z

    if-eqz v1, :cond_4

    .line 498
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getRequestId()I

    move-result v0

    .line 499
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 500
    const-string v1, "ServerConnectorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding response with bad request id, current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getRequestId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", received="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 506
    :cond_4
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeAck;->recognizeAck:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 509
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->ackReceived()V

    goto/16 :goto_0

    .line 514
    :cond_5
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->hasExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->hasGaiaResult()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 519
    const-string v1, "ServerConnectorImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response: Gaia Result "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v0}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->getGaiaResult()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getStatus()Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v0

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$Status;->IN_PROGRESS:Lcom/google/protos/speech/service/SpeechService$Status;

    if-ne v0, v1, :cond_7

    .line 527
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    sget-object v1, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;->recognizeResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;

    invoke-interface {v0, p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onPartialResponse(Lcom/google/protos/speech/service/SpeechService$RecognizeResponse;)V

    goto/16 :goto_0

    .line 522
    :cond_6
    const-string v0, "ServerConnectorImpl"

    const-string v1, "Response: Gaia Result missing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 532
    :cond_7
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    invoke-interface {v0, p1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onResponse(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)V

    .line 533
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->responseReceived()V

    goto/16 :goto_0
.end method

.method public postAudioChunk(Ljava/nio/ByteBuffer;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->copyAudioData(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeMediaDataRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;[BZ)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v0

    .line 300
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V

    .line 301
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mUseTcp:Z

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->destroySession()V

    .line 303
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->flushMessages()V
    :try_end_0
    .catch Lcom/google/android/voicesearch/speechservice/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Failed to send message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V

    goto :goto_0
.end method

.method public sendClientReports()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mReportSender:Lcom/google/android/voicesearch/speechservice/ClientReportSender;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0, v1}, Lcom/google/android/voicesearch/speechservice/ClientReportSender;->sendReports(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)V

    .line 407
    return-void
.end method

.method public setCallback(Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    .line 96
    return-void
.end method

.method public setEndOfSpeech()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->endOfSpeech()V

    .line 353
    :cond_0
    return-void
.end method

.method public setEndpointTriggerType(I)V
    .locals 1
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->setEndpointTriggerType(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public setRequestStatus(I)V
    .locals 1
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->setRequestStatus(I)V

    .line 344
    :cond_0
    return-void
.end method

.method public setUseTcp(Z)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mUseTcp:Z

    .line 100
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mUseTcp:Z

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->closeTcpSession()V

    .line 103
    :cond_0
    return-void
.end method

.method public startRecognize()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->incrementRequestId()V

    .line 246
    const-string v0, "ServerConnectorImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecognize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mParams:Lcom/google/android/voicesearch/speechservice/RecognitionParameters;

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/ProtoBufUtils;->makeRecognizeRequest(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    .line 248
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;->recognizeRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {v1, v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->getExtension(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognizeRequest;

    .line 261
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mClientReportBuilder:Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/speechservice/ClientReportBuilder;->startRequest()V

    .line 270
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->sendRequest(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)V
    :try_end_0
    .catch Lcom/google/android/voicesearch/speechservice/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string v1, "ServerConnectorImpl"

    const-string v2, "Failed to send recognition request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->setRequestStatus(I)V

    .line 278
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/ServerConnectorImpl;->mCallback:Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/speechservice/ServerConnectorCallback;->onError(I)V

    goto :goto_0
.end method
