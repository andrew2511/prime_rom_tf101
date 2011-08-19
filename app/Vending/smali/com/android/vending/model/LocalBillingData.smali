.class public Lcom/android/vending/model/LocalBillingData;
.super Ljava/lang/Object;
.source "LocalBillingData.java"


# instance fields
.field private mAddressNeedsReview:Z

.field private mCarrierBillingShown:Z

.field private mEarliestNextCheckTime:J

.field private mGermanDebitShown:Z

.field private mLastRetrievedTime:J

.field private mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

.field private mServerSentAddress:Lcom/android/vending/model/Address;

.field private mServerUpdateHash:J

.field private mServerUpdateTime:J

.field private mSimIdentifier:Ljava/lang/String;

.field private mTosNeedsReview:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/vending/model/CarrierProvisioningResponse;JJZZZZJJLcom/android/vending/model/Address;)V
    .locals 0
    .parameter "simIdentifier"
    .parameter "provisioningData"
    .parameter "lastRetrievedTime"
    .parameter "earliestNextCheckTime"
    .parameter "tosNeedsReview"
    .parameter "addressNeedsReview"
    .parameter "carrierBillingShown"
    .parameter "germanDebitShown"
    .parameter "serverUpdateTime"
    .parameter "serverUpdateHash"
    .parameter "serverSentAddress"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/vending/model/LocalBillingData;->mSimIdentifier:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    .line 57
    iput-wide p3, p0, Lcom/android/vending/model/LocalBillingData;->mLastRetrievedTime:J

    .line 58
    iput-wide p5, p0, Lcom/android/vending/model/LocalBillingData;->mEarliestNextCheckTime:J

    .line 59
    iput-boolean p7, p0, Lcom/android/vending/model/LocalBillingData;->mTosNeedsReview:Z

    .line 60
    iput-boolean p8, p0, Lcom/android/vending/model/LocalBillingData;->mAddressNeedsReview:Z

    .line 61
    iput-boolean p9, p0, Lcom/android/vending/model/LocalBillingData;->mCarrierBillingShown:Z

    .line 62
    iput-boolean p10, p0, Lcom/android/vending/model/LocalBillingData;->mGermanDebitShown:Z

    .line 63
    iput-object p15, p0, Lcom/android/vending/model/LocalBillingData;->mServerSentAddress:Lcom/android/vending/model/Address;

    .line 64
    iput-wide p11, p0, Lcom/android/vending/model/LocalBillingData;->mServerUpdateTime:J

    .line 65
    iput-wide p13, p0, Lcom/android/vending/model/LocalBillingData;->mServerUpdateHash:J

    .line 66
    return-void
.end method


# virtual methods
.method public getCarrierName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEarliestNextCheckTime()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/vending/model/LocalBillingData;->mEarliestNextCheckTime:J

    return-wide v0
.end method

.method public getLastRetrievedTime()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/android/vending/model/LocalBillingData;->mLastRetrievedTime:J

    return-wide v0
.end method

.method public getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    return-object v0
.end method

.method public getSimIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mSimIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTosUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTosVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAddressNeedsReview()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/vending/model/LocalBillingData;->mAddressNeedsReview:Z

    return v0
.end method

.method public isCarrierBillingShown()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/vending/model/LocalBillingData;->mCarrierBillingShown:Z

    return v0
.end method

.method public isProvisioned()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSavedOnServer()Z
    .locals 4

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/android/vending/model/LocalBillingData;->mServerUpdateTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSnippetEmpty()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/LocalBillingData;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAddressSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTosNeedsReview()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/vending/model/LocalBillingData;->mTosNeedsReview:Z

    return v0
.end method
