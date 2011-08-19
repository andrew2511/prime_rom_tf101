.class public final Lcom/google/android/finsky/remoting/protos/PreFetch;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PreFetch.java"


# instance fields
.field private cacheUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private etag_:Ljava/lang/String;

.field private hasCacheUrl:Z

.field private hasEtag:Z

.field private hasImmediate:Z

.field private immediate_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->cacheUrl_:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->etag_:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->immediate_:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public getCacheUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->cacheUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->cachedSize:I

    if-gez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->getSerializedSize()I

    .line 91
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->cachedSize:I

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->etag_:Ljava/lang/String;

    return-object v0
.end method

.method public getImmediate()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->immediate_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasCacheUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->getCacheUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasEtag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->getEtag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasImmediate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->getImmediate()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->cachedSize:I

    .line 109
    return v0
.end method

.method public hasCacheUrl()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasCacheUrl:Z

    return v0
.end method

.method public hasEtag()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasEtag:Z

    return v0
.end method

.method public hasImmediate()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasImmediate:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/PreFetch;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 117
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    :sswitch_0
    return-object p0

    .line 127
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/PreFetch;->setCacheUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/PreFetch;

    goto :goto_0

    .line 131
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/PreFetch;->setEtag(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/PreFetch;

    goto :goto_0

    .line 135
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/PreFetch;->setImmediate(Z)Lcom/google/android/finsky/remoting/protos/PreFetch;

    goto :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/PreFetch;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/PreFetch;

    move-result-object v0

    return-object v0
.end method

.method public setCacheUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/PreFetch;
    .locals 1
    .parameter "value"

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasCacheUrl:Z

    .line 17
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->cacheUrl_:Ljava/lang/String;

    .line 18
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/PreFetch;
    .locals 1
    .parameter "value"

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasEtag:Z

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->etag_:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public setImmediate(Z)Lcom/google/android/finsky/remoting/protos/PreFetch;
    .locals 1
    .parameter "value"

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasImmediate:Z

    .line 51
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/PreFetch;->immediate_:Z

    .line 52
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasCacheUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->getCacheUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasEtag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->hasImmediate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/PreFetch;->getImmediate()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 83
    :cond_2
    return-void
.end method
