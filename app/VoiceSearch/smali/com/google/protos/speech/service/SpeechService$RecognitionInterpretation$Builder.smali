.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private slot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3284
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3285
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->maybeForceBuilderInitialization()V

    .line 3286
    return-void
.end method

.method static synthetic access$3400()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3291
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSlotIsMutable()V
    .locals 2

    .prologue
    .line 3376
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3377
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3378
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    .line 3380
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3289
    return-void
.end method


# virtual methods
.method public addAllSlot(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;"
        }
    .end annotation

    .prologue
    .line 3443
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3444
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3446
    return-object p0
.end method

.method public addSlot(ILcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3436
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3437
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3439
    return-object p0
.end method

.method public addSlot(ILcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3419
    if-nez p2, :cond_0

    .line 3420
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3422
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3423
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3425
    return-object p0
.end method

.method public addSlot(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 2
    .parameter

    .prologue
    .line 3429
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3430
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3432
    return-object p0
.end method

.method public addSlot(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3409
    if-nez p1, :cond_0

    .line 3410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3412
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3413
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3415
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 2

    .prologue
    .line 3310
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    .line 3311
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3312
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3314
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 3

    .prologue
    .line 3318
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 3319
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    .line 3320
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3321
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3322
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    .line 3324
    :cond_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->access$3602(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;Ljava/util/List;)Ljava/util/List;

    .line 3325
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3295
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3297
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    .line 3298
    return-object p0
.end method

.method public clearSlot()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1

    .prologue
    .line 3449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3450
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    .line 3452
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 2

    .prologue
    .line 3302
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

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
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3279
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 1

    .prologue
    .line 3306
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    return-object v0
.end method

.method public getSlot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public getSlotCount()I
    .locals 1

    .prologue
    .line 3386
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3383
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 3344
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->getSlotCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3345
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->getSlot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 3350
    :goto_1
    return v0

    .line 3344
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3350
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
    .line 3279
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3279
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

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
    .line 3279
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3357
    const/4 v1, 0x0

    .line 3359
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3364
    if-eqz v0, :cond_0

    .line 3365
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    .line 3368
    :cond_0
    return-object p0

    .line 3360
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3361
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3362
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3364
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 3365
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;

    :cond_1
    throw v0

    .line 3364
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 2
    .parameter

    .prologue
    .line 3329
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3340
    :goto_0
    return-object v0

    .line 3330
    :cond_0
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->access$3600(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3331
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3332
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->access$3600(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    .line 3333
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->bitField0_:I

    :cond_1
    :goto_1
    move-object v0, p0

    .line 3340
    goto :goto_0

    .line 3335
    :cond_2
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3336
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->access$3600(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeSlot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3455
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3456
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3458
    return-object p0
.end method

.method public setSlot(ILcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3403
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3404
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3406
    return-object p0
.end method

.method public setSlot(ILcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3393
    if-nez p2, :cond_0

    .line 3394
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3396
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->ensureSlotIsMutable()V

    .line 3397
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->slot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3399
    return-object p0
.end method
