.class public final Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private recognitionLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private synthesisVoice_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9371
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9372
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->maybeForceBuilderInitialization()V

    .line 9373
    return-void
.end method

.method static synthetic access$11000()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9378
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecognitionLanguageIsMutable()V
    .locals 2

    .prologue
    .line 9486
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 9487
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9488
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9490
    :cond_0
    return-void
.end method

.method private ensureSynthesisVoiceIsMutable()V
    .locals 2

    .prologue
    .line 9575
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 9576
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9577
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9579
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 9376
    return-void
.end method


# virtual methods
.method public addAllRecognitionLanguage(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 9553
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9554
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9556
    return-object p0
.end method

.method public addAllSynthesisVoice(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 9642
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9643
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9645
    return-object p0
.end method

.method public addRecognitionLanguage(ILcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9546
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9547
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9549
    return-object p0
.end method

.method public addRecognitionLanguage(ILcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9529
    if-nez p2, :cond_0

    .line 9530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9532
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9533
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9535
    return-object p0
.end method

.method public addRecognitionLanguage(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 9539
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9540
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9542
    return-object p0
.end method

.method public addRecognitionLanguage(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9519
    if-nez p1, :cond_0

    .line 9520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9522
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9523
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9525
    return-object p0
.end method

.method public addSynthesisVoice(ILcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9635
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9636
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9638
    return-object p0
.end method

.method public addSynthesisVoice(ILcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9618
    if-nez p2, :cond_0

    .line 9619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9621
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9622
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9624
    return-object p0
.end method

.method public addSynthesisVoice(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 9628
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9629
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9631
    return-object p0
.end method

.method public addSynthesisVoice(Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9608
    if-nez p1, :cond_0

    .line 9609
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9611
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9612
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9614
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->build()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 2

    .prologue
    .line 9399
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    .line 9400
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9401
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9403
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 3

    .prologue
    .line 9407
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 9408
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9409
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 9410
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9411
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9413
    :cond_0
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11202(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;Ljava/util/List;)Ljava/util/List;

    .line 9414
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9415
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9416
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9418
    :cond_1
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11302(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;Ljava/util/List;)Ljava/util/List;

    .line 9419
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9382
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9383
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9384
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9385
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9386
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9387
    return-object p0
.end method

.method public clearRecognitionLanguage()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9560
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9562
    return-object p0
.end method

.method public clearSynthesisVoice()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1

    .prologue
    .line 9648
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9649
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9651
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2

    .prologue
    .line 9391
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

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
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9366
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .locals 1

    .prologue
    .line 9395
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .locals 1
    .parameter

    .prologue
    .line 9499
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object p0
.end method

.method public getRecognitionLanguageCount()I
    .locals 1

    .prologue
    .line 9496
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecognitionLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9493
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .locals 1
    .parameter

    .prologue
    .line 9588
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object p0
.end method

.method public getSynthesisVoiceCount()I
    .locals 1

    .prologue
    .line 9585
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSynthesisVoiceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9582
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 9448
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getRecognitionLanguageCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 9449
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 9460
    :goto_1
    return v0

    .line 9448
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 9454
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getSynthesisVoiceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 9455
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 9457
    goto :goto_1

    .line 9454
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9460
    :cond_3
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
    .line 9366
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9366
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

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
    .line 9366
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9467
    const/4 v1, 0x0

    .line 9469
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9474
    if-eqz v0, :cond_0

    .line 9475
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    .line 9478
    :cond_0
    return-object p0

    .line 9470
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 9471
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9472
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9474
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 9475
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    :cond_1
    throw v0

    .line 9474
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 9423
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 9444
    :goto_0
    return-object v0

    .line 9424
    :cond_0
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11200(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9425
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9426
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11200(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    .line 9427
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    .line 9434
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11300(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9435
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9436
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11300(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    .line 9437
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->bitField0_:I

    :cond_2
    :goto_2
    move-object v0, p0

    .line 9444
    goto :goto_0

    .line 9429
    :cond_3
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9430
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11200(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 9439
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9440
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->access$11300(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public removeRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9565
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9566
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9568
    return-object p0
.end method

.method public removeSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9654
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9655
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9657
    return-object p0
.end method

.method public setRecognitionLanguage(ILcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9513
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9514
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9516
    return-object p0
.end method

.method public setRecognitionLanguage(ILcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9503
    if-nez p2, :cond_0

    .line 9504
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9506
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureRecognitionLanguageIsMutable()V

    .line 9507
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9509
    return-object p0
.end method

.method public setSynthesisVoice(ILcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9602
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9603
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice$Builder;->build()Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9605
    return-object p0
.end method

.method public setSynthesisVoice(ILcom/google/protos/speech/service/SpeechService$SynthesisVoice;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9592
    if-nez p2, :cond_0

    .line 9593
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9595
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->ensureSynthesisVoiceIsMutable()V

    .line 9596
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9598
    return-object p0
.end method
