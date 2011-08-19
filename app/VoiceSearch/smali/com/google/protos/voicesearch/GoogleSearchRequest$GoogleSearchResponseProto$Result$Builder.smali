.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$ResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;",
        ">;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$ResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private pageHtml_:Ljava/lang/Object;

.field private query_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2307
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2412
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2465
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2518
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2308
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->maybeForceBuilderInitialization()V

    .line 2309
    return-void
.end method

.method static synthetic access$2100()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2302
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2314
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2312
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 2

    .prologue
    .line 2337
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    .line 2338
    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2339
    invoke-static {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2341
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 5

    .prologue
    .line 2345
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V

    .line 2346
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2347
    const/4 v2, 0x0

    .line 2348
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2349
    or-int/lit8 v2, v2, 0x1

    .line 2351
    :cond_0
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->access$2302(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2353
    or-int/lit8 v2, v2, 0x2

    .line 2355
    :cond_1
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->access$2402(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2356
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 2357
    or-int/lit8 v1, v2, 0x4

    .line 2359
    :goto_0
    iget-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->access$2502(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2360
    invoke-static {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->access$2602(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;I)I

    .line 2361
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2318
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2319
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2320
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2322
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2324
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2325
    return-object p0
.end method

.method public clearPageHtml()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2501
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2502
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getPageHtml()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2504
    return-object p0
.end method

.method public clearQuery()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2448
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2449
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2451
    return-object p0
.end method

.method public clearUrl()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1

    .prologue
    .line 2554
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2555
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2557
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 2

    .prologue
    .line 2329
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

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
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2302
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1

    .prologue
    .line 2333
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    return-object v0
.end method

.method public getPageHtml()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2471
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2472
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2473
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2476
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPageHtmlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2482
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2483
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2485
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2488
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2418
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2419
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2420
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2423
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2429
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2430
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2432
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2435
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2524
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2525
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2526
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2529
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2535
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2536
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2538
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2541
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasPageHtml()Z
    .locals 2

    .prologue
    .line 2467
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

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

.method public hasQuery()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2414
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 2

    .prologue
    .line 2520
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

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
    .line 2385
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->hasQuery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2387
    const/4 v0, 0x0

    .line 2389
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
    .line 2302
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2302
    check-cast p1, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    invoke-virtual {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

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
    .line 2302
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2396
    const/4 v1, 0x0

    .line 2398
    :try_start_0
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2403
    if-eqz v0, :cond_0

    .line 2404
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    .line 2407
    :cond_0
    return-object p0

    .line 2399
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2400
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2401
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2403
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2404
    invoke-virtual {p0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;

    :cond_1
    throw v0

    .line 2403
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2365
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2381
    :goto_0
    return-object v0

    .line 2366
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2367
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2368
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->access$2300(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2371
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->hasPageHtml()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2372
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2373
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->access$2400(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2376
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2377
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2378
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->access$2500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    :cond_3
    move-object v0, p0

    .line 2381
    goto :goto_0
.end method

.method public setPageHtml(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2492
    if-nez p1, :cond_0

    .line 2493
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2495
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2496
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2498
    return-object p0
.end method

.method public setPageHtmlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2508
    if-nez p1, :cond_0

    .line 2509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2511
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2512
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->pageHtml_:Ljava/lang/Object;

    .line 2514
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2439
    if-nez p1, :cond_0

    .line 2440
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2442
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2443
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2445
    return-object p0
.end method

.method public setQueryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2455
    if-nez p1, :cond_0

    .line 2456
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2458
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2459
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->query_:Ljava/lang/Object;

    .line 2461
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2545
    if-nez p1, :cond_0

    .line 2546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2548
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2549
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2551
    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2561
    if-nez p1, :cond_0

    .line 2562
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2564
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->bitField0_:I

    .line 2565
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->url_:Ljava/lang/Object;

    .line 2567
    return-object p0
.end method
