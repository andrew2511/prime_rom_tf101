.class public final Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListResponse"
.end annotation


# instance fields
.field private bucket_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-object p0
.end method

.method public getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "index"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    return-object p0
.end method

.method public getBucketCount()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBucketList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->bucket_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getSerializedSize()I

    .line 70
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucketList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 76
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 79
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_0
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->cachedSize:I

    .line 80
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 88
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 92
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :sswitch_0
    return-object p0

    .line 98
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;-><init>()V

    .line 99
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    goto :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 60
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 62
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_0
    return-void
.end method
