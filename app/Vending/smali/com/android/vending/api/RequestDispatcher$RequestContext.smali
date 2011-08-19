.class public Lcom/android/vending/api/RequestDispatcher$RequestContext;
.super Ljava/lang/Object;
.source "RequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestContext"
.end annotation


# instance fields
.field private allCachedOrPostponed:Z

.field private altRequestSuggest:Z

.field private batchRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private efeEncryptedFields:Ljava/lang/String;

.field private isBillingRequest:Z

.field private isLicensing:Z

.field private isProcessedFromCache:Z

.field private postParams:[Lorg/apache/http/NameValuePair;

.field private requestProperties:Lcom/android/vending/model/RequestProperties;

.field private requestStates:[Lcom/android/vending/api/RequestDispatcher$RequestState;

.field private requestWrapper:Lcom/google/common/io/protocol/ProtoBuf;

.field private requireRpc:Z

.field private requiresSsl:Z

.field private usesSecureToken:Z


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, batchRequests:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    const/4 v6, 0x1

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->batchRequests:Ljava/util/List;

    .line 678
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 680
    .local v2, numRequests:I
    new-array v3, v2, [Lcom/android/vending/api/RequestDispatcher$RequestState;

    iput-object v3, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requestStates:[Lcom/android/vending/api/RequestDispatcher$RequestState;

    .line 681
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_9

    .line 682
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 683
    .local v0, batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->usesSecureToken()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 684
    iput-boolean v6, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->usesSecureToken:Z

    .line 686
    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->requiresSsl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    iput-boolean v6, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requiresSsl:Z

    .line 689
    :cond_1
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->altRequestSuggest()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 690
    iput-boolean v6, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->altRequestSuggest:Z

    .line 692
    :cond_2
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->isBillingRequest()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 693
    iput-boolean v6, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isBillingRequest:Z

    .line 695
    :cond_3
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->isLicensing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 696
    iput-boolean v6, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isLicensing:Z

    .line 698
    :cond_4
    iget-object v3, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requestStates:[Lcom/android/vending/api/RequestDispatcher$RequestState;

    new-instance v4, Lcom/android/vending/api/RequestDispatcher$RequestState;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/vending/api/RequestDispatcher$RequestState;-><init>(Lcom/android/vending/api/RequestDispatcher$1;)V

    aput-object v4, v3, v1

    .line 700
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->requiresEfe()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 701
    iget-object v3, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->efeEncryptedFields:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 702
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Only one request with EFE encrypted fields supported per batch."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 705
    :cond_5
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->getEfeEncryptedFields()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->efeEncryptedFields:Ljava/lang/String;

    .line 708
    :cond_6
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->getPostParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 709
    iget-object v3, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->postParams:[Lorg/apache/http/NameValuePair;

    if-eqz v3, :cond_7

    .line 710
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Only one request with POST parameter supported per batch."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 713
    :cond_7
    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$BatchRequest;->getPostParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->postParams:[Lorg/apache/http/NameValuePair;

    .line 681
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 716
    .end local v0           #batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    :cond_9
    iget-boolean v3, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->usesSecureToken:Z

    if-eqz v3, :cond_a

    .line 717
    iput-boolean v6, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requiresSsl:Z

    .line 721
    :cond_a
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/android/vending/model/ApiDefsMessageTypes;->REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v3, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requestWrapper:Lcom/google/common/io/protocol/ProtoBuf;

    .line 722
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/vending/api/RequestDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->batchRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isLicensing:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->altRequestSuggest:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->efeEncryptedFields:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isBillingRequest:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requiresSsl:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/vending/api/RequestDispatcher$RequestContext;)[Lcom/android/vending/api/RequestDispatcher$RequestState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requestStates:[Lcom/android/vending/api/RequestDispatcher$RequestState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requestWrapper:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->allCachedOrPostponed:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requireRpc:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isProcessedFromCache:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    iput-boolean p1, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->isProcessedFromCache:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Lcom/android/vending/model/RequestProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requestProperties:Lcom/android/vending/model/RequestProperties;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/vending/api/RequestDispatcher$RequestContext;Lcom/android/vending/model/RequestProperties;)Lcom/android/vending/model/RequestProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requestProperties:Lcom/android/vending/model/RequestProperties;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->usesSecureToken:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/vending/api/RequestDispatcher$RequestContext;)[Lorg/apache/http/NameValuePair;
    .locals 1
    .parameter "x0"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->postParams:[Lorg/apache/http/NameValuePair;

    return-object v0
.end method


# virtual methods
.method public isAllCachedOrPostponed()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->allCachedOrPostponed:Z

    return v0
.end method

.method public isAsyncRequestNeeded()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->allCachedOrPostponed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/api/RequestDispatcher$RequestContext;->requireRpc:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
