.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private displayUrl_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14627
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14781
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14834
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14628
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 14629
    return-void
.end method

.method static synthetic access$17100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14634
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 14632
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 2

    .prologue
    .line 14657
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    .line 14658
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14659
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 14661
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 5

    .prologue
    .line 14665
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 14666
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14667
    const/4 v2, 0x0

    .line 14668
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14669
    or-int/lit8 v2, v2, 0x1

    .line 14671
    :cond_0
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14672
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14673
    or-int/lit8 v2, v2, 0x2

    .line 14675
    :cond_1
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14676
    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 14677
    or-int/lit8 v1, v2, 0x4

    .line 14679
    :goto_0
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14680
    invoke-static {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;I)I

    .line 14681
    return-object v0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14638
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14640
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14641
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14642
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14643
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14644
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14645
    return-object p0
.end method

.method public clearDisplayUrl()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14817
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14818
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDisplayUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14820
    return-object p0
.end method

.method public clearName()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14870
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14871
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14873
    return-object p0
.end method

.method public clearUrl()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1

    .prologue
    .line 14764
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14765
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14767
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 2

    .prologue
    .line 14649
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

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
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14622
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    .locals 1

    .prologue
    .line 14653
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14786
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14787
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14788
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14789
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14792
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getDisplayUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14797
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14798
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14799
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14801
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14804
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14839
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14840
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14841
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14842
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14845
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14850
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14851
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14852
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14854
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14857
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 14733
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14734
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 14735
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 14736
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14739
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .prologue
    .line 14744
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14745
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 14746
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14748
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14751
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public hasDisplayUrl()Z
    .locals 2

    .prologue
    .line 14783
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

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

.method public hasName()Z
    .locals 2

    .prologue
    .line 14836
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

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

.method public hasUrl()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 14730
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 14705
    const/4 v0, 0x1

    return v0
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
    .line 14622
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14622
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

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
    .line 14622
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14712
    const/4 v1, 0x0

    .line 14714
    :try_start_0
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14719
    if-eqz v0, :cond_0

    .line 14720
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    .line 14723
    :cond_0
    return-object p0

    .line 14715
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 14716
    :try_start_1
    invoke-virtual {v2}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14717
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14719
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 14720
    invoke-virtual {p0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;

    :cond_1
    throw v0

    .line 14719
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14685
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 14701
    :goto_0
    return-object v0

    .line 14686
    :cond_0
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14687
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14688
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14691
    :cond_1
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->hasDisplayUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14692
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14693
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14696
    :cond_2
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14697
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14698
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;->access$17500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    :cond_3
    move-object v0, p0

    .line 14701
    goto :goto_0
.end method

.method public setDisplayUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14808
    if-nez p1, :cond_0

    .line 14809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14811
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14812
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14814
    return-object p0
.end method

.method public setDisplayUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14824
    if-nez p1, :cond_0

    .line 14825
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14827
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14828
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->displayUrl_:Ljava/lang/Object;

    .line 14830
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14861
    if-nez p1, :cond_0

    .line 14862
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14864
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14865
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14867
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14877
    if-nez p1, :cond_0

    .line 14878
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14880
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14881
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14883
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14755
    if-nez p1, :cond_0

    .line 14756
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14758
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14759
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14761
    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;
    .locals 1
    .parameter

    .prologue
    .line 14771
    if-nez p1, :cond_0

    .line 14772
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14774
    :cond_0
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->bitField0_:I

    .line 14775
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$GoToResponseItem$Builder;->url_:Ljava/lang/Object;

    .line 14777
    return-object p0
.end method
