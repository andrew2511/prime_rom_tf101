.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayDisambiguation_:Z

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16557
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 16680
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16558
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->maybeForceBuilderInitialization()V

    .line 16559
    return-void
.end method

.method static synthetic access$19300()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16564
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureHypothesisIsMutable()V
    .locals 2

    .prologue
    .line 16683
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 16684
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16685
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16687
    :cond_0
    return-void
.end method

.method private ensureInterpretationIsMutable()V
    .locals 2

    .prologue
    .line 16772
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 16773
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16774
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16776
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 16562
    return-void
.end method


# virtual methods
.method public addAllHypothesis(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 16750
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16751
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16753
    return-object p0
.end method

.method public addAllInterpretation(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 16839
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16840
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 16842
    return-object p0
.end method

.method public addHypothesis(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16743
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16744
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16746
    return-object p0
.end method

.method public addHypothesis(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16726
    if-nez p2, :cond_0

    .line 16727
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16729
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16730
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16732
    return-object p0
.end method

.method public addHypothesis(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16736
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16737
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16739
    return-object p0
.end method

.method public addHypothesis(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16716
    if-nez p1, :cond_0

    .line 16717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16719
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16720
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16722
    return-object p0
.end method

.method public addInterpretation(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16832
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16833
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16835
    return-object p0
.end method

.method public addInterpretation(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16815
    if-nez p2, :cond_0

    .line 16816
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16818
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16819
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16821
    return-object p0
.end method

.method public addInterpretation(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16825
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16826
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16828
    return-object p0
.end method

.method public addInterpretation(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16805
    if-nez p1, :cond_0

    .line 16806
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16808
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16809
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16811
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 2

    .prologue
    .line 16587
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    .line 16588
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16589
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 16591
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 5

    .prologue
    .line 16595
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 16596
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16597
    const/4 v2, 0x0

    .line 16598
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 16599
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16600
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16602
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Ljava/util/List;)Ljava/util/List;

    .line 16603
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 16604
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16605
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16607
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Ljava/util/List;)Ljava/util/List;

    .line 16608
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 16609
    or-int/lit8 v1, v2, 0x1

    .line 16611
    :goto_0
    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->displayDisambiguation_:Z

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Z)Z

    .line 16612
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;I)I

    .line 16613
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16568
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 16569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16570
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16571
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16572
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->displayDisambiguation_:Z

    .line 16574
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16575
    return-object p0
.end method

.method public clearDisplayDisambiguation()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16872
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16873
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->displayDisambiguation_:Z

    .line 16875
    return-object p0
.end method

.method public clearHypothesis()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16757
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16759
    return-object p0
.end method

.method public clearInterpretation()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1

    .prologue
    .line 16845
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16846
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16848
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2

    .prologue
    .line 16579
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

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
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 16552
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .locals 1

    .prologue
    .line 16583
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDisambiguation()Z
    .locals 1

    .prologue
    .line 16863
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->displayDisambiguation_:Z

    return v0
.end method

.method public getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .locals 1
    .parameter

    .prologue
    .line 16696
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object p0
.end method

.method public getHypothesisCount()I
    .locals 1

    .prologue
    .line 16693
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16690
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .locals 1
    .parameter

    .prologue
    .line 16785
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object p0
.end method

.method public getInterpretationCount()I
    .locals 1

    .prologue
    .line 16782
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

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
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16779
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDisplayDisambiguation()Z
    .locals 2

    .prologue
    .line 16860
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 16645
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getHypothesisCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 16646
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 16657
    :goto_1
    return v0

    .line 16645
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 16651
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getInterpretationCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 16652
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 16654
    goto :goto_1

    .line 16651
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16657
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
    .line 16552
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16552
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

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
    .line 16552
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16664
    const/4 v1, 0x0

    .line 16666
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16671
    if-eqz v0, :cond_0

    .line 16672
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    .line 16675
    :cond_0
    return-object p0

    .line 16667
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 16668
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16669
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16671
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 16672
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    :cond_1
    throw v0

    .line 16671
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2
    .parameter

    .prologue
    .line 16617
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 16641
    :goto_0
    return-object v0

    .line 16618
    :cond_0
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16619
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16620
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    .line 16621
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16628
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16629
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16630
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    .line 16631
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16638
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hasDisplayDisambiguation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16639
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDisplayDisambiguation()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->setDisplayDisambiguation(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    :cond_3
    move-object v0, p0

    .line 16641
    goto :goto_0

    .line 16623
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16624
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 16633
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16634
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->access$19600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public removeHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16762
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16763
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16765
    return-object p0
.end method

.method public removeInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16851
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16852
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 16854
    return-object p0
.end method

.method public setDisplayDisambiguation(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter

    .prologue
    .line 16866
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->bitField0_:I

    .line 16867
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->displayDisambiguation_:Z

    .line 16869
    return-object p0
.end method

.method public setHypothesis(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16710
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16711
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16713
    return-object p0
.end method

.method public setHypothesis(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16700
    if-nez p2, :cond_0

    .line 16701
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16703
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureHypothesisIsMutable()V

    .line 16704
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16706
    return-object p0
.end method

.method public setInterpretation(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16799
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16800
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16802
    return-object p0
.end method

.method public setInterpretation(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16789
    if-nez p2, :cond_0

    .line 16790
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 16792
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->ensureInterpretationIsMutable()V

    .line 16793
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16795
    return-object p0
.end method
