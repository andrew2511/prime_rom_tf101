.class public Lcom/android/vending/model/CarrierBillingInstrument;
.super Ljava/lang/Object;
.source "CarrierBillingInstrument.java"


# instance fields
.field private mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->EXTERNAL_CARRIER_BILLING_INSTRUMENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 19
    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 134
    .local v0, proto:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/vending/model/EncryptedSubscriberInfo;

    invoke-direct {v1, v0}, Lcom/android/vending/model/EncryptedSubscriberInfo;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProto()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getServerHash()J
    .locals 8

    .prologue
    .line 142
    new-instance v0, Lcom/android/vending/model/Address;

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getAddress1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, address:Lcom/android/vending/model/Address;
    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getSubscriberName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getTransactionLimit()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierBillingInstrument;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v7

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/android/vending/model/CarrierProvisioningResponse;->getServerHash(Ljava/lang/String;Lcom/android/vending/model/Address;Ljava/lang/String;Ljava/lang/String;JLcom/android/vending/model/EncryptedSubscriberInfo;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberCurrency()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionLimit()J
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 2
    .parameter "accountType"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 42
    return-void
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 2
    .parameter "address1"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 2
    .parameter "address2"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 2
    .parameter "city"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 95
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 2
    .parameter "country"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 119
    return-void
.end method

.method public setEncryptedSubscriberInfo(Lcom/android/vending/model/EncryptedSubscriberInfo;)V
    .locals 3
    .parameter "encryptedSubscriberInfo"

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 127
    .local v0, proto:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v1, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 129
    return-void
.end method

.method public setInstrumentKey(Ljava/lang/String;)V
    .locals 2
    .parameter "instrumentKey"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 24
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 111
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public setSubscriberCurrency(Ljava/lang/String;)V
    .locals 2
    .parameter "subscriberCurrency"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public setSubscriberIdentifier(Ljava/lang/String;)V
    .locals 2
    .parameter "subscriberIdentifier"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 33
    return-void
.end method

.method public setSubscriberName(Ljava/lang/String;)V
    .locals 2
    .parameter "subscriberName"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public setTransactionLimit(J)V
    .locals 2
    .parameter "transactionLimit"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/vending/model/CarrierBillingInstrument;->mInstrumentProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 62
    return-void
.end method
