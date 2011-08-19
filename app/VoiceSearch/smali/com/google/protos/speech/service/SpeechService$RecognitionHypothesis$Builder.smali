.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesisOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:D

.field private grammarId_:Ljava/lang/Object;

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private sentence_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3830
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3960
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 4034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 4123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 3831
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->maybeForceBuilderInitialization()V

    .line 3832
    return-void
.end method

.method static synthetic access$3800()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3825
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3837
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;-><init>()V

    return-object v0
.end method

.method private ensureInterpretationIsMutable()V
    .locals 2

    .prologue
    .line 4037
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4038
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 4039
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4041
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 3835
    return-void
.end method


# virtual methods
.method public addAllInterpretation(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;"
        }
    .end annotation

    .prologue
    .line 4104
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 4105
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4107
    return-object p0
.end method

.method public addInterpretation(ILcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4097
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 4098
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4100
    return-object p0
.end method

.method public addInterpretation(ILcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4080
    if-nez p2, :cond_0

    .line 4081
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4083
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 4084
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4086
    return-object p0
.end method

.method public addInterpretation(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 2
    .parameter

    .prologue
    .line 4090
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 4091
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4093
    return-object p0
.end method

.method public addInterpretation(Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4070
    if-nez p1, :cond_0

    .line 4071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4073
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 4074
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4076
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 2

    .prologue
    .line 3862
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    .line 3863
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3864
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3866
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 5

    .prologue
    .line 3870
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 3871
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3872
    const/4 v2, 0x0

    .line 3873
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3874
    or-int/lit8 v2, v2, 0x1

    .line 3876
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4002(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3877
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 3878
    or-int/lit8 v2, v2, 0x2

    .line 3880
    :cond_1
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->confidence_:D

    invoke-static {v0, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4102(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;D)D

    .line 3881
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 3882
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 3883
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3885
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4202(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/util/List;)Ljava/util/List;

    .line 3886
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 3887
    or-int/lit8 v1, v2, 0x4

    .line 3889
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4302(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4402(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;I)I

    .line 3891
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 2

    .prologue
    .line 3841
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3842
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3843
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3844
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->confidence_:D

    .line 3845
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3846
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 3847
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3848
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 3849
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3850
    return-object p0
.end method

.method public clearConfidence()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 2

    .prologue
    .line 4027
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4028
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->confidence_:D

    .line 4030
    return-object p0
.end method

.method public clearGrammarId()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 4159
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4160
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getGrammarId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 4162
    return-object p0
.end method

.method public clearInterpretation()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 4110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 4111
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4113
    return-object p0
.end method

.method public clearSentence()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1

    .prologue
    .line 3996
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3997
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getSentence()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3999
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 2

    .prologue
    .line 3854
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

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
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()D
    .locals 2

    .prologue
    .line 4018
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->confidence_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3825
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1

    .prologue
    .line 3858
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    return-object v0
.end method

.method public getGrammarId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 4129
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4130
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4131
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 4134
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getGrammarIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 4140
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4141
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4143
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 4146
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;
    .locals 1
    .parameter

    .prologue
    .line 4050
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    return-object p0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 4047
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInterpretationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4044
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSentence()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3965
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3966
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3967
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3968
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3971
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 3976
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3977
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3978
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3980
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3983
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 4015
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

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

.method public hasGrammarId()Z
    .locals 2

    .prologue
    .line 4125
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

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

.method public hasSentence()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3962
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3923
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->hasSentence()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 3937
    :goto_0
    return v0

    .line 3927
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->hasConfidence()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 3929
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3931
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->getInterpretationCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3932
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->getInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 3934
    goto :goto_0

    .line 3931
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3937
    :cond_3
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
    .line 3825
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3825
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

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
    .line 3825
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3944
    const/4 v1, 0x0

    .line 3946
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3951
    if-eqz v0, :cond_0

    .line 3952
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    .line 3955
    :cond_0
    return-object p0

    .line 3947
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 3948
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3949
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3951
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 3952
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    :cond_1
    throw v0

    .line 3951
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 2
    .parameter

    .prologue
    .line 3895
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 3919
    :goto_0
    return-object v0

    .line 3896
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasSentence()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3897
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3898
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4000(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3901
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3902
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->getConfidence()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->setConfidence(D)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;

    .line 3904
    :cond_2
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3905
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3906
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    .line 3907
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3914
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->hasGrammarId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3915
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3916
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4300(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    :cond_4
    move-object v0, p0

    .line 3919
    goto :goto_0

    .line 3909
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 3910
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->access$4200(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeInterpretation(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4116
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 4117
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4119
    return-object p0
.end method

.method public setConfidence(D)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4021
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4022
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->confidence_:D

    .line 4024
    return-object p0
.end method

.method public setGrammarId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4150
    if-nez p1, :cond_0

    .line 4151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4153
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4154
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 4156
    return-object p0
.end method

.method public setGrammarIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4166
    if-nez p1, :cond_0

    .line 4167
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4169
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4170
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->grammarId_:Ljava/lang/Object;

    .line 4172
    return-object p0
.end method

.method public setInterpretation(ILcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4064
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 4065
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4067
    return-object p0
.end method

.method public setInterpretation(ILcom/google/protos/speech/service/SpeechService$RecognitionInterpretation;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4054
    if-nez p2, :cond_0

    .line 4055
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4057
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->ensureInterpretationIsMutable()V

    .line 4058
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4060
    return-object p0
.end method

.method public setSentence(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3987
    if-nez p1, :cond_0

    .line 3988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3990
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 3991
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 3993
    return-object p0
.end method

.method public setSentenceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4003
    if-nez p1, :cond_0

    .line 4004
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4006
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->bitField0_:I

    .line 4007
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->sentence_:Ljava/lang/Object;

    .line 4009
    return-object p0
.end method
