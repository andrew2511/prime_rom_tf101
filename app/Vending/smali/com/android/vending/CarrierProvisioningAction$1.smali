.class Lcom/android/vending/CarrierProvisioningAction$1;
.super Ljava/lang/Object;
.source "CarrierProvisioningAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CarrierProvisioningAction;->performProvisioningRequest(Lcom/android/vending/model/BillingParameter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CarrierProvisioningAction;

.field final synthetic val$billingParam:Lcom/android/vending/model/BillingParameter;


# direct methods
.method constructor <init>(Lcom/android/vending/CarrierProvisioningAction;Lcom/android/vending/model/BillingParameter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/vending/CarrierProvisioningAction$1;->this$0:Lcom/android/vending/CarrierProvisioningAction;

    iput-object p2, p0, Lcom/android/vending/CarrierProvisioningAction$1;->val$billingParam:Lcom/android/vending/model/BillingParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 78
    :try_start_0
    new-instance v0, Lcom/android/vending/api/CarrierService;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getRadioHttpClient()Lcom/android/vending/api/RadioHttpClient;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vending/CarrierProvisioningAction$1;->val$billingParam:Lcom/android/vending/model/BillingParameter;

    invoke-direct {v0, v4, v5}, Lcom/android/vending/api/CarrierService;-><init>(Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/model/BillingParameter;)V

    .line 80
    .local v0, carrierService:Lcom/android/vending/api/CarrierService;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/vending/api/CarrierService;->getProvisioning(Ljava/lang/String;)Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v1

    .line 82
    .local v1, provisioning:Lcom/android/vending/model/CarrierProvisioningResponse;
    iget-object v4, p0, Lcom/android/vending/CarrierProvisioningAction$1;->this$0:Lcom/android/vending/CarrierProvisioningAction;

    invoke-static {v4}, Lcom/android/vending/CarrierProvisioningAction;->access$000(Lcom/android/vending/CarrierProvisioningAction;)Lcom/android/vending/api/BillingDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vending/CarrierProvisioningAction$1;->val$billingParam:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v4, v1, v5}, Lcom/android/vending/api/BillingDatabase;->setProvisioning(Lcom/android/vending/model/CarrierProvisioningResponse;Lcom/android/vending/model/BillingParameter;)V
    :try_end_0
    .catch Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    .end local v0           #carrierService:Lcom/android/vending/api/CarrierService;
    .end local v1           #provisioning:Lcom/android/vending/model/CarrierProvisioningResponse;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 84
    .local v2, rafe:Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RetryAfterIOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;->getRetryAfterSeconds()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 85
    iget-object v4, p0, Lcom/android/vending/CarrierProvisioningAction$1;->this$0:Lcom/android/vending/CarrierProvisioningAction;

    invoke-static {v4}, Lcom/android/vending/CarrierProvisioningAction;->access$000(Lcom/android/vending/CarrierProvisioningAction;)Lcom/android/vending/api/BillingDatabase;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;->getRetryAfterSeconds()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/vending/api/BillingDatabase;->setEarliestNextTime(J)V

    goto :goto_0

    .line 87
    .end local v2           #rafe:Lcom/android/vending/api/RadioHttpClient$RetryAfterIOException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 88
    .local v3, t:Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while trying to retrieve provisioning: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
