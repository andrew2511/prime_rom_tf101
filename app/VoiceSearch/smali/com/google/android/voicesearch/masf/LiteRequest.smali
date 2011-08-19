.class public Lcom/google/android/voicesearch/masf/LiteRequest;
.super Ljava/lang/Object;
.source "LiteRequest.java"


# static fields
.field public static final TYPE_HEADER:I = 0x1

.field public static final TYPE_HTTP:I = 0x3

.field public static final TYPE_PLAIN:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private mClientVersion:Ljava/lang/String;

.field private mCookie:J

.field private mPayload:[B

.field private mServiceUrl:Ljava/lang/String;

.field private mType:I

.field private response:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be either TYPE_PLAIN or TYPE_HTTP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    if-nez p2, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 52
    :cond_1
    iput p1, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mType:I

    .line 53
    iput-object p2, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mServiceUrl:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 40
    :cond_0
    iput p1, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mType:I

    .line 41
    iput-object p2, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mClientVersion:Ljava/lang/String;

    .line 42
    iput-wide p3, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mCookie:J

    .line 43
    return-void
.end method

.method public static createHeaderRequest(Ljava/lang/String;J)Lcom/google/android/voicesearch/masf/LiteRequest;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 242
    new-instance v0, Lcom/google/android/voicesearch/masf/LiteRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/android/voicesearch/masf/LiteRequest;-><init>(ILjava/lang/String;J)V

    return-object v0
.end method

.method public static createHttpRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;
    .locals 2
    .parameter

    .prologue
    .line 252
    new-instance v0, Lcom/google/android/voicesearch/masf/LiteRequest;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/google/android/voicesearch/masf/LiteRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static createPlainRequest(Ljava/lang/String;)Lcom/google/android/voicesearch/masf/LiteRequest;
    .locals 2
    .parameter

    .prologue
    .line 247
    new-instance v0, Lcom/google/android/voicesearch/masf/LiteRequest;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/android/voicesearch/masf/LiteRequest;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    return-void
.end method

.method private generateHeaderRequest(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const-string v0, "Request.generateHeaderRequest()"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->debug(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 94
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 96
    iget-object v2, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    iget-wide v2, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mCookie:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 98
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method private generateHttpRequest(Ljava/util/List;I)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 150
    const-string v0, "Request.generatePlainRequest()"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->debug(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B

    array-length v0, v0

    .line 160
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 162
    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 164
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 165
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 166
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 174
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 175
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 176
    iget-object v4, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mServiceUrl:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 177
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 178
    array-length v4, v3

    add-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 179
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 180
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 187
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 188
    array-length v5, v4

    array-length v6, v3

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 189
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 190
    const/16 v0, 0x100

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 191
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 192
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 196
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    return-void

    :cond_1
    move v0, v7

    .line 152
    goto :goto_0
.end method

.method private generatePlainRequest(Ljava/util/List;I)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 108
    const-string v0, "Request.generatePlainRequest()"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->debug(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B

    array-length v0, v0

    .line 118
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 120
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 121
    iget-object v3, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mServiceUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 122
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 123
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 124
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 125
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 132
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 133
    array-length v4, v3

    add-int/2addr v0, v4

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 134
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 135
    const/16 v0, 0x100

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 136
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 137
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 141
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    return-void

    :cond_1
    move v0, v5

    .line 110
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized generateRequest(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    const-string v0, "Request.generateRequest()"

    invoke-static {v0}, Lcom/google/android/voicesearch/masf/LiteRequest;->debug(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateHeaderRequest(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/masf/LiteRequest;->generatePlainRequest(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateHttpRequest(Ljava/util/List;I)V

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized getPayload()[B
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->response:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mServiceUrl:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload([B)Lcom/google/android/voicesearch/masf/LiteRequest;
    .locals 2
    .parameter

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be either TYPE_PLAIN or TYPE_HTTP"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 220
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->mPayload:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    monitor-exit p0

    return-object p0
.end method

.method public declared-synchronized setResponse(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->response:Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray(I)[B
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {p0, v1, p1}, Lcom/google/android/voicesearch/masf/LiteRequest;->generateRequest(Ljava/util/List;I)V

    .line 60
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 62
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 61
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForResponse()V
    .locals 1

    .prologue
    .line 231
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/voicesearch/masf/LiteRequest;->response:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 233
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0

    .line 238
    :cond_0
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
