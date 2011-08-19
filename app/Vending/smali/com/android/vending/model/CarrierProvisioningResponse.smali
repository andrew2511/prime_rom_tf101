.class public Lcom/android/vending/model/CarrierProvisioningResponse;
.super Ljava/lang/Object;
.source "CarrierProvisioningResponse.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mAddressSnippet:Ljava/lang/String;

.field private mApiVersion:I

.field private mCarrierIconId:Ljava/lang/String;

.field private mCarrierId:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCredentialsResponse:Lcom/android/vending/model/CarrierCredentialsResponse;

.field private mEncryptedSubscriberInfo:Lcom/android/vending/model/EncryptedSubscriberInfo;

.field private mIsProvisioned:Z

.field private mPasswordForgotUrl:Ljava/lang/String;

.field private mPasswordPrompt:Ljava/lang/String;

.field private mPasswordRequired:Z

.field private mProvisioningId:Ljava/lang/String;

.field private mSubscriberAddress:Lcom/android/vending/model/Address;

.field private mSubscriberCurrency:Ljava/lang/String;

.field private mSubscriberIdentifier:Ljava/lang/String;

.field private mSubscriberName:Ljava/lang/String;

.field private mTosUrl:Ljava/lang/String;

.field private mTosVersion:Ljava/lang/String;

.field private mTransactionLimit:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServerHash(Ljava/lang/String;Lcom/android/vending/model/Address;Ljava/lang/String;Ljava/lang/String;JLcom/android/vending/model/EncryptedSubscriberInfo;)J
    .locals 9
    .parameter "name"
    .parameter "address"
    .parameter "identifier"
    .parameter "currency"
    .parameter "transactionLimit"
    .parameter "encryptedSubscriberInfo"

    .prologue
    const/4 v8, 0x7

    const-wide/16 v6, 0x25

    .line 274
    const-wide/16 v0, 0x11

    .line 275
    .local v0, result:J
    mul-long v2, v6, v0

    if-nez p0, :cond_0

    move v4, v8

    :goto_0
    int-to-long v4, v4

    add-long v0, v2, v4

    .line 276
    mul-long v2, v6, v0

    if-nez p1, :cond_1

    move v4, v8

    :goto_1
    int-to-long v4, v4

    add-long v0, v2, v4

    .line 277
    mul-long v2, v6, v0

    if-nez p2, :cond_2

    move v4, v8

    :goto_2
    int-to-long v4, v4

    add-long v0, v2, v4

    .line 278
    mul-long v2, v6, v0

    if-nez p3, :cond_3

    move v4, v8

    :goto_3
    int-to-long v4, v4

    add-long v0, v2, v4

    .line 279
    mul-long v2, v6, v0

    add-long v0, v2, p4

    .line 280
    mul-long v2, v6, v0

    if-nez p6, :cond_4

    move v4, v8

    :goto_4
    int-to-long v4, v4

    add-long v0, v2, v4

    .line 282
    return-wide v0

    .line 275
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/Address;->hashCode()I

    move-result v4

    goto :goto_1

    .line 277
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_2

    .line 278
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_3

    .line 280
    :cond_4
    invoke-virtual {p6}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_4
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mAddressSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getApiVersion()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mApiVersion:I

    return v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsResponse()Lcom/android/vending/model/CarrierCredentialsResponse;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mCredentialsResponse:Lcom/android/vending/model/CarrierCredentialsResponse;

    return-object v0
.end method

.method public getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mEncryptedSubscriberInfo:Lcom/android/vending/model/EncryptedSubscriberInfo;

    return-object v0
.end method

.method public getPasswordForgotUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mPasswordForgotUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mPasswordPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioningId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mProvisioningId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberAddress()Lcom/android/vending/model/Address;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mSubscriberAddress:Lcom/android/vending/model/Address;

    return-object v0
.end method

.method public getSubscriberCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mSubscriberCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mSubscriberIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mSubscriberName:Ljava/lang/String;

    return-object v0
.end method

.method public getTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mTosUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mTosVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionLimit()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mTransactionLimit:J

    return-wide v0
.end method

.method public isPasswordRequired()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mPasswordRequired:Z

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mIsProvisioned:Z

    return v0
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0
    .parameter "accountType"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mAccountType:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setAddressSnippet(Ljava/lang/String;)V
    .locals 0
    .parameter "addressSnippet"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mAddressSnippet:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setApiVersion(I)V
    .locals 0
    .parameter "apiVersion"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mApiVersion:I

    .line 81
    return-void
.end method

.method public setCarrierIconId(Ljava/lang/String;)V
    .locals 0
    .parameter "carrierIconId"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mCarrierIconId:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setCarrierId(Ljava/lang/String;)V
    .locals 0
    .parameter "carrierId"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mCarrierId:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setCarrierName(Ljava/lang/String;)V
    .locals 0
    .parameter "carrierName"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mCarrierName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mCountry:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setCredentialsResponse(Lcom/android/vending/model/CarrierCredentialsResponse;)V
    .locals 0
    .parameter "credentialsResponse"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mCredentialsResponse:Lcom/android/vending/model/CarrierCredentialsResponse;

    .line 189
    return-void
.end method

.method public setEncryptedSubscriberInfo(Lcom/android/vending/model/EncryptedSubscriberInfo;)V
    .locals 0
    .parameter "encryptedSubscriberInfo"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mEncryptedSubscriberInfo:Lcom/android/vending/model/EncryptedSubscriberInfo;

    .line 225
    return-void
.end method

.method public setIsProvisioned(Z)V
    .locals 0
    .parameter "isProvisioned"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mIsProvisioned:Z

    .line 89
    return-void
.end method

.method public setPasswordForgotUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "passwordForgotUrl"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mPasswordForgotUrl:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setPasswordPrompt(Ljava/lang/String;)V
    .locals 0
    .parameter "passwordPrompt"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mPasswordPrompt:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setPasswordRequired(Z)V
    .locals 0
    .parameter "passwordRequired"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mPasswordRequired:Z

    .line 165
    return-void
.end method

.method public setProvisioned(Z)V
    .locals 0
    .parameter "isProvisioned"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mIsProvisioned:Z

    .line 109
    return-void
.end method

.method public setProvisioningId(Ljava/lang/String;)V
    .locals 0
    .parameter "provisioningId"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mProvisioningId:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setSubscriberAddress(Lcom/android/vending/model/Address;)V
    .locals 0
    .parameter "subscriberAddress"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mSubscriberAddress:Lcom/android/vending/model/Address;

    .line 149
    return-void
.end method

.method public setSubscriberCurrency(Ljava/lang/String;)V
    .locals 0
    .parameter "subscriberCurrency"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mSubscriberCurrency:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSubscriberIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "subscriberIdentifier"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mSubscriberIdentifier:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setSubscriberName(Ljava/lang/String;)V
    .locals 0
    .parameter "subscriberName"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mSubscriberName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setTosUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "tosUrl"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mTosUrl:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTosVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "tosVersion"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mTosVersion:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTransactionLimit(J)V
    .locals 0
    .parameter "transactionLimit"

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/android/vending/model/CarrierProvisioningResponse;->mTransactionLimit:J

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning { apiVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getApiVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isProvisioned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->isProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", provisioningId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getProvisioningId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tosUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTosUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tosVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTosVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriberCurrency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionLimit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTransactionLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriberName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriberAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriberIdentifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", credentialsResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCredentialsResponse()Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptedSubscriberInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addressSnippet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAddressSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", country = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
