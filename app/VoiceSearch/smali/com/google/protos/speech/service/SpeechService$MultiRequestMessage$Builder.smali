.class public final Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MultiRequestMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;",
        "Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$MultiRequestMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestMessage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 6392
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6481
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    .line 6393
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->maybeForceBuilderInitialization()V

    .line 6394
    return-void
.end method

.method static synthetic access$7200()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1

    .prologue
    .line 6387
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1

    .prologue
    .line 6399
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRequestMessageIsMutable()V
    .locals 2

    .prologue
    .line 6484
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6485
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    .line 6486
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    .line 6488
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6397
    return-void
.end method


# virtual methods
.method public addAllRequestMessage(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 6551
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6552
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6554
    return-object p0
.end method

.method public addRequestMessage(ILcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6544
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6545
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6547
    return-object p0
.end method

.method public addRequestMessage(ILcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6527
    if-nez p2, :cond_0

    .line 6528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6530
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6531
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6533
    return-object p0
.end method

.method public addRequestMessage(Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 6537
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6538
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6540
    return-object p0
.end method

.method public addRequestMessage(Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6517
    if-nez p1, :cond_0

    .line 6518
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6520
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6521
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6523
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 2

    .prologue
    .line 6418
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v0

    .line 6419
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6420
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6422
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 3

    .prologue
    .line 6426
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 6427
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    .line 6428
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 6429
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    .line 6430
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    .line 6432
    :cond_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->access$7402(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;Ljava/util/List;)Ljava/util/List;

    .line 6433
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1

    .prologue
    .line 6403
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 6404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    .line 6405
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    .line 6406
    return-object p0
.end method

.method public clearRequestMessage()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1

    .prologue
    .line 6557
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    .line 6558
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    .line 6560
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 2

    .prologue
    .line 6410
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

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
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6387
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    .locals 1

    .prologue
    .line 6414
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMessage(I)Lcom/google/protos/speech/service/SpeechService$RequestMessage;
    .locals 1
    .parameter

    .prologue
    .line 6497
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    return-object p0
.end method

.method public getRequestMessageCount()I
    .locals 1

    .prologue
    .line 6494
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6491
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 6452
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->getRequestMessageCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6453
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->getRequestMessage(I)Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RequestMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 6458
    :goto_1
    return v0

    .line 6452
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6458
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
    .line 6387
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6387
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

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
    .line 6387
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6465
    const/4 v1, 0x0

    .line 6467
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6472
    if-eqz v0, :cond_0

    .line 6473
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    .line 6476
    :cond_0
    return-object p0

    .line 6468
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6469
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6470
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6472
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 6473
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;

    :cond_1
    throw v0

    .line 6472
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 2
    .parameter

    .prologue
    .line 6437
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 6448
    :goto_0
    return-object v0

    .line 6438
    :cond_0
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->access$7400(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6439
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6440
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->access$7400(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    .line 6441
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->bitField0_:I

    :cond_1
    :goto_1
    move-object v0, p0

    .line 6448
    goto :goto_0

    .line 6443
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6444
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;->access$7400(Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeRequestMessage(I)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1
    .parameter

    .prologue
    .line 6563
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6564
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6566
    return-object p0
.end method

.method public setRequestMessage(ILcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6511
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6512
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RequestMessage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RequestMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6514
    return-object p0
.end method

.method public setRequestMessage(ILcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 6501
    if-nez p2, :cond_0

    .line 6502
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6504
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->ensureRequestMessageIsMutable()V

    .line 6505
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MultiRequestMessage$Builder;->requestMessage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6507
    return-object p0
.end method
