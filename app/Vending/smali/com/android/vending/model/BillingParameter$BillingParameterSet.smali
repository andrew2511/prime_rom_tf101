.class public Lcom/android/vending/model/BillingParameter$BillingParameterSet;
.super Ljava/lang/Object;
.source "BillingParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/BillingParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillingParameterSet"
.end annotation


# instance fields
.field private mBillingParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

.field private mBillingParameterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/vending/model/BillingParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 6
    .parameter "proto"

    .prologue
    const/4 v5, 0x4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_MARKET_METADATA_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v2, p0, Lcom/android/vending/model/BillingParameter$BillingParameterSet;->mBillingParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 85
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 87
    .local v1, numBillingParameters:I
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v2, p0, Lcom/android/vending/model/BillingParameter$BillingParameterSet;->mBillingParameterSet:Ljava/util/Set;

    .line 88
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/vending/model/BillingParameter$BillingParameterSet;->mBillingParameterSet:Ljava/util/Set;

    new-instance v3, Lcom/android/vending/model/BillingParameter;

    invoke-virtual {p1, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/vending/model/BillingParameter;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v2, p0, Lcom/android/vending/model/BillingParameter$BillingParameterSet;->mBillingParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p1, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public getParameters()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/vending/model/BillingParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter$BillingParameterSet;->mBillingParameterSet:Ljava/util/Set;

    return-object v0
.end method

.method public getProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter$BillingParameterSet;->mBillingParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method
