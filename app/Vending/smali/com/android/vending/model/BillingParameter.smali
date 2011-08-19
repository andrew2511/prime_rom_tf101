.class public Lcom/android/vending/model/BillingParameter;
.super Ljava/lang/Object;
.source "BillingParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/BillingParameter$BillingParameterSet;
    }
.end annotation


# instance fields
.field private mApplicableMncMcc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 4
    .parameter "proto"

    .prologue
    const/4 v3, 0x3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 25
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/model/BillingParameter;->mApplicableMncMcc:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/vending/model/BillingParameter;->mApplicableMncMcc:Ljava/util/List;

    iget-object v2, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public getApiVersion()I
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getCredentialsUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMncMcc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mApplicableMncMcc:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvisioningUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasIconId()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public isInstrumentTosRequired()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method

.method public perTransactionCredentialsRequired()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/vending/model/BillingParameter;->mParameterProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    return v0
.end method
