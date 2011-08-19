.class public final Lcom/google/android/finsky/remoting/protos/SearchResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SearchResponse.java"


# instance fields
.field private aggregateQuery_:Z

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

.field private hasAggregateQuery:Z

.field private hasOriginalQuery:Z

.field private hasSuggestedQuery:Z

.field private originalQuery_:Ljava/lang/String;

.field private suggestedQuery_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->originalQuery_:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->suggestedQuery_:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->aggregateQuery_:Z

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->bucket_:Ljava/util/List;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->bucket_:Ljava/util/List;

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object p0
.end method

.method public getAggregateQuery()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->aggregateQuery_:Z

    return v0
.end method

.method public getBucket(I)Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    .locals 1
    .parameter "index"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->bucket_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    return-object p0
.end method

.method public getBucketCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->bucket_:Ljava/util/List;

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
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->bucket_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getSerializedSize()I

    .line 131
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->cachedSize:I

    return v0
.end method

.method public getOriginalQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->originalQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasOriginalQuery()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getOriginalQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasSuggestedQuery()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasAggregateQuery()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getAggregateQuery()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucketList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 149
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 152
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_3
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->cachedSize:I

    .line 153
    return v2
.end method

.method public getSuggestedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->suggestedQuery_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAggregateQuery()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasAggregateQuery:Z

    return v0
.end method

.method public hasOriginalQuery()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasOriginalQuery:Z

    return v0
.end method

.method public hasSuggestedQuery()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasSuggestedQuery:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/SearchResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 161
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    :sswitch_0
    return-object p0

    .line 171
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->setOriginalQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/SearchResponse;

    goto :goto_0

    .line 175
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->setSuggestedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/SearchResponse;

    goto :goto_0

    .line 179
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->setAggregateQuery(Z)Lcom/google/android/finsky/remoting/protos/SearchResponse;

    goto :goto_0

    .line 183
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;-><init>()V

    .line 184
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 185
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->addBucket(Lcom/google/android/finsky/remoting/protos/DocList$Bucket;)Lcom/google/android/finsky/remoting/protos/SearchResponse;

    goto :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/SearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateQuery(Z)Lcom/google/android/finsky/remoting/protos/SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasAggregateQuery:Z

    .line 51
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->aggregateQuery_:Z

    .line 52
    return-object p0
.end method

.method public setOriginalQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasOriginalQuery:Z

    .line 17
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->originalQuery_:Ljava/lang/String;

    .line 18
    return-object p0
.end method

.method public setSuggestedQuery(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/SearchResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasSuggestedQuery:Z

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/SearchResponse;->suggestedQuery_:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasOriginalQuery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getOriginalQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasSuggestedQuery()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getSuggestedQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->hasAggregateQuery()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getAggregateQuery()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 120
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/SearchResponse;->getBucketList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocList$Bucket;

    .line 121
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 123
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocList$Bucket;
    :cond_3
    return-void
.end method
