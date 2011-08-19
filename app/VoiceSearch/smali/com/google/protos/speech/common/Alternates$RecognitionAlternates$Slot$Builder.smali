.class public final Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$SlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;",
        ">;",
        "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$SlotOrBuilder;"
    }
.end annotation


# instance fields
.field private alternate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private firstWord_:I

.field private originalPhraseConfidence_:F

.field private phraseLength_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2700
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    .line 2701
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->maybeForceBuilderInitialization()V

    .line 2702
    return-void
.end method

.method static synthetic access$3400()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2695
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2707
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlternateIsMutable()V
    .locals 2

    .prologue
    .line 2875
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2876
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    .line 2877
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2879
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2705
    return-void
.end method


# virtual methods
.method public addAllAlternate(Ljava/lang/Iterable;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;)",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;"
        }
    .end annotation

    .prologue
    .line 2942
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2943
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2945
    return-object p0
.end method

.method public addAlternate(ILcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2935
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2936
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2938
    return-object p0
.end method

.method public addAlternate(ILcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2918
    if-nez p2, :cond_0

    .line 2919
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2921
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2922
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2924
    return-object p0
.end method

.method public addAlternate(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2928
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2929
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2931
    return-object p0
.end method

.method public addAlternate(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2908
    if-nez p1, :cond_0

    .line 2909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2911
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2912
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2914
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 2

    .prologue
    .line 2732
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    .line 2733
    invoke-virtual {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2734
    invoke-static {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2736
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 5

    .prologue
    .line 2740
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V

    .line 2741
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2742
    const/4 v2, 0x0

    .line 2743
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2744
    or-int/lit8 v2, v2, 0x1

    .line 2746
    :cond_0
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->firstWord_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->access$3602(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;I)I

    .line 2747
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2748
    or-int/lit8 v2, v2, 0x2

    .line 2750
    :cond_1
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->phraseLength_:I

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->access$3702(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;I)I

    .line 2751
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2752
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    .line 2753
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2755
    :cond_2
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->access$3802(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;Ljava/util/List;)Ljava/util/List;

    .line 2756
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 2757
    or-int/lit8 v1, v2, 0x4

    .line 2759
    :goto_0
    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->originalPhraseConfidence_:F

    invoke-static {v0, v2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->access$3902(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;F)F

    .line 2760
    invoke-static {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->access$4002(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;I)I

    .line 2761
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2711
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2712
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->firstWord_:I

    .line 2713
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2714
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->phraseLength_:I

    .line 2715
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2716
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    .line 2717
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2718
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->originalPhraseConfidence_:F

    .line 2719
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2720
    return-object p0
.end method

.method public clearAlternate()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2948
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    .line 2949
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2951
    return-object p0
.end method

.method public clearFirstWord()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2844
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2845
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->firstWord_:I

    .line 2847
    return-object p0
.end method

.method public clearOriginalPhraseConfidence()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2975
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2976
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->originalPhraseConfidence_:F

    .line 2978
    return-object p0
.end method

.method public clearPhraseLength()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1

    .prologue
    .line 2865
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2866
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->phraseLength_:I

    .line 2868
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 2

    .prologue
    .line 2724
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->buildPartial()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

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
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->clone()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAlternate(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter

    .prologue
    .line 2888
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object p0
.end method

.method public getAlternateCount()I
    .locals 1

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAlternateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2695
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    .locals 1

    .prologue
    .line 2728
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    return-object v0
.end method

.method public getFirstWord()I
    .locals 1

    .prologue
    .line 2835
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->firstWord_:I

    return v0
.end method

.method public getOriginalPhraseConfidence()F
    .locals 1

    .prologue
    .line 2966
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->originalPhraseConfidence_:F

    return v0
.end method

.method public getPhraseLength()I
    .locals 1

    .prologue
    .line 2856
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->phraseLength_:I

    return v0
.end method

.method public hasFirstWord()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2832
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOriginalPhraseConfidence()Z
    .locals 2

    .prologue
    .line 2963
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

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

.method public hasPhraseLength()Z
    .locals 2

    .prologue
    .line 2853
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

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

    .line 2789
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->hasFirstWord()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2807
    :goto_0
    return v0

    .line 2793
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->hasPhraseLength()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 2795
    goto :goto_0

    .line 2797
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->hasOriginalPhraseConfidence()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 2799
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2801
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->getAlternateCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2802
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->getAlternate(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 2804
    goto :goto_0

    .line 2801
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2807
    :cond_4
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
    .line 2695
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2695
    check-cast p1, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

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
    .line 2695
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2814
    const/4 v1, 0x0

    .line 2816
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2821
    if-eqz v0, :cond_0

    .line 2822
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    .line 2825
    :cond_0
    return-object p0

    .line 2817
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2818
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2819
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2821
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2822
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    :cond_1
    throw v0

    .line 2821
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2765
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2785
    :goto_0
    return-object v0

    .line 2766
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->hasFirstWord()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2767
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getFirstWord()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->setFirstWord(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    .line 2769
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->hasPhraseLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2770
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getPhraseLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->setPhraseLength(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    .line 2772
    :cond_2
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->access$3800(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2773
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2774
    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->access$3800(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    .line 2775
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2782
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->hasOriginalPhraseConfidence()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2783
    invoke-virtual {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->getOriginalPhraseConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->setOriginalPhraseConfidence(F)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;

    :cond_4
    move-object v0, p0

    .line 2785
    goto :goto_0

    .line 2777
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2778
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;->access$3800(Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeAlternate(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2954
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2955
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2957
    return-object p0
.end method

.method public setAlternate(ILcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2902
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2903
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate$Builder;->build()Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2905
    return-object p0
.end method

.method public setAlternate(ILcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2892
    if-nez p2, :cond_0

    .line 2893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2895
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->ensureAlternateIsMutable()V

    .line 2896
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->alternate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2898
    return-object p0
.end method

.method public setFirstWord(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2838
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2839
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->firstWord_:I

    .line 2841
    return-object p0
.end method

.method public setOriginalPhraseConfidence(F)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2969
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2970
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->originalPhraseConfidence_:F

    .line 2972
    return-object p0
.end method

.method public setPhraseLength(I)Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2859
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->bitField0_:I

    .line 2860
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionAlternates$Slot$Builder;->phraseLength_:I

    .line 2862
    return-object p0
.end method
