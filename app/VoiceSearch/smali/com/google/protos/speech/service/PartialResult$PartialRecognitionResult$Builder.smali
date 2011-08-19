.class public final Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PartialResult.java"

# interfaces
.implements Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;",
        "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResultOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private part_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 224
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->maybeForceBuilderInitialization()V

    .line 225
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->create()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePartIsMutable()V
    .locals 2

    .prologue
    .line 309
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 311
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    .line 313
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method


# virtual methods
.method public addAllPart(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;)",
            "Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 377
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 379
    return-object p0
.end method

.method public addPart(ILcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 370
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->build()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 372
    return-object p0
.end method

.method public addPart(ILcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 352
    if-nez p2, :cond_0

    .line 353
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 356
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 358
    return-object p0
.end method

.method public addPart(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 2
    .parameter

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 363
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->build()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-object p0
.end method

.method public addPart(Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 346
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->build()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 2

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-static {v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 253
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/PartialResult$1;)V

    .line 258
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    .line 259
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 260
    iget-object v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 261
    iget v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->access$302(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;Ljava/util/List;)Ljava/util/List;

    .line 264
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clear()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clear()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 236
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    .line 237
    return-object p0
.end method

.method public clearPart()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 383
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    .line 385
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 2

    .prologue
    .line 241
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->create()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

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
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getPart(I)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    return-object p0
.end method

.method public getPartCount()I
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPartList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 283
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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 218
    check-cast p1, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 292
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    .line 301
    :cond_0
    return-object p0

    .line 293
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 294
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 295
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;

    :cond_1
    throw v0

    .line 297
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 2
    .parameter

    .prologue
    .line 268
    invoke-static {}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 279
    :goto_0
    return-object v0

    .line 269
    :cond_0
    invoke-static {p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->access$300(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-static {p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->access$300(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    .line 272
    iget v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->bitField0_:I

    :cond_1
    :goto_1
    move-object v0, p0

    .line 279
    goto :goto_0

    .line 274
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 275
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;->access$300(Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removePart(I)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 389
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 391
    return-object p0
.end method

.method public setPart(ILcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 337
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart$Builder;->build()Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-object p0
.end method

.method public setPart(ILcom/google/protos/speech/service/PartialResult$RecognitionResultPart;)Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 326
    if-nez p2, :cond_0

    .line 327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->ensurePartIsMutable()V

    .line 330
    iget-object v0, p0, Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResult$Builder;->part_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 332
    return-object p0
.end method
