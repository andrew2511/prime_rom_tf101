.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionResult;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionResultOrBuilder;"
    }
.end annotation


# instance fields
.field private alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

.field private bitField0_:I

.field private endTimeUsec_:J

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private startTimeUsec_:J

.field private status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

.field private utteranceId_:Ljava/lang/Object;

.field private waveformClippedRatio_:F

.field private waveformData_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4641
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4807
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4973
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    .line 5018
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4642
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->maybeForceBuilderInitialization()V

    .line 4643
    return-void
.end method

.method static synthetic access$4600()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4648
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;-><init>()V

    return-object v0
.end method

.method private ensureHypothesisIsMutable()V
    .locals 2

    .prologue
    .line 4834
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 4835
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4836
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4838
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4646
    return-void
.end method


# virtual methods
.method public addAllHypothesis(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;"
        }
    .end annotation

    .prologue
    .line 4901
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4902
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4904
    return-object p0
.end method

.method public addHypothesis(ILcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4894
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4895
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4897
    return-object p0
.end method

.method public addHypothesis(ILcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4877
    if-nez p2, :cond_0

    .line 4878
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4880
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4881
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4883
    return-object p0
.end method

.method public addHypothesis(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2
    .parameter

    .prologue
    .line 4887
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4888
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4890
    return-object p0
.end method

.method public addHypothesis(Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4867
    if-nez p1, :cond_0

    .line 4868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4870
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4871
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4873
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 2

    .prologue
    .line 4681
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    .line 4682
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4683
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4685
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 5

    .prologue
    .line 4689
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 4690
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4691
    const/4 v2, 0x0

    .line 4692
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4693
    or-int/lit8 v2, v2, 0x1

    .line 4695
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4802(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;)Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4696
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4697
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4698
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4700
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4902(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Ljava/util/List;)Ljava/util/List;

    .line 4701
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4702
    or-int/lit8 v2, v2, 0x2

    .line 4704
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5002(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4705
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4706
    or-int/lit8 v2, v2, 0x4

    .line 4708
    :cond_3
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5102(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4709
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4710
    or-int/lit8 v2, v2, 0x8

    .line 4712
    :cond_4
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformClippedRatio_:F

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5202(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;F)F

    .line 4713
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 4714
    or-int/lit8 v2, v2, 0x10

    .line 4716
    :cond_5
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5302(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4717
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 4718
    or-int/lit8 v2, v2, 0x20

    .line 4720
    :cond_6
    iget-wide v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->startTimeUsec_:J

    invoke-static {v0, v3, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5402(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;J)J

    .line 4721
    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_7

    .line 4722
    or-int/lit8 v1, v2, 0x40

    .line 4724
    :goto_0
    iget-wide v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->endTimeUsec_:J

    invoke-static {v0, v2, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5502(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;J)J

    .line 4725
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5602(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;I)I

    .line 4726
    return-object v0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 4652
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4653
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4654
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4655
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4656
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4657
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4658
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4659
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    .line 4660
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4661
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformClippedRatio_:F

    .line 4662
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4663
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 4664
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4665
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->startTimeUsec_:J

    .line 4666
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4667
    iput-wide v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->endTimeUsec_:J

    .line 4668
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4669
    return-object p0
.end method

.method public clearAlternates()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 5054
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 5056
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5057
    return-object p0
.end method

.method public clearEndTimeUsec()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2

    .prologue
    .line 5096
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5097
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->endTimeUsec_:J

    .line 5099
    return-object p0
.end method

.method public clearHypothesis()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4907
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4908
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4910
    return-object p0
.end method

.method public clearStartTimeUsec()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2

    .prologue
    .line 5075
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5076
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->startTimeUsec_:J

    .line 5078
    return-object p0
.end method

.method public clearStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4824
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4825
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;->SUCCESS:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4827
    return-object p0
.end method

.method public clearUtteranceId()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4956
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4957
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4959
    return-object p0
.end method

.method public clearWaveformClippedRatio()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 5011
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5012
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformClippedRatio_:F

    .line 5014
    return-object p0
.end method

.method public clearWaveformData()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1

    .prologue
    .line 4990
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4991
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getWaveformData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    .line 4993
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2

    .prologue
    .line 4673
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

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
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 5023
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4636
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    .locals 1

    .prologue
    .line 4677
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    return-object v0
.end method

.method public getEndTimeUsec()J
    .locals 2

    .prologue
    .line 5087
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->endTimeUsec_:J

    return-wide v0
.end method

.method public getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;
    .locals 1
    .parameter

    .prologue
    .line 4847
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    return-object p0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 4844
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHypothesisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4841
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStartTimeUsec()J
    .locals 2

    .prologue
    .line 5066
    iget-wide v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->startTimeUsec_:J

    return-wide v0
.end method

.method public getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;
    .locals 1

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4925
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4926
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4927
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4928
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4931
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 4936
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4938
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4940
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4943
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getWaveformClippedRatio()F
    .locals 1

    .prologue
    .line 5002
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformClippedRatio_:F

    return v0
.end method

.method public getWaveformData()Lcom/google/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4978
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAlternates()Z
    .locals 2

    .prologue
    .line 5020
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

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

.method public hasEndTimeUsec()Z
    .locals 2

    .prologue
    .line 5084
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartTimeUsec()Z
    .locals 2

    .prologue
    .line 5063
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4809
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUtteranceId()Z
    .locals 2

    .prologue
    .line 4922
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

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

.method public hasWaveformClippedRatio()Z
    .locals 2

    .prologue
    .line 4999
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

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

.method public hasWaveformData()Z
    .locals 2

    .prologue
    .line 4975
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4768
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hasStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 4784
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 4772
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getHypothesisCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4773
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 4775
    goto :goto_0

    .line 4772
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4778
    :cond_2
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hasAlternates()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4779
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 4781
    goto :goto_0

    .line 4784
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeAlternates(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2
    .parameter

    .prologue
    .line 5042
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5044
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 5050
    :goto_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5051
    return-object p0

    .line 5047
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

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
    .line 4636
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4636
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

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
    .line 4636
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4791
    const/4 v1, 0x0

    .line 4793
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4798
    if-eqz v0, :cond_0

    .line 4799
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4802
    :cond_0
    return-object p0

    .line 4794
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 4795
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4796
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4798
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 4799
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    :cond_1
    throw v0

    .line 4798
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2
    .parameter

    .prologue
    .line 4730
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionResult;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 4764
    :goto_0
    return-object v0

    .line 4731
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4732
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStatus()Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setStatus(Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4734
    :cond_1
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4900(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4735
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4736
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4900(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    .line 4737
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4744
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasUtteranceId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4745
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4746
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$5000(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4749
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasWaveformData()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4750
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getWaveformData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setWaveformData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4752
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasWaveformClippedRatio()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4753
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getWaveformClippedRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setWaveformClippedRatio(F)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4755
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasAlternates()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4756
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->mergeAlternates(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4758
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasStartTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4759
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getStartTimeUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setStartTimeUsec(J)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    .line 4761
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->hasEndTimeUsec()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4762
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->getEndTimeUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->setEndTimeUsec(J)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;

    :cond_8
    move-object v0, p0

    .line 4764
    goto :goto_0

    .line 4739
    :cond_9
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4740
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult;->access$4900(Lcom/google/protos/speech/service/SpeechService$RecognitionResult;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeHypothesis(I)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4913
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4914
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4916
    return-object p0
.end method

.method public setAlternates(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5036
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 5038
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5039
    return-object p0
.end method

.method public setAlternates(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5026
    if-nez p1, :cond_0

    .line 5027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5029
    :cond_0
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->alternates_:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 5031
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5032
    return-object p0
.end method

.method public setEndTimeUsec(J)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5090
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5091
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->endTimeUsec_:J

    .line 5093
    return-object p0
.end method

.method public setHypothesis(ILcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4861
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4862
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4864
    return-object p0
.end method

.method public setHypothesis(ILcom/google/protos/speech/service/SpeechService$RecognitionHypothesis;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4851
    if-nez p2, :cond_0

    .line 4852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4854
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->ensureHypothesisIsMutable()V

    .line 4855
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4857
    return-object p0
.end method

.method public setStartTimeUsec(J)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5069
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5070
    iput-wide p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->startTimeUsec_:J

    .line 5072
    return-object p0
.end method

.method public setStatus(Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4815
    if-nez p1, :cond_0

    .line 4816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4818
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4819
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->status_:Lcom/google/protos/speech/service/SpeechService$RecognitionStatus;

    .line 4821
    return-object p0
.end method

.method public setUtteranceId(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4947
    if-nez p1, :cond_0

    .line 4948
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4950
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4951
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4953
    return-object p0
.end method

.method public setUtteranceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4963
    if-nez p1, :cond_0

    .line 4964
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4966
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4967
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->utteranceId_:Ljava/lang/Object;

    .line 4969
    return-object p0
.end method

.method public setWaveformClippedRatio(F)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 5005
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 5006
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformClippedRatio_:F

    .line 5008
    return-object p0
.end method

.method public setWaveformData(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;
    .locals 1
    .parameter

    .prologue
    .line 4981
    if-nez p1, :cond_0

    .line 4982
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4984
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->bitField0_:I

    .line 4985
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionResult$Builder;->waveformData_:Lcom/google/protobuf/ByteString;

    .line 4987
    return-object p0
.end method
