.class public Lcom/android/vending/model/PurchasePostRequest;
.super Lcom/android/vending/model/BaseRequest;
.source "PurchasePostRequest.java"


# instance fields
.field private mBankAccount:Ljava/lang/String;

.field private mCcNumber:Ljava/lang/String;

.field private mCvc:Ljava/lang/String;

.field private mRoutingNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/vending/model/BaseRequest;-><init>(I)V

    .line 28
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->PURCHASE_POST_REQUEST_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "gaiaAuthToken"
    .parameter "assetId"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/vending/model/PurchasePostRequest;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/vending/model/PurchasePostRequest;->setGaiaAuthToken(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/android/vending/model/PurchasePostRequest;->setAssetId(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/CarrierBillingInstrument;)V
    .locals 0
    .parameter "gaiaAuthToken"
    .parameter "assetId"
    .parameter "transactionId"
    .parameter "cbInstrument"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/vending/model/PurchasePostRequest;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/vending/model/PurchasePostRequest;->setGaiaAuthToken(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/android/vending/model/PurchasePostRequest;->setAssetId(Ljava/lang/String;)V

    .line 114
    if-eqz p3, :cond_0

    .line 115
    invoke-virtual {p0, p3}, Lcom/android/vending/model/PurchasePostRequest;->setTransactionId(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/vending/model/PurchasePostRequest;->setCarrierBillingInstrument(Lcom/android/vending/model/CarrierBillingInstrument;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/CreditCard;)V
    .locals 0
    .parameter "gaiaAuthToken"
    .parameter "assetId"
    .parameter "transactionId"
    .parameter "creditCard"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/vending/model/PurchasePostRequest;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/vending/model/PurchasePostRequest;->setGaiaAuthToken(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/vending/model/PurchasePostRequest;->setAssetId(Ljava/lang/String;)V

    .line 74
    if-eqz p3, :cond_0

    .line 75
    invoke-virtual {p0, p3}, Lcom/android/vending/model/PurchasePostRequest;->setTransactionId(Ljava/lang/String;)V

    .line 77
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/vending/model/PurchasePostRequest;->setCreditCard(Lcom/android/vending/model/CreditCard;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/DebitCard;)V
    .locals 0
    .parameter "gaiaAuthToken"
    .parameter "assetId"
    .parameter "transactionId"
    .parameter "debitCard"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/vending/model/PurchasePostRequest;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/vending/model/PurchasePostRequest;->setGaiaAuthToken(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/android/vending/model/PurchasePostRequest;->setAssetId(Ljava/lang/String;)V

    .line 94
    if-eqz p3, :cond_0

    .line 95
    invoke-virtual {p0, p3}, Lcom/android/vending/model/PurchasePostRequest;->setTransactionId(Ljava/lang/String;)V

    .line 97
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/vending/model/PurchasePostRequest;->setDebitCard(Lcom/android/vending/model/DebitCard;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "gaiaAuthToken"
    .parameter "assetId"
    .parameter "transactionId"
    .parameter "billingInstrumentId"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/vending/model/PurchasePostRequest;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/vending/model/PurchasePostRequest;->setGaiaAuthToken(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/android/vending/model/PurchasePostRequest;->setAssetId(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p3}, Lcom/android/vending/model/PurchasePostRequest;->setTransactionId(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p4}, Lcom/android/vending/model/PurchasePostRequest;->setBillingInstrumentId(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private setCarrierBillingInstrument(Lcom/android/vending/model/CarrierBillingInstrument;)V
    .locals 3
    .parameter "cbInstrument"

    .prologue
    const/4 v2, 0x4

    .line 261
    iget-object v1, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 263
    .local v0, biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 264
    const/16 v1, 0x9

    invoke-virtual {p1}, Lcom/android/vending/model/CarrierBillingInstrument;->getProto()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 266
    return-void
.end method


# virtual methods
.method public getAssetId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBillingInstrumentId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 179
    iget-object v1, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 182
    .local v0, biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .end local v0           #biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-object v1

    .restart local v0       #biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    move-object v1, v4

    .line 187
    goto :goto_0

    .end local v0           #biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    move-object v1, v4

    .line 190
    goto :goto_0
.end method

.method public getCreditCard()Lcom/android/vending/model/CreditCard;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 162
    iget-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 165
    .local v0, biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-virtual {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 168
    .local v2, ccInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v1, Lcom/android/vending/model/CreditCard;

    iget-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mCcNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vending/model/PurchasePostRequest;->mCvc:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/vending/model/CreditCard;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)V

    .local v1, cc:Lcom/android/vending/model/CreditCard;
    move-object v3, v1

    .line 174
    .end local v0           #biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v1           #cc:Lcom/android/vending/model/CreditCard;
    .end local v2           #ccInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    return-object v3

    .restart local v0       #biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    move-object v3, v6

    .line 171
    goto :goto_0

    .end local v0           #biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    move-object v3, v6

    .line 174
    goto :goto_0
.end method

.method public getGaiaAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestType()Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAssetId(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 207
    return-void
.end method

.method public setBillingInstrumentId(Ljava/lang/String;)V
    .locals 3
    .parameter "billingInstrumentId"

    .prologue
    const/4 v2, 0x4

    .line 269
    iget-object v1, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 271
    .local v0, biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 272
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 274
    return-void
.end method

.method public setCarrierBillingInstrumentKey(Lcom/android/vending/model/LocalBillingData;)V
    .locals 3
    .parameter "localBillingData"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {p1}, Lcom/android/vending/model/LocalBillingData;->getSimIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public setCreditCard(Lcom/android/vending/model/CreditCard;)V
    .locals 7
    .parameter "creditCard"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    .line 214
    iget-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 216
    .local v1, biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v5, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 217
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/android/vending/model/ApiDefsMessageTypes;->EXTERNAL_CREDIT_CARD:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 218
    .local v2, ccBuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v6, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 220
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getLastDigits()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 221
    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getCardType()Lcom/android/vending/model/CreditCard$CardType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/CreditCard$CardType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 222
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getExpirationYear()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 223
    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getExpirationMonth()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 224
    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getPersonName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 225
    const/16 v3, 0xd

    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 226
    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->isDefault()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 227
    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    .line 228
    .local v0, address:Lcom/android/vending/model/Address;
    const/16 v3, 0x9

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 229
    const/16 v3, 0xa

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 230
    const/16 v3, 0xb

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 231
    const/16 v3, 0xc

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 233
    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mCcNumber:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Lcom/android/vending/model/CreditCard;->getCVC()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mCvc:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setDebitCard(Lcom/android/vending/model/DebitCard;)V
    .locals 6
    .parameter "debitCard"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    .line 239
    iget-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 241
    .local v1, biInfoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v4, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 242
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/android/vending/model/ApiDefsMessageTypes;->EXTERNAL_CREDIT_CARD:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 243
    .local v2, dcBuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v5, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 245
    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/android/vending/model/DebitCard;->getLastDigits()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 246
    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/android/vending/model/DebitCard;->getPersonName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 247
    const/16 v3, 0xd

    invoke-virtual {p1}, Lcom/android/vending/model/DebitCard;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 248
    const/16 v3, 0x8

    invoke-virtual {p1}, Lcom/android/vending/model/DebitCard;->isDefault()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 249
    invoke-virtual {p1}, Lcom/android/vending/model/DebitCard;->getAddress()Lcom/android/vending/model/Address;

    move-result-object v0

    .line 250
    .local v0, address:Lcom/android/vending/model/Address;
    const/16 v3, 0x9

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 251
    const/16 v3, 0xa

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 252
    const/16 v3, 0xb

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 253
    const/16 v3, 0xc

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 255
    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lcom/android/vending/model/DebitCard;->getBankAccount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mBankAccount:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Lcom/android/vending/model/DebitCard;->getRoutingNumber()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/PurchasePostRequest;->mRoutingNumber:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setGaiaAuthToken(Ljava/lang/String;)V
    .locals 2
    .parameter "gaiaAuthToken"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 203
    return-void
.end method

.method public setPackageParams(Ljava/lang/String;I[B)V
    .locals 3
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "bytes"

    .prologue
    .line 285
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->SIGNATURE_HASH_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 286
    .local v0, sigProto:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 287
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 288
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 289
    iget-object v1, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 290
    return-void
.end method

.method public setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V
    .locals 3
    .parameter "productType"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$ProductType;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 282
    return-void
.end method

.method public setTosAccepted(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 278
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 2
    .parameter "transactionId"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/vending/model/PurchasePostRequest;->mRequestProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 211
    return-void
.end method
