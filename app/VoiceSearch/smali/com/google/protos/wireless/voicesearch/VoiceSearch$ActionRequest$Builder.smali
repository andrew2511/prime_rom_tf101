.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

.field private multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

.field private supportedAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end field

.field private websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9875
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10005
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    .line 10056
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 10099
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 10142
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9876
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->maybeForceBuilderInitialization()V

    .line 9877
    return-void
.end method

.method static synthetic access$11400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 9870
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 9882
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSupportedActionIsMutable()V
    .locals 2

    .prologue
    .line 10008
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 10009
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    .line 10010
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10012
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 9880
    return-void
.end method


# virtual methods
.method public addAllSupportedAction(Ljava/lang/Iterable;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;)",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 10043
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->ensureSupportedActionIsMutable()V

    .line 10044
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10046
    return-object p0
.end method

.method public addSupportedAction(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10033
    if-nez p1, :cond_0

    .line 10034
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10036
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->ensureSupportedActionIsMutable()V

    .line 10037
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10039
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 2

    .prologue
    .line 9907
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    .line 9908
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9909
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9911
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 5

    .prologue
    .line 9915
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 9916
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 9917
    const/4 v2, 0x0

    .line 9918
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 9919
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    .line 9920
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 9922
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->access$11602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Ljava/util/List;)Ljava/util/List;

    .line 9923
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 9924
    or-int/lit8 v2, v2, 0x1

    .line 9926
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->access$11702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 9927
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 9928
    or-int/lit8 v2, v2, 0x2

    .line 9930
    :cond_2
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->access$11802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9931
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 9932
    or-int/lit8 v1, v2, 0x4

    .line 9934
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->access$11902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9935
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->access$12002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;I)I

    .line 9936
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 9886
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9887
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    .line 9888
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 9889
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 9890
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 9891
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9892
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 9893
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9894
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 9895
    return-object p0
.end method

.method public clearMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 10092
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 10094
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10095
    return-object p0
.end method

.method public clearMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 10178
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 10180
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10181
    return-object p0
.end method

.method public clearSupportedAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 10049
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    .line 10050
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10052
    return-object p0
.end method

.method public clearWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1

    .prologue
    .line 10135
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 10137
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10138
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 2

    .prologue
    .line 9899
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

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
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9870
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .locals 1

    .prologue
    .line 9903
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .locals 1

    .prologue
    .line 10061
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method public getMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .locals 1

    .prologue
    .line 10147
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    return-object v0
.end method

.method public getSupportedAction(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    .locals 1
    .parameter

    .prologue
    .line 10020
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    return-object p0
.end method

.method public getSupportedActionCount()I
    .locals 1

    .prologue
    .line 10017
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10014
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .locals 1

    .prologue
    .line 10104
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object v0
.end method

.method public hasMapsRequestData()Z
    .locals 2

    .prologue
    .line 10058
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

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

.method public hasMultislotActionContext()Z
    .locals 2

    .prologue
    .line 10144
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

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

.method public hasWebsearchRequestData()Z
    .locals 2

    .prologue
    .line 10101
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9964
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->hasMapsRequestData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9965
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->getMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 9982
    :goto_0
    return v0

    .line 9970
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->hasWebsearchRequestData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9971
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->getWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 9973
    goto :goto_0

    .line 9976
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->hasMultislotActionContext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9977
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->getMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 9979
    goto :goto_0

    .line 9982
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
    .line 9870
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 9870
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

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
    .line 9870
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9989
    const/4 v1, 0x0

    .line 9991
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9996
    if-eqz v0, :cond_0

    .line 9997
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    .line 10000
    :cond_0
    return-object p0

    .line 9992
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 9993
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9994
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9996
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 9997
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    :cond_1
    throw v0

    .line 9996
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 9940
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 9960
    :goto_0
    return-object v0

    .line 9941
    :cond_0
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->access$11600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9942
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9943
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->access$11600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    .line 9944
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 9951
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasMapsRequestData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9952
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeMapsRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    .line 9954
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasWebsearchRequestData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9955
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeWebsearchRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    .line 9957
    :cond_3
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasMultislotActionContext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9958
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeMultislotActionContext(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    :cond_4
    move-object v0, p0

    .line 9960
    goto :goto_0

    .line 9946
    :cond_5
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->ensureSupportedActionIsMutable()V

    .line 9947
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->access$11600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public mergeMapsRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 10080
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10082
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 10088
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10089
    return-object p0

    .line 10085
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    goto :goto_0
.end method

.method public mergeMultislotActionContext(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 10166
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10168
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 10174
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10175
    return-object p0

    .line 10171
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    goto :goto_0
.end method

.method public mergeWebsearchRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 2
    .parameter

    .prologue
    .line 10123
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10125
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 10131
    :goto_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10132
    return-object p0

    .line 10128
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    goto :goto_0
.end method

.method public setMapsRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10074
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 10076
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10077
    return-object p0
.end method

.method public setMapsRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10064
    if-nez p1, :cond_0

    .line 10065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10067
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 10069
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10070
    return-object p0
.end method

.method public setMultislotActionContext(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10160
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 10162
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10163
    return-object p0
.end method

.method public setMultislotActionContext(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10150
    if-nez p1, :cond_0

    .line 10151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10153
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 10155
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10156
    return-object p0
.end method

.method public setSupportedAction(ILcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 10024
    if-nez p2, :cond_0

    .line 10025
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10027
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->ensureSupportedActionIsMutable()V

    .line 10028
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->supportedAction_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10030
    return-object p0
.end method

.method public setWebsearchRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10117
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 10119
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10120
    return-object p0
.end method

.method public setWebsearchRequestData(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 10107
    if-nez p1, :cond_0

    .line 10108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10110
    :cond_0
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 10112
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->bitField0_:I

    .line 10113
    return-object p0
.end method
