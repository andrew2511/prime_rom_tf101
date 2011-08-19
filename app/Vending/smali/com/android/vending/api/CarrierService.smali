.class public Lcom/android/vending/api/CarrierService;
.super Ljava/lang/Object;
.source "CarrierService.java"


# instance fields
.field private mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

.field private mBillingParameter:Lcom/android/vending/model/BillingParameter;

.field private mRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/model/BillingParameter;)V
    .locals 1
    .parameter "radioHttpClient"
    .parameter "billingParam"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/vending/api/CarrierService;->mRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;

    .line 52
    iput-object p2, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    .line 53
    new-instance v0, Lcom/android/vending/BillingEventRecorder;

    invoke-direct {v0}, Lcom/android/vending/BillingEventRecorder;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    .line 54
    return-void
.end method

.method private buildAddress(Lorg/json/JSONObject;)Lcom/android/vending/model/Address;
    .locals 7
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 164
    :cond_0
    const-string v0, "address1"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, address1:Ljava/lang/String;
    const-string v0, "address2"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, address2:Ljava/lang/String;
    const-string v0, "city"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, city:Ljava/lang/String;
    const-string v0, "state"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, state:Ljava/lang/String;
    const-string v0, "postalcode"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, postalCode:Ljava/lang/String;
    const-string v0, "country"

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, country:Ljava/lang/String;
    new-instance v0, Lcom/android/vending/model/Address;

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/model/Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private buildCredentialsResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierCredentialsResponse;
    .locals 3
    .parameter "jsonResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/android/vending/model/CarrierCredentialsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CarrierCredentialsResponse;-><init>()V

    .line 152
    .local v0, response:Lcom/android/vending/model/CarrierCredentialsResponse;
    const-string v1, "credential"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setCredentials(Ljava/lang/String;)V

    .line 153
    const-string v1, "credentialexpirationtime"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/CarrierCredentialsResponse;->setExpirationTime(J)V

    .line 154
    const-string v1, "isprovisioned"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setIsProvisioned(Z)V

    .line 155
    const-string v1, "passwordinvalid"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setIsPasswordInvalid(Z)V

    .line 156
    return-object v0
.end method

