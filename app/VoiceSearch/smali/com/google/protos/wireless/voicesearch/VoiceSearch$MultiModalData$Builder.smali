.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

.field private highConfidence_:Z

.field private priority_:I

.field private responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private serverHttpUrl_:Ljava/lang/Object;

.field private serverProtoUrl_:Ljava/lang/Object;

.field private skipWebsearchAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end field

.field private skipWebsearchAlways_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4298
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4459
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 4483
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4528
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    .line 4552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4679
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4299
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->maybeForceBuilderInitialization()V

    .line 4300
    return-void
.end method

.method static synthetic access$4400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4305
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSkipWebsearchActionIsMutable()V
    .locals 2

    .prologue
    .line 4682
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 4683
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4684
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4686
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4303
    return-void
.end method


# virtual methods
.method public addAllSkipWebsearchAction(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;"
        }
    .end annotation

    .prologue
    .line 4717
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->ensureSkipWebsearchActionIsMutable()V

    .line 4718
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4720
    return-object p0
.end method

.method public addSkipWebsearchAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4707
    if-nez p1, :cond_0

    .line 4708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4710
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->ensureSkipWebsearchActionIsMutable()V

    .line 4711
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4713
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    .locals 2

    .prologue
    .line 4340
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    .line 4341
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4342
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4344
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    .locals 5

    .prologue
    .line 4348
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 4349
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4350
    const/4 v2, 0x0

    .line 4351
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4352
    or-int/lit8 v2, v2, 0x1

    .line 4354
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$4602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4355
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4356
    or-int/lit8 v2, v2, 0x2

    .line 4358
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$4702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4359
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4360
    or-int/lit8 v2, v2, 0x4

    .line 4362
    :cond_2
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->priority_:I

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$4802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;I)I

    .line 4363
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4364
    or-int/lit8 v2, v2, 0x8

    .line 4366
    :cond_3
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$4902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4367
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4368
    or-int/lit8 v2, v2, 0x10

    .line 4370
    :cond_4
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4371
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 4372
    or-int/lit8 v2, v2, 0x20

    .line 4374
    :cond_5
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4375
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 4376
    or-int/lit8 v2, v2, 0x40

    .line 4378
    :cond_6
    iget-boolean v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->highConfidence_:Z

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Z)Z

    .line 4379
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 4380
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4381
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4383
    :cond_7
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Ljava/util/List;)Ljava/util/List;

    .line 4384
    and-int/lit16 v1, v1, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_8

    .line 4385
    or-int/lit16 v1, v2, 0x80

    .line 4387
    :goto_0
    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAlways_:Z

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;Z)Z

    .line 4388
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;I)I

    .line 4389
    return-object v0

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4309
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4310
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 4311
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4312
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4313
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4314
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->priority_:I

    .line 4315
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4316
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    .line 4317
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4318
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4319
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4321
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4322
    iput-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->highConfidence_:Z

    .line 4323
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4325
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4326
    iput-boolean v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAlways_:Z

    .line 4327
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4328
    return-object p0
.end method

.method public clearData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4476
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4477
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 4479
    return-object p0
.end method

.method public clearGoogleSearchRequestProtoData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4545
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4546
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getGoogleSearchRequestProtoData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    .line 4548
    return-object p0
.end method

.method public clearHighConfidence()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4672
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->highConfidence_:Z

    .line 4675
    return-object p0
.end method

.method public clearPriority()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4521
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4522
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->priority_:I

    .line 4524
    return-object p0
.end method

.method public clearResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4500
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4501
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4503
    return-object p0
.end method

.method public clearServerHttpUrl()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4588
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4589
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getServerHttpUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4591
    return-object p0
.end method

.method public clearServerProtoUrl()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4641
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4642
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getServerProtoUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4644
    return-object p0
.end method

.method public clearSkipWebsearchAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4723
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4724
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4726
    return-object p0
.end method

.method public clearSkipWebsearchAlways()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1

    .prologue
    .line 4744
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAlways_:Z

    .line 4747
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 2

    .prologue
    .line 4332
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

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
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4464
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4293
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    .locals 1

    .prologue
    .line 4336
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleSearchRequestProtoData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4533
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHighConfidence()Z
    .locals 1

    .prologue
    .line 4663
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->highConfidence_:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 4512
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->priority_:I

    return v0
.end method

