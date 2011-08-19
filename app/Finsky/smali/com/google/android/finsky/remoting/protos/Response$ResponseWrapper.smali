.class public final Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseWrapper"
.end annotation


# instance fields
.field private cachedSize:I

.field private commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

.field private hasCommands:Z

.field private hasPayload:Z

.field private payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

.field private preFetch_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/PreFetch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    .line 34
    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    .line 9
    return-void
.end method

.method public static parseFrom([B)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    check-cast p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    return-object p0
.end method


# virtual methods
.method public addPreFetch(Lcom/google/android/finsky/remoting/protos/PreFetch;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    if-gez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getSerializedSize()I

    .line 118
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    return v0
.end method

.method public getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    return-object v0
.end method

.method public getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    return-object v0
.end method

.method public getPreFetchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/PreFetch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->preFetch_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/PreFetch;

    .line 132
    .local v0, element:Lcom/google/android/finsky/remoting/protos/PreFetch;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 135
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/PreFetch;
    :cond_2
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->cachedSize:I

    .line 136
    return v2
.end method

.method public hasCommands()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands:Z

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 144
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :sswitch_0
    return-object p0

    .line 154
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Response$Payload;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Response$Payload;-><init>()V

    .line 155
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Response$Payload;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->setPayload(Lcom/google/android/finsky/remoting/protos/Response$Payload;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 160
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Response$Payload;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;-><init>()V

    .line 161
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 162
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->setCommands(Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 166
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/PreFetch;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/PreFetch;-><init>()V

    .line 167
    .local v1, value:Lcom/google/android/finsky/remoting/protos/PreFetch;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->addPreFetch(Lcom/google/android/finsky/remoting/protos/PreFetch;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public setCommands(Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->commands_:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    .line 43
    return-object p0
.end method

.method public setPayload(Lcom/google/android/finsky/remoting/protos/Response$Payload;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .locals 1
    .parameter "value"

    .prologue
    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload:Z

    .line 22
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->payload_:Lcom/google/android/finsky/remoting/protos/Response$Payload;

    .line 23
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
    .line 101
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasPayload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/PreFetch;

    .line 108
    .local v0, element:Lcom/google/android/finsky/remoting/protos/PreFetch;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 110
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/PreFetch;
    :cond_2
    return-void
.end method
