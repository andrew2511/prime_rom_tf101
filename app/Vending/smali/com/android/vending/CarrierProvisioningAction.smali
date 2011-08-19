.class public Lcom/android/vending/CarrierProvisioningAction;
.super Ljava/lang/Object;
.source "CarrierProvisioningAction.java"

# interfaces
.implements Lcom/android/vending/ChainAction;


# instance fields
.field private mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

.field private mNextAction:Lcom/android/vending/ChainAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getBillingDatabase()Lcom/android/vending/api/BillingDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/CarrierProvisioningAction;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/CarrierProvisioningAction;)Lcom/android/vending/api/BillingDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/vending/CarrierProvisioningAction;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    return-object v0
.end method

.method private performProvisioningRequest(Lcom/android/vending/model/BillingParameter;)V
    .locals 5
    .parameter "billingParam"

    .prologue
    .line 73
    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_CARRIER_PROVISIONING_RETRY_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 74
    .local v0, retryInterval:J
    iget-object v2, p0, Lcom/android/vending/CarrierProvisioningAction;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/vending/api/BillingDatabase;->setEarliestNextTime(J)V

    .line 75
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/vending/CarrierProvisioningAction$1;

    invoke-direct {v3, p0, p1}, Lcom/android/vending/CarrierProvisioningAction$1;-><init>(Lcom/android/vending/CarrierProvisioningAction;Lcom/android/vending/model/BillingParameter;)V

    const-string v4, "GetProvisioningThread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method


# virtual methods
.method public runAction(Lcom/android/vending/BaseActivity;)V
    .locals 15
    .parameter "activity"

    .prologue
    .line 43
    new-instance v3, Lcom/android/vending/api/BillingParametersService;

    invoke-direct {v3}, Lcom/android/vending/api/BillingParametersService;-><init>()V

    .line 44
    .local v3, billingParameters:Lcom/android/vending/api/BillingParametersService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/vending/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 45
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v3, v4}, Lcom/android/vending/api/BillingParametersService;->getBillingParameter(Landroid/content/Context;)Lcom/android/vending/model/BillingParameter;

    move-result-object v2

    .line 47
    .local v2, billingParam:Lcom/android/vending/model/BillingParameter;
    if-nez v2, :cond_0

    .line 48
    invoke-virtual/range {p0 .. p1}, Lcom/android/vending/CarrierProvisioningAction;->runNextAction(Lcom/android/vending/BaseActivity;)V

    .line 70
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v11, p0, Lcom/android/vending/CarrierProvisioningAction;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v11}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v1

    .line 53
    .local v1, billingData:Lcom/android/vending/model/LocalBillingData;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 54
    .local v9, now:J
    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getLastRetrievedTime()J

    move-result-wide v7

    .line 55
    .local v7, lastCheck:J
    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    move v6, v11

    .line 56
    .local v6, isProvisioned:Z
    :goto_1
    sub-long v11, v9, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-lez v11, :cond_5

    const/4 v11, 0x1

    move v5, v11

    .line 57
    .local v5, isBootSinceLastCheck:Z
    :goto_2
    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getEarliestNextCheckTime()J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    move v0, v11

    .line 63
    .local v0, afterEarliestPerformTime:Z
    :goto_3
    if-eqz v0, :cond_3

    if-nez v6, :cond_1

    if-nez v5, :cond_2

    :cond_1
    sget-object v11, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PROVISIONING_REFRESH:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getLastRetrievedTime()J

    move-result-wide v12

    invoke-static {v4, v11, v12, v13}, Lcom/android/vending/util/RequestIntervalUtil;->intervalPassed(Landroid/content/Context;Lcom/android/vending/util/RequestIntervalUtil$IntervalType;J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 67
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/vending/CarrierProvisioningAction;->performProvisioningRequest(Lcom/android/vending/model/BillingParameter;)V

    .line 69
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/vending/CarrierProvisioningAction;->runNextAction(Lcom/android/vending/BaseActivity;)V

    goto :goto_0

    .line 55
    .end local v0           #afterEarliestPerformTime:Z
    .end local v5           #isBootSinceLastCheck:Z
    .end local v6           #isProvisioned:Z
    :cond_4
    const/4 v11, 0x0

    move v6, v11

    goto :goto_1

    .line 56
    .restart local v6       #isProvisioned:Z
    :cond_5
    const/4 v11, 0x0

    move v5, v11

    goto :goto_2

    .line 57
    .restart local v5       #isBootSinceLastCheck:Z
    :cond_6
    const/4 v11, 0x0

    move v0, v11

    goto :goto_3
.end method

.method public runNextAction(Lcom/android/vending/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/vending/CarrierProvisioningAction;->mNextAction:Lcom/android/vending/ChainAction;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/vending/CarrierProvisioningAction;->mNextAction:Lcom/android/vending/ChainAction;

    invoke-interface {v0, p1}, Lcom/android/vending/ChainAction;->runAction(Lcom/android/vending/BaseActivity;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setNext(Lcom/android/vending/ChainAction;)V
    .locals 0
    .parameter "nextAction"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/vending/CarrierProvisioningAction;->mNextAction:Lcom/android/vending/ChainAction;

    .line 96
    return-void
.end method
