.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;",
        ">;",
        "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProtoOrBuilder;"
    }
.end annotation


# instance fields
.field private applicationId_:Ljava/lang/Object;

.field private attributes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private clientId_:Ljava/lang/Object;

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

.field private latLong_:Ljava/lang/Object;

.field private masfCookie_:Ljava/lang/Object;

.field private recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

.field private safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

.field private utteranceId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 863
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 916
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1207
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->NONE_FILTER:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 1231
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 665
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->maybeForceBuilderInitialization()V

    .line 666
    return-void
.end method

.method static synthetic access$100()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 671
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAttributesIsMutable()V
    .locals 2

    .prologue
    .line 962
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 964
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 966
    :cond_0
    return-void
.end method

.method private ensureHttpHeaderIsMutable()V
    .locals 2

    .prologue
    .line 1287
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 1288
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 1289
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1291
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 669
    return-void
.end method


# virtual methods
.method public addAllAttributes(Ljava/lang/Iterable;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;)",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1029
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 1030
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1032
    return-object p0
.end method

.method public addAllHttpHeader(Ljava/lang/Iterable;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;)",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;"
        }
    .end annotation

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1355
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1357
    return-object p0
.end method

.method public addAttributes(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 1023
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1025
    return-object p0
.end method

.method public addAttributes(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1005
    if-nez p2, :cond_0

    .line 1006
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1008
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 1009
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1011
    return-object p0
.end method

.method public addAttributes(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 1016
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1018
    return-object p0
.end method

.method public addAttributes(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 999
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    return-object p0
.end method

.method public addHttpHeader(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1347
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1348
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1350
    return-object p0
.end method

.method public addHttpHeader(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1330
    if-nez p2, :cond_0

    .line 1331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1333
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1334
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1336
    return-object p0
.end method

.method public addHttpHeader(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 1340
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1341
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    return-object p0
.end method

.method public addHttpHeader(Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1320
    if-nez p1, :cond_0

    .line 1321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1323
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1324
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    invoke-static {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 710
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    .locals 5

    .prologue
    .line 714
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V

    .line 715
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 716
    const/4 v2, 0x0

    .line 717
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 718
    or-int/lit8 v2, v2, 0x1

    .line 720
    :cond_0
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$302(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 722
    or-int/lit8 v2, v2, 0x2

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$402(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 725
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 726
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 727
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 729
    :cond_2
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$502(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/util/List;)Ljava/util/List;

    .line 730
    and-int/lit8 v3, v1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 731
    or-int/lit8 v2, v2, 0x4

    .line 733
    :cond_3
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$602(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    and-int/lit8 v3, v1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 735
    or-int/lit8 v2, v2, 0x8

    .line 737
    :cond_4
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$702(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    and-int/lit8 v3, v1, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 739
    or-int/lit8 v2, v2, 0x10

    .line 741
    :cond_5
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$802(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    and-int/lit8 v3, v1, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 743
    or-int/lit8 v2, v2, 0x20

    .line 745
    :cond_6
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    invoke-static {v0, v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$902(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 746
    and-int/lit16 v1, v1, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_8

    .line 747
    or-int/lit8 v1, v2, 0x40

    .line 749
    :goto_0
    iget-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1002(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    iget v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_7

    .line 751
    iget-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 752
    iget v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 754
    :cond_7
    iget-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1102(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/util/List;)Ljava/util/List;

    .line 755
    invoke-static {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1202(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;I)I

    .line 756
    return-object v0

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 675
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 677
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 678
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 679
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 680
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 681
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 683
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 685
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 687
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 688
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->NONE_FILTER:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 689
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 691
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 692
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 693
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 694
    return-object p0
.end method

.method public clearApplicationId()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 900
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 902
    return-object p0
.end method

.method public clearAttributes()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 1036
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1038
    return-object p0
.end method

.method public clearClientId()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1268
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1270
    return-object p0
.end method

.method public clearHttpHeader()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 1360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 1361
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1363
    return-object p0
.end method

.method public clearLatLong()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 1190
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1191
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getLatLong()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1193
    return-object p0
.end method

.method public clearMasfCookie()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1085
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getMasfCookie()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1087
    return-object p0
.end method

.method public clearRecognitionResultSet()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 952
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 954
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 955
    return-object p0
.end method

.method public clearSafeSearchFilter()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 1224
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1225
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->NONE_FILTER:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 1227
    return-object p0
.end method

.method public clearUtteranceId()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1

    .prologue
    .line 1137
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1138
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getUtteranceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1140
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2

    .prologue
    .line 698
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->buildPartial()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

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
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clone()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 869
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 870
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 871
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 874
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 880
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 881
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 883
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 886
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getAttributes(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public getAttributesCount()I
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributesList()Ljava/util/List;
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
    .line 969
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1237
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1238
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1239
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1242
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1248
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1249
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1251
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1254
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .locals 1
    .parameter

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object p0
.end method

.method public getHttpHeaderCount()I
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

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
    .line 1294
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLatLong()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1160
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1161
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1162
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1165
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getLatLongBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1171
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1172
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1174
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1177
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getMasfCookie()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1054
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1055
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1056
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1059
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMasfCookieBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1065
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1066
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1068
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1071
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method public getSafeSearchFilter()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1107
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1108
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1109
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1112
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1118
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1119
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1121
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1124
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasApplicationId()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 865
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasClientId()Z
    .locals 2

    .prologue
    .line 1233
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

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

.method public hasLatLong()Z
    .locals 2

    .prologue
    .line 1156
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

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

.method public hasMasfCookie()Z
    .locals 2

    .prologue
    .line 1050
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

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

.method public hasRecognitionResultSet()Z
    .locals 2

    .prologue
    .line 918
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

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

.method public hasSafeSearchFilter()Z
    .locals 2

    .prologue
    .line 1209
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

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

.method public hasUtteranceId()Z
    .locals 2

    .prologue
    .line 1103
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 816
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->hasApplicationId()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 840
    :goto_0
    return v0

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->hasRecognitionResultSet()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 822
    goto :goto_0

    .line 824
    :cond_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 826
    goto :goto_0

    :cond_2
    move v0, v2

    .line 828
    :goto_1
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getAttributesCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 829
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getAttributes(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 831
    goto :goto_0

    .line 828
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 834
    :goto_2
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getHttpHeaderCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 835
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_5

    move v0, v2

    .line 837
    goto :goto_0

    .line 834
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 840
    :cond_6
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
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 659
    check-cast p1, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    invoke-virtual {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

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
    .line 659
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    const/4 v1, 0x0

    .line 849
    :try_start_0
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 858
    :cond_0
    return-object p0

    .line 850
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 851
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 852
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 855
    invoke-virtual {p0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    :cond_1
    throw v0

    .line 854
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 760
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 812
    :goto_0
    return-object v0

    .line 761
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasApplicationId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 763
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$300(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 766
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasRecognitionResultSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 769
    :cond_2
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 770
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 771
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    .line 772
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 779
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasMasfCookie()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 780
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 781
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$600(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 784
    :cond_4
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasUtteranceId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 785
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 786
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$700(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 789
    :cond_5
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasLatLong()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 790
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 791
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$800(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 794
    :cond_6
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasSafeSearchFilter()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 795
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getSafeSearchFilter()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->setSafeSearchFilter(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    .line 797
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 798
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 799
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1000(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 802
    :cond_8
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1100(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 803
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 804
    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1100(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    .line 805
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    :cond_9
    :goto_2
    move-object v0, p0

    .line 812
    goto/16 :goto_0

    .line 774
    :cond_a
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 775
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 807
    :cond_b
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 808
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->access$1100(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public mergeRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter

    .prologue
    .line 940
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 942
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-static {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->newBuilder(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 948
    :goto_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 949
    return-object p0

    .line 945
    :cond_0
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    goto :goto_0
.end method

.method public removeAttributes(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 1042
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1044
    return-object p0
.end method

.method public removeHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1366
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1367
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1369
    return-object p0
.end method

.method public setApplicationId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 890
    if-nez p1, :cond_0

    .line 891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 893
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 894
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 896
    return-object p0
.end method

.method public setApplicationIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 906
    if-nez p1, :cond_0

    .line 907
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 909
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 910
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->applicationId_:Ljava/lang/Object;

    .line 912
    return-object p0
.end method

.method public setAttributes(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 989
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 990
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 992
    return-object p0
.end method

.method public setAttributes(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 979
    if-nez p2, :cond_0

    .line 980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 982
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureAttributesIsMutable()V

    .line 983
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->attributes_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 985
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1258
    if-nez p1, :cond_0

    .line 1259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1261
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1262
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1264
    return-object p0
.end method

.method public setClientIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1274
    if-nez p1, :cond_0

    .line 1275
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1277
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1278
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->clientId_:Ljava/lang/Object;

    .line 1280
    return-object p0
.end method

.method public setHttpHeader(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1314
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1315
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto$Builder;->build()Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1317
    return-object p0
.end method

.method public setHttpHeader(ILcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1304
    if-nez p2, :cond_0

    .line 1305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1307
    :cond_0
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->ensureHttpHeaderIsMutable()V

    .line 1308
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1310
    return-object p0
.end method

.method public setLatLong(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1181
    if-nez p1, :cond_0

    .line 1182
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1184
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1185
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1187
    return-object p0
.end method

.method public setLatLongBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1197
    if-nez p1, :cond_0

    .line 1198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1200
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1201
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->latLong_:Ljava/lang/Object;

    .line 1203
    return-object p0
.end method

.method public setMasfCookie(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1075
    if-nez p1, :cond_0

    .line 1076
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1078
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1079
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1081
    return-object p0
.end method

.method public setMasfCookieBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1091
    if-nez p1, :cond_0

    .line 1092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1094
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1095
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->masfCookie_:Ljava/lang/Object;

    .line 1097
    return-object p0
.end method

.method public setRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 934
    invoke-virtual {p1}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->build()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 936
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 937
    return-object p0
.end method

.method public setRecognitionResultSet(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 924
    if-nez p1, :cond_0

    .line 925
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 927
    :cond_0
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 929
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 930
    return-object p0
.end method

.method public setSafeSearchFilter(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1215
    if-nez p1, :cond_0

    .line 1216
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1218
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1219
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 1221
    return-object p0
.end method

.method public setUtteranceId(Ljava/lang/String;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1128
    if-nez p1, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1131
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1132
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1134
    return-object p0
.end method

.method public setUtteranceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1144
    if-nez p1, :cond_0

    .line 1145
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1147
    :cond_0
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->bitField0_:I

    .line 1148
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->utteranceId_:Ljava/lang/Object;

    .line 1150
    return-object p0
.end method
