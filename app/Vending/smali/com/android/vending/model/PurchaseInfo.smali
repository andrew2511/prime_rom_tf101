.class public Lcom/android/vending/model/PurchaseInfo;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;,
        Lcom/android/vending/model/PurchaseInfo$BillingInstrument;,
        Lcom/android/vending/model/PurchaseInfo$SignupStatus;,
        Lcom/android/vending/model/PurchaseInfo$ProductType;
    }
.end annotation


# instance fields
.field private final mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "purchaseInfoProto"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 36
    return-void
.end method

.method public static createBillingInstrumentProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 373
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_INFO_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 374
    .local v0, buf:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 375
    .local v1, instruments:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getBillingInstrument(I)Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    .locals 3
    .parameter "index"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 94
    .local v0, instruments:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-object v1
.end method

.method public getBillingInstruments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PurchaseInfo$BillingInstrument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getNumBillingInstruments()I

    move-result v1

    .line 101
    .local v1, numInstruments:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/PurchaseInfo$BillingInstrument;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/vending/model/PurchaseInfo;->getBillingInstrument(I)Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v2
.end method

.method public getEligibleInstrumentTypes()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0xd

    .line 109
    iget-object v5, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 122
    :goto_0
    return-object v5

    .line 112
    :cond_0
    iget-object v5, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 114
    .local v1, numTypes:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v4

    .line 119
    .local v4, typeCode:I
    invoke-static {v4}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->fromProtoType(I)Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v3

    .line 120
    .local v3, type:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3           #type:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    .end local v4           #typeCode:I
    :cond_1
    move-object v5, v2

    .line 122
    goto :goto_0
.end method

.method public getErrorInputFields()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x9

    .line 155
    iget-object v5, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    iget-object v5, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 157
    .local v0, errorFieldCount:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 159
    iget-object v5, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v5, v6, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v2

    .line 160
    .local v2, fieldCode:I
    invoke-static {v2}, Lcom/android/vending/model/InputField;->fromProtoInputField(I)Lcom/android/vending/model/InputField;

    move-result-object v1

    .line 161
    .local v1, field:Lcom/android/vending/model/InputField;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #field:Lcom/android/vending/model/InputField;
    .end local v2           #fieldCode:I
    :cond_0
    move-object v5, v4

    .line 165
    .end local v0           #errorFieldCount:I
    .end local v3           #i:I
    .end local v4           #result:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    :goto_1
    return-object v5

    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_1
.end method

.method public getNumBillingInstruments()I
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->hasBillingInstruments()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 84
    .local v0, instruments:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 87
    .end local v0           #instruments:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRefundPolicyHtml()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 69
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedBillingInstrument()Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getNumBillingInstruments()I

    move-result v2

    .line 141
    .local v2, numInstruments:I
    if-nez v2, :cond_0

    move-object v3, v4

    .line 150
    :goto_0
    return-object v3

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getSelectedBillingInstrumentId()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, defaultBillingInstrumentId:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/vending/model/PurchaseInfo;->getBillingInstrument(I)Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/vending/model/PurchaseInfo;->getBillingInstrument(I)Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    move-result-object v3

    goto :goto_0

    .line 145
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v4

    .line 150
    goto :goto_0
.end method

.method public getSelectedBillingInstrumentId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 132
    .local v0, instruments:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getShoppingCart()Lcom/android/vending/model/ShoppingCart;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 55
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/vending/model/ShoppingCart;

    iget-object v1, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vending/model/ShoppingCart;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSignupStatus()Lcom/android/vending/model/PurchaseInfo$SignupStatus;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;->SIGNED_UP:Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;->NEW_USER:Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    goto :goto_0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasBillingInstruments()Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PurchaseInfo=, SignupStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getSignupStatus()Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ShoppingCart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getShoppingCart()Lcom/android/vending/model/ShoppingCart;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RefundPolicy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getRefundPolicyHtml()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "[]"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->hasBillingInstruments()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Instruments=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getBillingInstruments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 352
    .local v2, instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 344
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getRefundPolicyHtml()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 354
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #result:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], DefaultBillingInstrument="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getSelectedBillingInstrumentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ErrorFields=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo;->getErrorInputFields()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/InputField;

    .line 358
    .local v0, field:Lcom/android/vending/model/InputField;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 360
    .end local v0           #field:Lcom/android/vending/model/InputField;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    return-object v3
.end method

.method public userCanAddGdd()Z
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 181
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo;->mPurchaseInfoProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
