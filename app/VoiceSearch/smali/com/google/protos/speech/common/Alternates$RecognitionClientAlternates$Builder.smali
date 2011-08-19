.class public final Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternatesOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 724
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 621
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maybeForceBuilderInitialization()V

    .line 622
    return-void
.end method

.method static synthetic access$700()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 615
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSpanIsMutable()V
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 729
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 731
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 625
    return-void
.end method


# virtual methods
.method public addAllSpan(Ljava/lang/Iterable;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;)",
            "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;"
        }
    .end annotation

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 795
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 797
    return-object p0
.end method

.method public addSpan(ILcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 788
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 790
    return-object p0
.end method

.method public addSpan(ILcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 770
    if-nez p2, :cond_0

    .line 771
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 774
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 776
    return-object p0
.end method

.method public addSpan(Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 2
    .parameter

    .prologue
    .line 780
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 781
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    return-object p0
.end method

.method public addSpan(Lcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter

    .prologue
    .line 760
    if-nez p1, :cond_0

    .line 761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 764
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 652
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 5

    .prologue
    .line 656
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 657
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 658
    const/4 v2, 0x0

    .line 659
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 660
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 661
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 663
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$902(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;Ljava/util/List;)Ljava/util/List;

    .line 664
    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 665
    or-int/lit8 v1, v2, 0x1

    .line 667
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maxSpanLength_:I

    invoke-static {v0, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1002(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I

    .line 668
    invoke-static {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$1102(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I

    .line 669
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clear()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clear()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 631
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 632
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 633
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maxSpanLength_:I

    .line 635
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 636
    return-object p0
.end method

.method public clearMaxSpanLength()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 827
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maxSpanLength_:I

    .line 830
    return-object p0
.end method

.method public clearSpan()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1

    .prologue
    .line 800
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 801
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 803
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 2

    .prologue
    .line 640
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

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
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .locals 1

    .prologue
    .line 644
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 818
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maxSpanLength_:I

    return v0
.end method

.method public getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .locals 1
    .parameter

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object p0
.end method

.method public getSpanCount()I
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMaxSpanLength()Z
    .locals 2

    .prologue
    .line 815
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->hasMaxSpanLength()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 701
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 695
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->getSpanCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 696
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 698
    goto :goto_0

    .line 695
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 701
    :cond_2
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
    .line 615
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 615
    check-cast p1, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

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
    .line 615
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    const/4 v1, 0x0

    .line 710
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    .line 719
    :cond_0
    return-object p0

    .line 711
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 712
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 713
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 716
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    :cond_1
    throw v0

    .line 715
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 2
    .parameter

    .prologue
    .line 673
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 687
    :goto_0
    return-object v0

    .line 674
    :cond_0
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$900(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$900(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    .line 677
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 684
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getMaxSpanLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    :cond_2
    move-object v0, p0

    .line 687
    goto :goto_0

    .line 679
    :cond_3
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 680
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->access$900(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeSpan(I)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 807
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 809
    return-object p0
.end method

.method public setMaxSpanLength(I)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter

    .prologue
    .line 821
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->bitField0_:I

    .line 822
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->maxSpanLength_:I

    .line 824
    return-object p0
.end method

.method public setSpan(ILcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 755
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/common/Alternates$AlternateSpan$Builder;->build()Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 757
    return-object p0
.end method

.method public setSpan(ILcom/google/protos/speech/common/Alternates$AlternateSpan;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 744
    if-nez p2, :cond_0

    .line 745
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 747
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->ensureSpanIsMutable()V

    .line 748
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->span_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 750
    return-object p0
.end method