.method public getResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .locals 1

    .prologue
    .line 4488
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getServerHttpUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4558
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4559
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4560
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4563
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4568
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4569
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4570
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4572
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4575
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getServerProtoUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4610
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4611
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4612
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4613
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4616
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4621
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4622
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4623
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4625
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4628
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSkipWebsearchAction(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1
    .parameter

    .prologue
    .line 4694
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object p0
.end method

.method public getSkipWebsearchActionCount()I
    .locals 1

    .prologue
    .line 4691
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSkipWebsearchActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4688
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSkipWebsearchAlways()Z
    .locals 1

    .prologue
    .line 4735
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAlways_:Z

    return v0
.end method

.method public hasData()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4461
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGoogleSearchRequestProtoData()Z
    .locals 2

    .prologue
    .line 4530
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

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

.method public hasHighConfidence()Z
    .locals 2

    .prologue
    .line 4660
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriority()Z
    .locals 2

    .prologue
    .line 4509
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

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

.method public hasResponseContentEncoding()Z
    .locals 2

    .prologue
    .line 4485
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

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

.method public hasServerHttpUrl()Z
    .locals 2

    .prologue
    .line 4554
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasServerProtoUrl()Z
    .locals 2

    .prologue
    .line 4607
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSkipWebsearchAlways()Z
    .locals 2

    .prologue
    .line 4732
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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
    .line 4436
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
    .line 4293
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4293
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

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
    .line 4293
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4443
    const/4 v1, 0x0

    .line 4445
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4450
    if-eqz v0, :cond_0

    .line 4451
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4454
    :cond_0
    return-object p0

    .line 4446
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4447
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4448
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4450
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 4451
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    :cond_1
    throw v0

    .line 4450
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 2
    .parameter

    .prologue
    .line 4393
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 4432
    :goto_0
    return-object v0

    .line 4394
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4395
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4397
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasResponseContentEncoding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4398
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setResponseContentEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4400
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4401
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setPriority(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4403
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasGoogleSearchRequestProtoData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4404
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getGoogleSearchRequestProtoData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setGoogleSearchRequestProtoData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4406
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasServerHttpUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4407
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4408
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4411
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasServerProtoUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4412
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4413
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4416
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasHighConfidence()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4417
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getHighConfidence()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setHighConfidence(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    .line 4419
    :cond_7
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4420
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4421
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    .line 4422
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4429
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->hasSkipWebsearchAlways()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4430
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->getSkipWebsearchAlways()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->setSkipWebsearchAlways(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;

    :cond_9
    move-object v0, p0

    .line 4432
    goto/16 :goto_0

    .line 4424
    :cond_a
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->ensureSkipWebsearchActionIsMutable()V

    .line 4425
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;->access$5300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4467
    if-nez p1, :cond_0

    .line 4468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4470
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4471
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 4473
    return-object p0
.end method

.method public setGoogleSearchRequestProtoData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4536
    if-nez p1, :cond_0

    .line 4537
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4539
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4540
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->googleSearchRequestProtoData_:Lcom/google/protobuf/ByteString;

    .line 4542
    return-object p0
.end method

.method public setHighConfidence(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4666
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4667
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->highConfidence_:Z

    .line 4669
    return-object p0
.end method

.method public setPriority(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4515
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4516
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->priority_:I

    .line 4518
    return-object p0
.end method

.method public setResponseContentEncoding(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4491
    if-nez p1, :cond_0

    .line 4492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4494
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4495
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 4497
    return-object p0
.end method

.method public setServerHttpUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4579
    if-nez p1, :cond_0

    .line 4580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4582
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4583
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4585
    return-object p0
.end method

.method public setServerHttpUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4595
    if-nez p1, :cond_0

    .line 4596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4598
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4599
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverHttpUrl_:Ljava/lang/Object;

    .line 4601
    return-object p0
.end method

.method public setServerProtoUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4632
    if-nez p1, :cond_0

    .line 4633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4635
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4636
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4638
    return-object p0
.end method

.method public setServerProtoUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4648
    if-nez p1, :cond_0

    .line 4649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4651
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4652
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->serverProtoUrl_:Ljava/lang/Object;

    .line 4654
    return-object p0
.end method

.method public setSkipWebsearchAction(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4698
    if-nez p2, :cond_0

    .line 4699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4701
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->ensureSkipWebsearchActionIsMutable()V

    .line 4702
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4704
    return-object p0
.end method

.method public setSkipWebsearchAlways(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4738
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->bitField0_:I

    .line 4739
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$Builder;->skipWebsearchAlways_:Z

    .line 4741
    return-object p0
.end method
