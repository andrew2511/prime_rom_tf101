.class public final Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$MessageHeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$MessageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$MessageHeader;",
        "Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$MessageHeaderOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationId_:Ljava/lang/Object;

.field private bitField0_:I

.field private requestId_:I

.field private sessionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5411
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5510
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5584
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5412
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->maybeForceBuilderInitialization()V

    .line 5413
    return-void
.end method

.method static synthetic access$5800()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5418
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5416
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 2

    .prologue
    .line 5441
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    .line 5442
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5443
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5445
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 5

    .prologue
    .line 5449
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 5450
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5451
    const/4 v2, 0x0

    .line 5452
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5453
    or-int/lit8 v2, v2, 0x1

    .line 5455
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6002(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5456
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5457
    or-int/lit8 v2, v2, 0x2

    .line 5459
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->requestId_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6102(Lcom/google/protos/speech/service/SpeechService$MessageHeader;I)I

    .line 5460
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 5461
    or-int/lit8 v1, v2, 0x4

    .line 5463
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6202(Lcom/google/protos/speech/service/SpeechService$MessageHeader;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5464
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6302(Lcom/google/protos/speech/service/SpeechService$MessageHeader;I)I

    .line 5465
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5422
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5424
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5425
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->requestId_:I

    .line 5426
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5427
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5428
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5429
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5620
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5621
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5623
    return-object p0
.end method

.method public clearRequestId()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5577
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5578
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->requestId_:I

    .line 5580
    return-object p0
.end method

.method public clearSessionId()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1

    .prologue
    .line 5546
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5547
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5549
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 2

    .prologue
    .line 5433
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->create()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

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
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5589
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5590
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5591
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5592
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5595
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5600
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5601
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5602
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5604
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5607
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5406
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    .locals 1

    .prologue
    .line 5437
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 5568
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->requestId_:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5515
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5516
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5517
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5518
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5521
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 5526
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5527
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5528
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5530
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5533
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasApplicationId()Z
    .locals 2

    .prologue
    .line 5586
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRequestId()Z
    .locals 2

    .prologue
    .line 5565
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

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

.method public hasSessionId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5512
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5487
    const/4 v0, 0x1

    return v0
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
    .line 5406
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5406
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

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
    .line 5406
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5494
    const/4 v1, 0x0

    .line 5496
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5501
    if-eqz v0, :cond_0

    .line 5502
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 5505
    :cond_0
    return-object p0

    .line 5497
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 5498
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$MessageHeader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5499
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5501
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 5502
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    :cond_1
    throw v0

    .line 5501
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5469
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$MessageHeader;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 5483
    :goto_0
    return-object v0

    .line 5470
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5471
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5472
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6000(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5475
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->hasRequestId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5476
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->getRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->setRequestId(I)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;

    .line 5478
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->hasApplicationId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5479
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5480
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$MessageHeader;->access$6200(Lcom/google/protos/speech/service/SpeechService$MessageHeader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    :cond_3
    move-object v0, p0

    .line 5483
    goto :goto_0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5611
    if-nez p1, :cond_0

    .line 5612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5614
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5615
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5617
    return-object p0
.end method

.method public setApplicationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5627
    if-nez p1, :cond_0

    .line 5628
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5630
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5631
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->applicationId_:Ljava/lang/Object;

    .line 5633
    return-object p0
.end method

.method public setRequestId(I)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5571
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5572
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->requestId_:I

    .line 5574
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5537
    if-nez p1, :cond_0

    .line 5538
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5540
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5541
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5543
    return-object p0
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5553
    if-nez p1, :cond_0

    .line 5554
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5556
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->bitField0_:I

    .line 5557
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$MessageHeader$Builder;->sessionId_:Ljava/lang/Object;

    .line 5559
    return-object p0
.end method
