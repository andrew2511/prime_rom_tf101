.class public final Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;",
        ">;",
        "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private confidencehighthreshold_:I

.field private confidencelowthreshold_:I

.field private results_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 892
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->maybeForceBuilderInitialization()V

    .line 893
    return-void
.end method

.method static synthetic access$900()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 898
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureResultsIsMutable()V
    .locals 2

    .prologue
    .line 1003
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 1005
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1007
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 896
    return-void
.end method


# virtual methods
.method public addAllResults(Ljava/lang/Iterable;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;)",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1070
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 1071
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1073
    return-object p0
.end method

.method public addResults(ILcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 1064
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1066
    return-object p0
.end method

.method public addResults(ILcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1046
    if-nez p2, :cond_0

    .line 1047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1049
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 1050
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1052
    return-object p0
.end method

.method public addResults(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 1056
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 1057
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    return-object p0
.end method

.method public addResults(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1036
    if-nez p1, :cond_0

    .line 1037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1039
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 1040
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 2

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    .line 922
    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 923
    invoke-static {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 925
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 5

    .prologue
    .line 929
    new-instance v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/multimodal/RecognitionResultSet$1;)V

    .line 930
    iget v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 931
    const/4 v2, 0x0

    .line 932
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 933
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 934
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 936
    :cond_0
    iget-object v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1102(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;Ljava/util/List;)Ljava/util/List;

    .line 937
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 938
    or-int/lit8 v2, v2, 0x1

    .line 940
    :cond_1
    iget v3, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencehighthreshold_:I

    invoke-static {v0, v3}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1202(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I

    .line 941
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 942
    or-int/lit8 v1, v2, 0x2

    .line 944
    :goto_0
    iget v2, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencelowthreshold_:I

    invoke-static {v0, v2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1302(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I

    .line 945
    invoke-static {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1402(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;I)I

    .line 946
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clear()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clear()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 902
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 903
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 904
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 905
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencehighthreshold_:I

    .line 906
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 907
    iput v1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencelowthreshold_:I

    .line 908
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 909
    return-object p0
.end method

.method public clearConfidencehighthreshold()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 1103
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencehighthreshold_:I

    .line 1106
    return-object p0
.end method

.method public clearConfidencelowthreshold()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1125
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencelowthreshold_:I

    .line 1127
    return-object p0
.end method

.method public clearResults()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1

    .prologue
    .line 1076
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 1077
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1079
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 2

    .prologue
    .line 913
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->create()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

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
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->clone()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfidencehighthreshold()I
    .locals 1

    .prologue
    .line 1094
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencehighthreshold_:I

    return v0
.end method

.method public getConfidencelowthreshold()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencelowthreshold_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1

    .prologue
    .line 917
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    return-object v0
.end method

.method public getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
    .locals 1
    .parameter

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    return-object p0
.end method

.method public getResultsCount()I
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasConfidencehighthreshold()Z
    .locals 2

    .prologue
    .line 1091
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

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

.method public hasConfidencelowthreshold()Z
    .locals 2

    .prologue
    .line 1112
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

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

    .line 971
    :goto_0
    invoke-virtual {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->getResultsCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 972
    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 977
    :goto_1
    return v0

    .line 971
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
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
    .line 886
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 886
    check-cast p1, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-virtual {p0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

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
    .line 886
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 984
    const/4 v1, 0x0

    .line 986
    :try_start_0
    sget-object v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    .line 995
    :cond_0
    return-object p0

    .line 987
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 988
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 989
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 991
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 992
    invoke-virtual {p0, v1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    :cond_1
    throw v0

    .line 991
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 950
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 967
    :goto_0
    return-object v0

    .line 951
    :cond_0
    invoke-static {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 953
    invoke-static {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    .line 954
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 961
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->hasConfidencehighthreshold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getConfidencehighthreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->setConfidencehighthreshold(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    .line 964
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->hasConfidencelowthreshold()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 965
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getConfidencelowthreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->setConfidencelowthreshold(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    :cond_3
    move-object v0, p0

    .line 967
    goto :goto_0

    .line 956
    :cond_4
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 957
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->access$1100(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public removeResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 1083
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1085
    return-object p0
.end method

.method public setConfidencehighthreshold(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1097
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1098
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencehighthreshold_:I

    .line 1100
    return-object p0
.end method

.method public setConfidencelowthreshold(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1118
    iget v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->bitField0_:I

    .line 1119
    iput p1, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->confidencelowthreshold_:I

    .line 1121
    return-object p0
.end method

.method public setResults(ILcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1030
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 1031
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1033
    return-object p0
.end method

.method public setResults(ILcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1020
    if-nez p2, :cond_0

    .line 1021
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1023
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->ensureResultsIsMutable()V

    .line 1024
    iget-object v0, p0, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->results_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1026
    return-object p0
.end method
