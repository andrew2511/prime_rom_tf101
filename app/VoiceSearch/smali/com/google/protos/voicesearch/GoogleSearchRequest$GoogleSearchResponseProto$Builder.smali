.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;",
        ">;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private httpHeader_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field private result_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2748
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2860
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    .line 2949
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    .line 2749
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->maybeForceBuilderInitialization()V

    .line 2750
    return-void
.end method

.method static synthetic access$2700()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1

    .prologue
    .line 2743
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1

    .prologue
    .line 2755
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureHttpHeaderIsMutable()V
    .locals 2

    .prologue
    .line 2952
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2953
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    .line 2954
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2956
    :cond_0
    return-void
.end method

.method private ensureResultIsMutable()V
    .locals 2

    .prologue
    .line 2863
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2864
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    .line 2865
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2867
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2753
    return-void
.end method


# virtual methods
.method public addAllHttpHeader(Ljava/lang/Iterable;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;)",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;"
        }
    .end annotation

    .prologue
    .line 3019
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 3020
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3022
    return-object p0
.end method

.method public addAllResult(Ljava/lang/Iterable;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
            ">;)",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;"
        }
    .end annotation

    .prologue
    .line 2930
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2931
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2933
    return-object p0
.end method

.method public addHttpHeader(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3012
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 3013
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3015
    return-object p0
.end method

.method public addHttpHeader(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2995
    if-nez p2, :cond_0

    .line 2996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2998
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 2999
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3001
    return-object p0
.end method

.method public addHttpHeader(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 3005
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 3006
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3008
    return-object p0
.end method

.method public addHttpHeader(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2985
    if-nez p1, :cond_0

    .line 2986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2988
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 2989
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2991
    return-object p0
.end method

.method public addResult(ILcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2923
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2924
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2926
    return-object p0
.end method

.method public addResult(ILcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2906
    if-nez p2, :cond_0

    .line 2907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2909
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2910
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2912
    return-object p0
.end method

.method public addResult(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2916
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2917
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2919
    return-object p0
.end method

.method public addResult(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2896
    if-nez p1, :cond_0

    .line 2897
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2899
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2900
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2902
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 2

    .prologue
    .line 2776
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v0

    .line 2777
    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2778
    invoke-static {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2780
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 3

    .prologue
    .line 2784
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V

    .line 2785
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2786
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2787
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    .line 2788
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2790
    :cond_0
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->access$2902(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;Ljava/util/List;)Ljava/util/List;

    .line 2791
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2792
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    .line 2793
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2795
    :cond_1
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->access$3002(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;Ljava/util/List;)Ljava/util/List;

    .line 2796
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1

    .prologue
    .line 2759
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2760
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    .line 2761
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2762
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    .line 2763
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2764
    return-object p0
.end method

.method public clearHttpHeader()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1

    .prologue
    .line 3025
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    .line 3026
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 3028
    return-object p0
.end method

.method public clearResult()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1

    .prologue
    .line 2936
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    .line 2937
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2939
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 2

    .prologue
    .line 2768
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

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
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    .locals 1

    .prologue
    .line 2772
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public getHttpHeaderCount()I
    .locals 1

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHttpHeaderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2959
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;
    .locals 1
    .parameter

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    return-object p0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    move v0, v2

    .line 2825
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->getResultCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2826
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->getResult(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 2837
    :goto_1
    return v0

    .line 2825
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2831
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->getHttpHeaderCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2832
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 2834
    goto :goto_1

    .line 2831
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2837
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
    .line 2743
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2743
    check-cast p1, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    invoke-virtual {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

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
    .line 2743
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2844
    const/4 v1, 0x0

    .line 2846
    :try_start_0
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2851
    if-eqz v0, :cond_0

    .line 2852
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    .line 2855
    :cond_0
    return-object p0

    .line 2847
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 2848
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2849
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2851
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 2852
    invoke-virtual {p0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;

    :cond_1
    throw v0

    .line 2851
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 2800
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 2821
    :goto_0
    return-object v0

    .line 2801
    :cond_0
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->access$2900(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2802
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2803
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->access$2900(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    .line 2804
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    .line 2811
    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->access$3000(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2812
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2813
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->access$3000(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    .line 2814
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->bitField0_:I

    :cond_2
    :goto_2
    move-object v0, p0

    .line 2821
    goto :goto_0

    .line 2806
    :cond_3
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2807
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->access$2900(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 2816
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 2817
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;->access$3000(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public removeHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 3031
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 3032
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3034
    return-object p0
.end method

.method public removeResult(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 2942
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2943
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2945
    return-object p0
.end method

.method public setHttpHeader(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2979
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 2980
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2982
    return-object p0
.end method

.method public setHttpHeader(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2969
    if-nez p2, :cond_0

    .line 2970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2972
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 2973
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2975
    return-object p0
.end method

.method public setResult(ILcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2890
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2891
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2893
    return-object p0
.end method

.method public setResult(ILcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Result;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2880
    if-nez p2, :cond_0

    .line 2881
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2883
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->ensureResultIsMutable()V

    .line 2884
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchResponseProto$Builder;->result_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2886
    return-object p0
.end method
