.class public final Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$GaiaResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$GaiaResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$GaiaResult;",
        "Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$GaiaResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

.field private errorMessage_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16484
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16576
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16600
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16485
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->maybeForceBuilderInitialization()V

    .line 16486
    return-void
.end method

.method static synthetic access$19600()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1

    .prologue
    .line 16479
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1

    .prologue
    .line 16491
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 16489
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->build()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 2

    .prologue
    .line 16512
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    .line 16513
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16514
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 16516
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 5

    .prologue
    .line 16520
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 16521
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16522
    const/4 v2, 0x0

    .line 16523
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16524
    or-int/lit8 v2, v2, 0x1

    .line 16526
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->access$19802(Lcom/google/protos/speech/service/SpeechService$GaiaResult;Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;)Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16527
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 16528
    or-int/lit8 v1, v2, 0x2

    .line 16530
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->access$19902(Lcom/google/protos/speech/service/SpeechService$GaiaResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16531
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->access$20002(Lcom/google/protos/speech/service/SpeechService$GaiaResult;I)I

    .line 16532
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1

    .prologue
    .line 16495
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16496
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16497
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16498
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16499
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16500
    return-object p0
.end method

.method public clearCode()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1

    .prologue
    .line 16593
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16594
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;->AUTHENTICATION_OK:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16596
    return-object p0
.end method

.method public clearErrorMessage()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1

    .prologue
    .line 16636
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16637
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16639
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 2

    .prologue
    .line 16504
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

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
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;
    .locals 1

    .prologue
    .line 16581
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16479
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    .locals 1

    .prologue
    .line 16508
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 16605
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16606
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 16607
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 16608
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16611
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 16616
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16617
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16618
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16620
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16623
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasCode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 16578
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasErrorMessage()Z
    .locals 2

    .prologue
    .line 16602
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 16549
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->hasCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16551
    const/4 v0, 0x0

    .line 16553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 16479
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16479
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

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
    .line 16479
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16560
    const/4 v1, 0x0

    .line 16562
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16567
    if-eqz v0, :cond_0

    .line 16568
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    .line 16571
    :cond_0
    return-object p0

    .line 16563
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 16564
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$GaiaResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16565
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16567
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 16568
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    :cond_1
    throw v0

    .line 16567
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16536
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$GaiaResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 16545
    :goto_0
    return-object v0

    .line 16537
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16538
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->getCode()Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->setCode(Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;

    .line 16540
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16541
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16542
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$GaiaResult;->access$19900(Lcom/google/protos/speech/service/SpeechService$GaiaResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    :cond_2
    move-object v0, p0

    .line 16545
    goto :goto_0
.end method

.method public setCode(Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16584
    if-nez p1, :cond_0

    .line 16585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16587
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16588
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->code_:Lcom/google/protos/speech/service/SpeechService$GaiaResultCode;

    .line 16590
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16627
    if-nez p1, :cond_0

    .line 16628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16630
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16631
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16633
    return-object p0
.end method

.method public setErrorMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16643
    if-nez p1, :cond_0

    .line 16644
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16646
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->bitField0_:I

    .line 16647
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$GaiaResult$Builder;->errorMessage_:Ljava/lang/Object;

    .line 16649
    return-object p0
.end method
