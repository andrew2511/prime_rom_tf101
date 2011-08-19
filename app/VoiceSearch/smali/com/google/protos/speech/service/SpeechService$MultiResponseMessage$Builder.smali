.class public final Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MultiResponseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;",
        "Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$MultiResponseMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private responseMessage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8054
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 8143
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    .line 8055
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->maybeForceBuilderInitialization()V

    .line 8056
    return-void
.end method

.method static synthetic access$9200()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1

    .prologue
    .line 8049
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1

    .prologue
    .line 8061
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResponseMessageIsMutable()V
    .locals 2

    .prologue
    .line 8146
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 8147
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    .line 8148
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    .line 8150
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 8059
    return-void
.end method


# virtual methods
.method public addAllResponseMessage(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 8213
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8214
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 8216
    return-object p0
.end method

.method public addResponseMessage(ILcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8206
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8207
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8209
    return-object p0
.end method

.method public addResponseMessage(ILcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8189
    if-nez p2, :cond_0

    .line 8190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8192
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8193
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8195
    return-object p0
.end method

.method public addResponseMessage(Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 8199
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8200
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8202
    return-object p0
.end method

.method public addResponseMessage(Lcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8179
    if-nez p1, :cond_0

    .line 8180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8182
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8183
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8185
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 2

    .prologue
    .line 8080
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v0

    .line 8081
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8082
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8084
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 3

    .prologue
    .line 8088
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 8089
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    .line 8090
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 8091
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    .line 8092
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    .line 8094
    :cond_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->access$9402(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;Ljava/util/List;)Ljava/util/List;

    .line 8095
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1

    .prologue
    .line 8065
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 8066
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    .line 8067
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    .line 8068
    return-object p0
.end method

.method public clearResponseMessage()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1

    .prologue
    .line 8219
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    .line 8220
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    .line 8222
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 2

    .prologue
    .line 8072
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8049
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    .locals 1

    .prologue
    .line 8076
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getResponseMessage(I)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .locals 1
    .parameter

    .prologue
    .line 8159
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    return-object p0
.end method

.method public getResponseMessageCount()I
    .locals 1

    .prologue
    .line 8156
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8153
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 8114
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->getResponseMessageCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8115
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->getResponseMessage(I)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 8120
    :goto_1
    return v0

    .line 8114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8120
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8049
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8049
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8049
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8127
    const/4 v1, 0x0

    .line 8129
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8134
    if-eqz v0, :cond_0

    .line 8135
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    .line 8138
    :cond_0
    return-object p0

    .line 8130
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 8131
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8132
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8134
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 8135
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;

    :cond_1
    throw v0

    .line 8134
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 8099
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 8110
    :goto_0
    return-object v0

    .line 8100
    :cond_0
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->access$9400(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8101
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8102
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->access$9400(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    .line 8103
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->bitField0_:I

    :cond_1
    :goto_1
    move-object v0, p0

    .line 8110
    goto :goto_0

    .line 8105
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8106
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;->access$9400(Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeResponseMessage(I)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 8225
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8226
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8228
    return-object p0
.end method

.method public setResponseMessage(ILcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 8173
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8174
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8176
    return-object p0
.end method

.method public setResponseMessage(ILcom/google/protos/speech/service/SpeechService$ResponseMessage;)Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8163
    if-nez p2, :cond_0

    .line 8164
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8166
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->ensureResponseMessageIsMutable()V

    .line 8167
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiResponseMessage$Builder;->responseMessage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8169
    return-object p0
.end method
