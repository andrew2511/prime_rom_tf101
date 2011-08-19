.class public final Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IntentApi.java"

# interfaces
.implements Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;",
        "Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;",
        ">;",
        "Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammarOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private grxmlGrammar_:Ljava/lang/Object;

.field private languageModel_:Ljava/lang/Object;

.field private maxNbest_:I

.field private recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 453
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 506
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->maxNbest_:I

    .line 527
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 570
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 346
    invoke-direct {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->maybeForceBuilderInitialization()V

    .line 347
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->create()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 352
    new-instance v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->build()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->buildPartial()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    invoke-static {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 381
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->buildPartial()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 5

    .prologue
    .line 385
    new-instance v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/apps/intentapi/IntentApi$1;)V

    .line 386
    iget v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 387
    const/4 v2, 0x0

    .line 388
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 389
    or-int/lit8 v2, v2, 0x1

    .line 391
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->access$302(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 393
    or-int/lit8 v2, v2, 0x2

    .line 395
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->maxNbest_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->access$402(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;I)I

    .line 396
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 397
    or-int/lit8 v2, v2, 0x4

    .line 399
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-static {v0, v3}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->access$502(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 400
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 401
    or-int/lit8 v1, v2, 0x8

    .line 403
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->access$602(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-static {v0, v1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->access$702(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;I)I

    .line 405
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->clear()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->clear()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 358
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 359
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->maxNbest_:I

    .line 360
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 361
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 362
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 363
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 364
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 365
    return-object p0
.end method

.method public clearGrxmlGrammar()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 607
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getGrxmlGrammar()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 609
    return-object p0
.end method

.method public clearLanguageModel()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 490
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getLanguageModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 492
    return-object p0
.end method

.method public clearMaxNbest()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 521
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->maxNbest_:I

    .line 523
    return-object p0
.end method

.method public clearRecognitionContext()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1

    .prologue
    .line 563
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 565
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 566
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->clone()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->clone()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->clone()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->create()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->buildPartial()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeFrom(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

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
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->clone()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getGrxmlGrammar()Ljava/lang/String;
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 576
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 577
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 578
    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 581
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGrxmlGrammarBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 587
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 588
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 590
    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 593
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 459
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 460
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 461
    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 464
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLanguageModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 470
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 471
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 473
    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 476
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMaxNbest()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->maxNbest_:I

    return v0
.end method

.method public getRecognitionContext()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method public hasGrxmlGrammar()Z
    .locals 2

    .prologue
    .line 572
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

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

.method public hasLanguageModel()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 455
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxNbest()Z
    .locals 2

    .prologue
    .line 508
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

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

.method public hasRecognitionContext()Z
    .locals 2

    .prologue
    .line 529
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 430
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
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 340
    check-cast p1, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeFrom(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

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
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 439
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeFrom(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 448
    :cond_0
    return-object p0

    .line 440
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 441
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 445
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeFrom(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    :cond_1
    throw v0

    .line 444
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 409
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 426
    :goto_0
    return-object v0

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->hasLanguageModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 412
    invoke-static {p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->access$300(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 415
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->hasMaxNbest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getMaxNbest()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->setMaxNbest(I)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 418
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->hasRecognitionContext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getRecognitionContext()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    .line 421
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->hasGrxmlGrammar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 423
    invoke-static {p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->access$600(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    :cond_4
    move-object v0, p0

    .line 426
    goto :goto_0
.end method

.method public mergeRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 2
    .parameter

    .prologue
    .line 551
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-static {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->newBuilder(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 559
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 560
    return-object p0

    .line 556
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    goto :goto_0
.end method

.method public setGrxmlGrammar(Ljava/lang/String;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 597
    if-nez p1, :cond_0

    .line 598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 600
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 601
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 603
    return-object p0
.end method

.method public setGrxmlGrammarBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 616
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 617
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->grxmlGrammar_:Ljava/lang/Object;

    .line 619
    return-object p0
.end method

.method public setLanguageModel(Ljava/lang/String;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 480
    if-nez p1, :cond_0

    .line 481
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 483
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 484
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 486
    return-object p0
.end method

.method public setLanguageModelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 496
    if-nez p1, :cond_0

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 499
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 500
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->languageModel_:Ljava/lang/Object;

    .line 502
    return-object p0
.end method

.method public setMaxNbest(I)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 514
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 515
    iput p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->maxNbest_:I

    .line 517
    return-object p0
.end method

.method public setRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 545
    invoke-virtual {p1}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->build()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 547
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 548
    return-object p0
.end method

.method public setRecognitionContext(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .locals 1
    .parameter

    .prologue
    .line 535
    if-nez p1, :cond_0

    .line 536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 538
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 540
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->bitField0_:I

    .line 541
    return-object p0
.end method
