.class public final Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$AlternateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$AlternateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private text_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2321
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2417
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2322
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->maybeForceBuilderInitialization()V

    .line 2323
    return-void
.end method

.method static synthetic access$2900()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1

    .prologue
    .line 2316
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1

    .prologue
    .line 2328
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2326
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 2

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    .line 2350
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2351
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2353
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 5

    .prologue
    .line 2357
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 2358
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2359
    const/4 v2, 0x0

    .line 2360
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2361
    or-int/lit8 v2, v2, 0x1

    .line 2363
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->access$3102(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 2365
    or-int/lit8 v1, v2, 0x2

    .line 2367
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->confidence_:F

    invoke-static {v0, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->access$3202(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;F)F

    .line 2368
    invoke-static {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->access$3302(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;I)I

    .line 2369
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1

    .prologue
    .line 2332
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2333
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2334
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2335
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->confidence_:F

    .line 2336
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2337
    return-object p0
.end method

.method public clearConfidence()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1

    .prologue
    .line 2484
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2485
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->confidence_:F

    .line 2487
    return-object p0
.end method

.method public clearText()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1

    .prologue
    .line 2453
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2454
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2456
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 2

    .prologue
    .line 2341
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

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
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 2475
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1

    .prologue
    .line 2345
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2423
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2424
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2425
    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2428
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2434
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2435
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2437
    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2440
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 2472
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

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

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2419
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

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

    .line 2386
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2394
    :goto_0
    return v0

    .line 2390
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->hasConfidence()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2392
    goto :goto_0

    .line 2394
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
    .line 2316
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2316
    check-cast p1, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

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
    .line 2316
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2401
    const/4 v1, 0x0

    .line 2403
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2408
    if-eqz v0, :cond_0

    .line 2409
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    .line 2412
    :cond_0
    return-object p0

    .line 2404
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2405
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2406
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2408
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2409
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    :cond_1
    throw v0

    .line 2408
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2373
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2382
    :goto_0
    return-object v0

    .line 2374
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2375
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2376
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->access$3100(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2379
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2380
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->setConfidence(F)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;

    :cond_2
    move-object v0, p0

    .line 2382
    goto :goto_0
.end method

.method public setConfidence(F)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2478
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2479
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->confidence_:F

    .line 2481
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2444
    if-nez p1, :cond_0

    .line 2445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2447
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2448
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2450
    return-object p0
.end method

.method public setTextBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2460
    if-nez p1, :cond_0

    .line 2461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2463
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->bitField0_:I

    .line 2464
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->text_:Ljava/lang/Object;

    .line 2466
    return-object p0
.end method
