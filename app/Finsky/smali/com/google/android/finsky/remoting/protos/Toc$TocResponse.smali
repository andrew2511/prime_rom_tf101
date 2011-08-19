.class public final Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Toc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Toc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TocResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private corpus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private hasTosContent:Z

.field private hasTosVersion:Z

.field private tosContent_:Ljava/lang/String;

.field private tosVersion_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersion_:I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public addCorpus(Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
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
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getSerializedSize()I

    .line 112
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    return v0
.end method

.method public getCorpusCount()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCorpusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->corpus_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 118
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 121
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 129
    :cond_2
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->cachedSize:I

    .line 130
    return v2
.end method

.method public getTosContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosVersion()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersion_:I

    return v0
.end method

.method public hasTosContent()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent:Z

    return v0
.end method

.method public hasTosVersion()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersion:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 138
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 142
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    :sswitch_0
    return-object p0

    .line 148
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;-><init>()V

    .line 149
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->addCorpus(Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 154
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosVersion(I)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 158
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->setTosContent(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    goto :goto_0

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-result-object v0

    return-object v0
.end method

.method public setTosContent(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent:Z

    .line 69
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosContent_:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setTosVersion(I)Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersion:Z

    .line 52
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->tosVersion_:I

    .line 53
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
    .line 95
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getCorpusList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 96
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 98
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosVersion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->hasTosContent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 104
    :cond_2
    return-void
.end method
