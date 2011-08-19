.class public Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;
.super Lcom/google/android/youtube/googlemobile/masf/protocol/SimpleRequest;


# instance fields
.field private bodyPartCount:[B

.field private bodyParts:Ljava/util/Vector;

.field private contentType:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private payloadHeader:[B

.field private payloadMetaData:[B

.field private payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

.field private properties:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/SimpleRequest;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->setBlockType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/googlemobile/masf/protocol/SimpleRequest;-><init>(Ljava/lang/String;I)V

    const-string v0, "GET"

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->setBlockType(I)V

    return-void
.end method

.method private generateBlockData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyPartCount:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->generateBodyPartCount()[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadMetaData:[B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->generatePayloadMetaData()[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadHeader:[B

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->generatePayloadHeader()[B

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadHeader:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadMetaData:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyPartCount:[B

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/protocol/BodyPart;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected generateBodyPartCount()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyPartCount:[B

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyPartCount:[B

    return-object v0
.end method

.method protected generatePayloadHeader()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->getServiceUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->getServiceVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadMetaData:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    invoke-interface {v3}, Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;->getStreamLength()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadHeader:[B

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadHeader:[B

    return-object v0
.end method

.method protected generatePayloadMetaData()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpUtil;->writeContentType(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;

    :goto_1
    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpUtil;->writeProperties(Ljava/io/DataOutputStream;Ljava/util/Hashtable;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    invoke-interface {v2}, Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;->getStreamLength()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadMetaData:[B

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadMetaData:[B

    return-object v0

    :cond_2
    const-string v2, "multipart/related"

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_2
.end method

.method public declared-synchronized getBodyInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->generateBlockData()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadHeader:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadMetaData:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    invoke-interface {v0}, Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyPartCount:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/protocol/BodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/youtube/googlemobile/common/io/SequenceInputStream;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/googlemobile/common/io/SequenceInputStream;-><init>([Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBodyStreamLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->generateBlockData()V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadHeader:[B

    array-length v0, v0

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadMetaData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;

    invoke-interface {v1}, Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;->getStreamLength()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyPartCount:[B

    array-length v1, v1

    add-int/2addr v0, v1

    move v1, v2

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->bodyParts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/googlemobile/masf/protocol/BodyPart;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/masf/protocol/BodyPart;->getStreamLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->contentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->properties:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setId(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/google/android/youtube/googlemobile/masf/protocol/SimpleRequest;->setId(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadHeader:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMethod(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->method:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPayload([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/youtube/googlemobile/masf/ByteArrayInputStreamProvider;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/googlemobile/masf/ByteArrayInputStreamProvider;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/masf/protocol/HttpRequest;->payloadProvider:Lcom/google/android/youtube/googlemobile/masf/InputStreamProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
