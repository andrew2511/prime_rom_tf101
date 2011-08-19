.class public Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;
.super Ljava/lang/Object;
.source "SpeechServiceHttpClient.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SpeechServiceHttpClient"


# instance fields
.field private mActiveClients:I

.field private mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private mHttpClient:Landroid/net/http/AndroidHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mActiveClients:I

    .line 57
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 60
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/Utils;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getNetworkTimeout()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 63
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->newInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 64
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 66
    return-void
.end method

.method private addMultiProto(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 152
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "multiproto"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private post(Ljava/lang/String;[B)Ljava/io/InputStream;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 163
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v1, v0}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 171
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 172
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 173
    return-object v0

    .line 175
    :cond_0
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POST failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "POST failed"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readMessage(Ljava/io/DataInputStream;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    new-array v0, v0, [B

    .line 147
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 148
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mActiveClients:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mActiveClients:I

    if-lez v0, :cond_0

    .line 191
    monitor-exit p0

    .line 200
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_1

    .line 194
    const-string v0, "SpeechServiceHttpClient"

    const-string v1, "Closing the HTTP client."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 196
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 199
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Ljava/lang/String;[B)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :try_start_1
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mExtensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 97
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string v1, "SpeechServiceHttpClient"

    const-string v2, "Exception occured while posting a message over HTTP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "Error encoding message"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No messages"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 113
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 114
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    .line 116
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->toByteArray()[B

    move-result-object v0

    .line 117
    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 118
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 113
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/voicesearch/speechservice/RecognitionParameters;->getSpeechServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->addMultiProto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->post(Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    :goto_1
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->readMessage(Ljava/io/DataInputStream;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    new-instance v1, Lcom/google/android/voicesearch/speechservice/ConnectionException;

    const-string v2, "Error encoding message"

    invoke-direct {v1, v2, v0}, Lcom/google/android/voicesearch/speechservice/ConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0
.end method

.method public registerHttpUser(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_0

    .line 77
    invoke-static {p1}, Lcom/google/android/voicesearch/speechservice/Utils;->buildUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mActiveClients:I

    .line 80
    :cond_0
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mActiveClients:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/SpeechServiceHttpClient;->mActiveClients:I

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
