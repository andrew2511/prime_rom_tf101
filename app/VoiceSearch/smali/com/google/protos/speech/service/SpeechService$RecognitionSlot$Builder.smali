.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$RecognitionSlotOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private literal_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private subslot_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2641
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 2787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2840
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2914
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2967
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2642
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->maybeForceBuilderInitialization()V

    .line 2643
    return-void
.end method

.method static synthetic access$2500()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2648
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSubslotIsMutable()V
    .locals 2

    .prologue
    .line 2970
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 2971
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2972
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2974
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2646
    return-void
.end method


# virtual methods
.method public addAllSubslot(Ljava/lang/Iterable;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;",
            ">;)",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;"
        }
    .end annotation

    .prologue
    .line 3037
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 3038
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3040
    return-object p0
.end method

.method public addSubslot(ILcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3030
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 3031
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3033
    return-object p0
.end method

.method public addSubslot(ILcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3013
    if-nez p2, :cond_0

    .line 3014
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3016
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 3017
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3019
    return-object p0
.end method

.method public addSubslot(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 2
    .parameter

    .prologue
    .line 3023
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 3024
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3026
    return-object p0
.end method

.method public addSubslot(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3003
    if-nez p1, :cond_0

    .line 3004
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3006
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 3007
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3009
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 2

    .prologue
    .line 2675
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    .line 2676
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2677
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2679
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 5

    .prologue
    .line 2683
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 2684
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2685
    const/4 v2, 0x0

    .line 2686
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2687
    or-int/lit8 v2, v2, 0x1

    .line 2689
    :cond_0
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2702(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2690
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2691
    or-int/lit8 v2, v2, 0x2

    .line 2693
    :cond_1
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2802(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2695
    or-int/lit8 v2, v2, 0x4

    .line 2697
    :cond_2
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->confidence_:F

    invoke-static {v0, v3}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2902(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;F)F

    .line 2698
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4

    .line 2699
    or-int/lit8 v1, v2, 0x8

    .line 2701
    :goto_0
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3002(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2702
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 2703
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2704
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2706
    :cond_3
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3102(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;Ljava/util/List;)Ljava/util/List;

    .line 2707
    invoke-static {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3202(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;I)I

    .line 2708
    return-object v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clear()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2652
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 2653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2654
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2656
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2657
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->confidence_:F

    .line 2658
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2659
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2660
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2661
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2662
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2663
    return-object p0
.end method

.method public clearConfidence()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2907
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2908
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->confidence_:F

    .line 2910
    return-object p0
.end method

.method public clearLiteral()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2950
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2951
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getLiteral()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2953
    return-object p0
.end method

.method public clearName()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2823
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2824
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2826
    return-object p0
.end method

.method public clearSubslot()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 3043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 3044
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 3046
    return-object p0
.end method

.method public clearValue()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1

    .prologue
    .line 2876
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2877
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2879
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 2

    .prologue
    .line 2667
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

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
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 2898
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->confidence_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1

    .prologue
    .line 2671
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getLiteral()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2920
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2921
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2922
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2925
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLiteralBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2931
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2932
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2934
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2937
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2793
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2794
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2795
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2798
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2804
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2805
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2807
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2810
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    .locals 1
    .parameter

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    return-object p0
.end method

.method public getSubslotCount()I
    .locals 1

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubslotList()Ljava/util/List;
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
    .line 2977
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2846
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2847
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2848
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2851
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 2856
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2857
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2858
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2860
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2863
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasConfidence()Z
    .locals 2

    .prologue
    .line 2895
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

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

.method public hasLiteral()Z
    .locals 2

    .prologue
    .line 2916
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2789
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    .line 2842
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

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

    .line 2746
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->hasName()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2764
    :goto_0
    return v0

    .line 2750
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 2752
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2754
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->getSubslotCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2755
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->getSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 2757
    goto :goto_0

    .line 2754
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2760
    :cond_3
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 2762
    goto :goto_0

    .line 2764
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
    .line 2637
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2637
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

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
    .line 2637
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2771
    const/4 v1, 0x0

    .line 2773
    :try_start_0
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2778
    if-eqz v0, :cond_0

    .line 2779
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    .line 2782
    :cond_0
    return-object p0

    .line 2774
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2775
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2776
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2778
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2779
    invoke-virtual {p0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    :cond_1
    throw v0

    .line 2778
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2712
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2742
    :goto_0
    return-object v0

    .line 2713
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2714
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2715
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2700(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2718
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2719
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2720
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$2800(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2723
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2724
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->getConfidence()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->setConfidence(F)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;

    .line 2726
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->hasLiteral()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2727
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2728
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3000(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2731
    :cond_4
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3100(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2732
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2733
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3100(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    .line 2734
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2741
    :cond_5
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    move-object v0, p0

    .line 2742
    goto :goto_0

    .line 2736
    :cond_6
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 2737
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;->access$3100(Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeSubslot(I)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3049
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 3050
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3052
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2901
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2902
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->confidence_:F

    .line 2904
    return-object p0
.end method

.method public setLiteral(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2941
    if-nez p1, :cond_0

    .line 2942
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2944
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2945
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2947
    return-object p0
.end method

.method public setLiteralBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2957
    if-nez p1, :cond_0

    .line 2958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2960
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2961
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->literal_:Ljava/lang/Object;

    .line 2963
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2814
    if-nez p1, :cond_0

    .line 2815
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2817
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2818
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2820
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2830
    if-nez p1, :cond_0

    .line 2831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2833
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2834
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->name_:Ljava/lang/Object;

    .line 2836
    return-object p0
.end method

.method public setSubslot(ILcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2997
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 2998
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->build()Lcom/google/protos/speech/service/SpeechService$RecognitionSlot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3000
    return-object p0
.end method

.method public setSubslot(ILcom/google/protos/speech/service/SpeechService$RecognitionSlot;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2987
    if-nez p2, :cond_0

    .line 2988
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2990
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->ensureSubslotIsMutable()V

    .line 2991
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->subslot_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2993
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2867
    if-nez p1, :cond_0

    .line 2868
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2870
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2871
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2873
    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2883
    if-nez p1, :cond_0

    .line 2884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2886
    :cond_0
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->bitField0_:I

    .line 2887
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionSlot$Builder;->value_:Ljava/lang/Object;

    .line 2889
    return-object p0
.end method
