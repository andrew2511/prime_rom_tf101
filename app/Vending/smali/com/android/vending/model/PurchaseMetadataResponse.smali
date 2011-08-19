.class public Lcom/android/vending/model/PurchaseMetadataResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "PurchaseMetadataResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_METADATA_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public getBillingCountries()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/model/Country;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 28
    iget-object v4, p0, Lcom/android/vending/model/PurchaseMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 29
    iget-object v4, p0, Lcom/android/vending/model/PurchaseMetadataResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v4, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 30
    .local v0, countries:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 31
    .local v2, numCountries:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/Country;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 33
    new-instance v4, Lcom/android/vending/model/Country;

    invoke-virtual {v0, v6, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vending/model/Country;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 38
    .end local v0           #countries:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v1           #i:I
    .end local v2           #numCountries:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/Country;>;"
    :goto_1
    return-object v4

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1
.end method
