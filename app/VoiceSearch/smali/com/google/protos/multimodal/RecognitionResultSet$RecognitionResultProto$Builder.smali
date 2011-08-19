.class public final Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;",
        ">;",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:I

.field private grammarContext_:Ljava/lang/Object;

.field private nlconfidence_:I

.field private result_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 555
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 345
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->maybeForceBuilderInitialization()V

    .line 346
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 349
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-static {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 380
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 5

    .prologue
    .line 384
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V

    .line 385
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 386
    const/4 v2, 0x0

    .line 387
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 388
    or-int/lit8 v2, v2, 0x1

    .line 390
    :cond_0
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->access$302(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 392
    or-int/lit8 v2, v2, 0x2

    .line 394
    :cond_1
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->confidence_:I

    invoke-static {v0, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->access$402(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I

    .line 395
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 396
    or-int/lit8 v2, v2, 0x4

    .line 398
    :cond_2
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->nlconfidence_:I

    invoke-static {v0, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->access$502(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I

    .line 399
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 400
    or-int/lit8 v1, v2, 0x8

    .line 402
    :goto_0
    iget-object v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->access$602(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-static {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->access$702(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;I)I

    .line 404
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->clear()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->clear()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 356
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 357
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 358
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->confidence_:I

    .line 359
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 360
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->nlconfidence_:I

    .line 361
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 362
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 363
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 364
    return-object p0
.end method

.method public clearConfidence()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->confidence_:I

    .line 530
    return-object p0
.end method

.method public clearGrammarContext()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 592
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getGrammarContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 594
    return-object p0
.end method

.method public clearNlconfidence()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 549
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->nlconfidence_:I

    .line 551
    return-object p0
.end method

.method public clearResult()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 497
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getResult()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 499
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 2

    .prologue
    .line 368
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

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
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->confidence_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    return-object v0
.end method

.method public getGrammarContext()Ljava/lang/String;
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 561
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 562
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 563
    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 566
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGrammarContextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 572
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 573
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 575
    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 578
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getNlconfidence()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->nlconfidence_:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 466
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 467
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 468
    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 471
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getResultBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 477
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 478
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 480
    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 483
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

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

.method public hasGrammarContext()Z
    .locals 2

    .prologue
    .line 557
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNlconfidence()Z
    .locals 2

    .prologue
    .line 536
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 462
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 429
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->hasResult()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 437
    :goto_0
    return v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->hasConfidence()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 435
    goto :goto_0

    .line 437
    :cond_1
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
    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 339
    check-cast p1, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    invoke-virtual {p0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

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
    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 446
    :try_start_0
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    .line 455
    :cond_0
    return-object p0

    .line 447
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 448
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 449
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    :cond_1
    throw v0

    .line 451
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 408
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 425
    :goto_0
    return-object v0

    .line 409
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 411
    invoke-static {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->access$300(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 414
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getConfidence()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->setConfidence(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    .line 417
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->hasNlconfidence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->getNlconfidence()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->setNlconfidence(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;

    .line 420
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->hasGrammarContext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 421
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 422
    invoke-static {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->access$600(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    :cond_4
    move-object v0, p0

    .line 425
    goto :goto_0
.end method

.method public setConfidence(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 521
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 522
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->confidence_:I

    .line 524
    return-object p0
.end method

.method public setGrammarContext(Ljava/lang/String;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 582
    if-nez p1, :cond_0

    .line 583
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 585
    :cond_0
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 586
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 588
    return-object p0
.end method

.method public setGrammarContextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 598
    if-nez p1, :cond_0

    .line 599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 601
    :cond_0
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 602
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->grammarContext_:Ljava/lang/Object;

    .line 604
    return-object p0
.end method

.method public setNlconfidence(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 542
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 543
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->nlconfidence_:I

    .line 545
    return-object p0
.end method

.method public setResult(Ljava/lang/String;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 490
    :cond_0
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 491
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 493
    return-object p0
.end method

.method public setResultBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 506
    :cond_0
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->bitField0_:I

    .line 507
    iput-object p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->result_:Ljava/lang/Object;

    .line 509
    return-object p0
.end method
