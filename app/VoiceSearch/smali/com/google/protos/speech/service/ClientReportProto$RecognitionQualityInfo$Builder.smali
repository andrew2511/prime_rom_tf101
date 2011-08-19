.class public final Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;",
        "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private correctIndex_:I

.field private correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

.field private correctResult_:Ljava/lang/Object;

.field private noneCorrect_:Z

.field private selectedAlternateSpans_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2232
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2397
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2450
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2233
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->maybeForceBuilderInitialization()V

    .line 2234
    return-void
.end method

.method static synthetic access$2600()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2239
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSelectedAlternateSpansIsMutable()V
    .locals 2

    .prologue
    .line 2477
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2478
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2479
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2481
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2237
    return-void
.end method


# virtual methods
.method public addAllSelectedAlternateSpans(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;)",
            "Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 2544
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2545
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2547
    return-object p0
.end method

.method public addSelectedAlternateSpans(ILcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2537
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2538
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2540
    return-object p0
.end method

.method public addSelectedAlternateSpans(ILcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2520
    if-nez p2, :cond_0

    .line 2521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2523
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2524
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2526
    return-object p0
.end method

.method public addSelectedAlternateSpans(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2530
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2531
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2533
    return-object p0
.end method

.method public addSelectedAlternateSpans(Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2510
    if-nez p1, :cond_0

    .line 2511
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2513
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2514
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2516
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 2

    .prologue
    .line 2266
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    .line 2267
    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2268
    invoke-static {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2270
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 5

    .prologue
    .line 2274
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/ClientReportProto$1;)V

    .line 2275
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2276
    const/4 v2, 0x0

    .line 2277
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2278
    or-int/lit8 v2, v2, 0x1

    .line 2280
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctIndex_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$2802(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;I)I

    .line 2281
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2282
    or-int/lit8 v2, v2, 0x2

    .line 2284
    :cond_1
    iget-boolean v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->noneCorrect_:Z

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$2902(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Z)Z

    .line 2285
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2286
    or-int/lit8 v2, v2, 0x4

    .line 2288
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3002(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    .line 2290
    or-int/lit8 v1, v2, 0x8

    .line 2292
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3102(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2293
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 2294
    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2295
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2297
    :cond_3
    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3202(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;Ljava/util/List;)Ljava/util/List;

    .line 2298
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3302(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;I)I

    .line 2299
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clear()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clear()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2243
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2244
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctIndex_:I

    .line 2245
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2246
    iput-boolean v1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->noneCorrect_:Z

    .line 2247
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2248
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2249
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2250
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2251
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2253
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2254
    return-object p0
.end method

.method public clearCorrectIndex()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2369
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2370
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctIndex_:I

    .line 2372
    return-object p0
.end method

.method public clearCorrectResult()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2433
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2434
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getCorrectResult()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2436
    return-object p0
.end method

.method public clearCorrectResultStatus()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2467
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2468
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;->OK:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2470
    return-object p0
.end method

.method public clearNoneCorrect()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2390
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->noneCorrect_:Z

    .line 2393
    return-object p0
.end method

.method public clearSelectedAlternateSpans()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1

    .prologue
    .line 2550
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2551
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2553
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 2

    .prologue
    .line 2258
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

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
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->clone()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCorrectIndex()I
    .locals 1

    .prologue
    .line 2360
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctIndex_:I

    return v0
.end method

.method public getCorrectResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2403
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2404
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2405
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2408
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getCorrectResultBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2414
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2415
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2417
    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2420
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getCorrectResultStatus()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .locals 1

    .prologue
    .line 2262
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNoneCorrect()Z
    .locals 1

    .prologue
    .line 2381
    iget-boolean v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->noneCorrect_:Z

    return v0
.end method

.method public getSelectedAlternateSpans(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
    .locals 1
    .parameter

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    return-object p0
.end method

.method public getSelectedAlternateSpansCount()I
    .locals 1

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedAlternateSpansList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2484
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCorrectIndex()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2357
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCorrectResult()Z
    .locals 2

    .prologue
    .line 2399
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

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

.method public hasCorrectResultStatus()Z
    .locals 2

    .prologue
    .line 2452
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

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

.method public hasNoneCorrect()Z
    .locals 2

    .prologue
    .line 2378
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

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
    .line 2332
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
    .line 2227
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2227
    check-cast p1, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

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
    .line 2227
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2339
    const/4 v1, 0x0

    .line 2341
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    if-eqz v0, :cond_0

    .line 2347
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 2350
    :cond_0
    return-object p0

    .line 2342
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2343
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2344
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2346
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2347
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    :cond_1
    throw v0

    .line 2346
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2303
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2328
    :goto_0
    return-object v0

    .line 2304
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->hasCorrectIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2305
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getCorrectIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setCorrectIndex(I)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 2307
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->hasNoneCorrect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2308
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getNoneCorrect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setNoneCorrect(Z)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 2310
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->hasCorrectResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2311
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2312
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3000(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2315
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->hasCorrectResultStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2316
    invoke-virtual {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getCorrectResultStatus()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->setCorrectResultStatus(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 2318
    :cond_4
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3200(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2319
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2320
    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3200(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    .line 2321
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    :cond_5
    :goto_1
    move-object v0, p0

    .line 2328
    goto :goto_0

    .line 2323
    :cond_6
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2324
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->access$3200(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeSelectedAlternateSpans(I)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2556
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2557
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2559
    return-object p0
.end method

.method public setCorrectIndex(I)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2363
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2364
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctIndex_:I

    .line 2366
    return-object p0
.end method

.method public setCorrectResult(Ljava/lang/String;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2424
    if-nez p1, :cond_0

    .line 2425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2427
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2428
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2430
    return-object p0
.end method

.method public setCorrectResultBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2440
    if-nez p1, :cond_0

    .line 2441
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2443
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2444
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResult_:Ljava/lang/Object;

    .line 2446
    return-object p0
.end method

.method public setCorrectResultStatus(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2458
    if-nez p1, :cond_0

    .line 2459
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2461
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2462
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->correctResultStatus_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;

    .line 2464
    return-object p0
.end method

.method public setNoneCorrect(Z)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2384
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->bitField0_:I

    .line 2385
    iput-boolean p1, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->noneCorrect_:Z

    .line 2387
    return-object p0
.end method

.method public setSelectedAlternateSpans(ILcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2504
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2505
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan$Builder;->build()Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2507
    return-object p0
.end method

.method public setSelectedAlternateSpans(ILcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2494
    if-nez p2, :cond_0

    .line 2495
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2497
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->ensureSelectedAlternateSpansIsMutable()V

    .line 2498
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->selectedAlternateSpans_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2500
    return-object p0
.end method