.method private buildEncryptedSubscriberInfo(Lorg/json/JSONObject;)Lcom/android/vending/model/EncryptedSubscriberInfo;
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    invoke-direct {v0}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;-><init>()V

    const-string v1, "message"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setMessage(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "encryptedkey"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setEncryptedKey(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "signature"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setSignature(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "initvector"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setInitVector(Ljava/lang/String;)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "googlekeyversion"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setGoogleKeyVersion(I)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    const-string v1, "carrierkeyversion"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->setCarrierKeyVersion(I)Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->build()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private buildProvisioningResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierProvisioningResponse;
    .locals 3
    .parameter "jsonResult"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;-><init>()V

    .line 127
    .local v0, response:Lcom/android/vending/model/CarrierProvisioningResponse;
    const-string v1, "version"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setApiVersion(I)V

    .line 128
    const-string v1, "isprovisioned"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setProvisioned(Z)V

    .line 129
    const-string v1, "provisioningid"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setProvisioningId(Ljava/lang/String;)V

    .line 130
    const-string v1, "tosurl"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTosUrl(Ljava/lang/String;)V

    .line 131
    const-string v1, "tosversion"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTosVersion(Ljava/lang/String;)V

    .line 132
    const-string v1, "subscribercurrency"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberCurrency(Ljava/lang/String;)V

    .line 133
    const-string v1, "transactionlimit"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->setTransactionLimit(J)V

    .line 134
    const-string v1, "subscribername"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberName(Ljava/lang/String;)V

    .line 135
    const-string v1, "subscriberidentifier"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberIdentifier(Ljava/lang/String;)V

    .line 136
    const-string v1, "accounttype"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setAccountType(Ljava/lang/String;)V

    .line 137
    const-string v1, "subscriberaddress"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vending/api/CarrierService;->buildAddress(Lorg/json/JSONObject;)Lcom/android/vending/model/Address;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setSubscriberAddress(Lcom/android/vending/model/Address;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/android/vending/api/CarrierService;->buildCredentialsResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCredentialsResponse(Lcom/android/vending/model/CarrierCredentialsResponse;)V

    .line 139
    const-string v1, "passwordrequired"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordRequired(Z)V

    .line 140
    const-string v1, "passwordprompt"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordPrompt(Ljava/lang/String;)V

    .line 141
    const-string v1, "passwordforgoturl"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setPasswordForgotUrl(Ljava/lang/String;)V

    .line 142
    const-string v1, "encryptedsubscriberinfo"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/vending/api/CarrierService;->buildEncryptedSubscriberInfo(Lorg/json/JSONObject;)Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setEncryptedSubscriberInfo(Lcom/android/vending/model/EncryptedSubscriberInfo;)V

    .line 144
    const-string v1, "addresssnippet"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setAddressSnippet(Ljava/lang/String;)V

    .line 145
    const-string v1, "country"

    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/CarrierService;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->setCountry(Ljava/lang/String;)V

    .line 146
    return-object v0
.end method

.method private getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1
    .parameter "jsonResult"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCredentialsParametersAsJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "provisioningId"
    .parameter "password"

    .prologue
    .line 265
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v3, "format"

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    iget-object v3, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v3}, Lcom/android/vending/model/BillingParameter;->getApiVersion()I

    move-result v0

    .line 269
    .local v0, apiVersion:I
    if-gtz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    .line 272
    :cond_0
    const-string v3, "version"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 274
    if-eqz p1, :cond_1

    .line 275
    const-string v3, "provisioningId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    const-string v3, "password"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_2
    return-object v2

    .line 281
    .end local v0           #apiVersion:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 282
    .local v1, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected error building JSON object"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .parameter "jsonResult"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 2
    .parameter "jsonResult"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 207
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "jsonResult"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "acceptedTosVersion"

    .prologue
    .line 244
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 245
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v3, "format"

    const-string v4, "json"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    iget-object v3, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v3}, Lcom/android/vending/model/BillingParameter;->getApiVersion()I

    move-result v0

    .line 248
    .local v0, apiVersion:I
    if-gtz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 251
    :cond_0
    const-string v3, "version"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    if-eqz p1, :cond_1

    .line 254
    const-string v3, "acceptedTosVersion"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_1
    return-object v2

    .line 257
    .end local v0           #apiVersion:I
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 258
    .local v1, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected error building JSON object"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "jsonResult"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .parameter "url"
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/api/CarrierService;->mRadioHttpClient:Lcom/android/vending/api/RadioHttpClient;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/vending/api/RadioHttpClient;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, content:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 118
    .end local v0           #content:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 119
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while performing request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 120
    throw v1
.end method

.method private toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 229
    .local v0, inputIter:Ljava/util/Iterator;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v3, resultObj:Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 234
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 235
    check-cast v2, Lorg/json/JSONObject;

    .end local v2           #o:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 237
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 239
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public getCredentials(Lcom/android/vending/model/CarrierProvisioningResponse;Ljava/lang/String;)Lcom/android/vending/model/CarrierCredentialsResponse;
    .locals 8
    .parameter "provisioning"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/android/vending/model/BillingEventRequest;

    invoke-direct {v0}, Lcom/android/vending/model/BillingEventRequest;-><init>()V

    .line 83
    .local v0, billingEvent:Lcom/android/vending/model/BillingEventRequest;
    sget-object v5, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->CARRIER_BILLING_GET_CREDENTIALS:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    invoke-virtual {v0, v5}, Lcom/android/vending/model/BillingEventRequest;->setEventType(Lcom/android/vending/model/BillingEventRequest$BillingEventType;)V

    .line 84
    iget-object v5, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v5}, Lcom/android/vending/model/BillingParameter;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/vending/model/BillingEventRequest;->setBillingParametersId(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getProvisioningId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/vending/api/CarrierService;->getCredentialsParametersAsJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 90
    .local v3, params:Lorg/json/JSONObject;
    :try_start_0
    iget-object v5, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v5}, Lcom/android/vending/model/BillingParameter;->getCredentialsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/vending/api/CarrierService;->performRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 91
    .local v2, jsonResult:Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 92
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->buildCredentialsResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v4

    .line 93
    .local v4, response:Lcom/android/vending/model/CarrierCredentialsResponse;
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/vending/model/CarrierCredentialsResponse;->isValid(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/vending/model/BillingEventRequest;->setResultSuccess(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    iget-object v5, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    invoke-virtual {v5, v0}, Lcom/android/vending/BillingEventRecorder;->record(Lcom/android/vending/model/BillingEventRequest;)V

    return-object v4

    .line 96
    .end local v2           #jsonResult:Lorg/json/JSONObject;
    .end local v4           #response:Lcom/android/vending/model/CarrierCredentialsResponse;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 97
    .local v1, e:Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/vending/model/BillingEventRequest;->setExceptionOccurred(Ljava/lang/Exception;)V

    .line 98
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON exception while getting credentials - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v1           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    invoke-virtual {v6, v0}, Lcom/android/vending/BillingEventRecorder;->record(Lcom/android/vending/model/BillingEventRequest;)V

    throw v5

    .line 99
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 100
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/android/vending/model/BillingEventRequest;->setExceptionOccurred(Ljava/lang/Exception;)V

    .line 101
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getProvisioning(Ljava/lang/String;)Lcom/android/vending/model/CarrierProvisioningResponse;
    .locals 7
    .parameter "acceptedTosVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/android/vending/model/BillingEventRequest;

    invoke-direct {v0}, Lcom/android/vending/model/BillingEventRequest;-><init>()V

    .line 59
    .local v0, billingEvent:Lcom/android/vending/model/BillingEventRequest;
    sget-object v4, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->CARRIER_BILLING_GET_PROVISIONING:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    invoke-virtual {v0, v4}, Lcom/android/vending/model/BillingEventRequest;->setEventType(Lcom/android/vending/model/BillingEventRequest$BillingEventType;)V

    .line 60
    iget-object v4, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v4}, Lcom/android/vending/model/BillingParameter;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/vending/model/BillingEventRequest;->setBillingParametersId(Ljava/lang/String;)V

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/android/vending/api/CarrierService;->mBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v4}, Lcom/android/vending/model/BillingParameter;->getProvisioningUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/vending/api/CarrierService;->getProvisioningParametersAsJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/vending/api/CarrierService;->performRequest(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    .local v2, jsonResult:Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->toLowerCase(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 66
    invoke-direct {p0, v2}, Lcom/android/vending/api/CarrierService;->buildProvisioningResponse(Lorg/json/JSONObject;)Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v3

    .line 67
    .local v3, response:Lcom/android/vending/model/CarrierProvisioningResponse;
    invoke-virtual {v3}, Lcom/android/vending/model/CarrierProvisioningResponse;->isProvisioned()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/vending/model/BillingEventRequest;->setResultSuccess(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    iget-object v4, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    invoke-virtual {v4, v0}, Lcom/android/vending/BillingEventRecorder;->record(Lcom/android/vending/model/BillingEventRequest;)V

    return-object v3

    .line 69
    .end local v2           #jsonResult:Lorg/json/JSONObject;
    .end local v3           #response:Lcom/android/vending/model/CarrierProvisioningResponse;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 70
    .local v1, e:Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/vending/model/BillingEventRequest;->setExceptionOccurred(Ljava/lang/Exception;)V

    .line 71
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON exception while provisioning - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .end local v1           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/vending/api/CarrierService;->mBillingEventRecorder:Lcom/android/vending/BillingEventRecorder;

    invoke-virtual {v5, v0}, Lcom/android/vending/BillingEventRecorder;->record(Lcom/android/vending/model/BillingEventRequest;)V

    throw v4

    .line 72
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 73
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/android/vending/model/BillingEventRequest;->setExceptionOccurred(Ljava/lang/Exception;)V

    .line 74
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
