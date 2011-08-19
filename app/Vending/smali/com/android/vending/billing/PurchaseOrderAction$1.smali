.class Lcom/android/vending/billing/PurchaseOrderAction$1;
.super Ljava/lang/Object;
.source "PurchaseOrderAction.java"

# interfaces
.implements Lcom/android/vending/BaseActivity$BaseAction$ActionRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/PurchaseOrderAction;->executeCarrierBillingOrderRequest(Lcom/android/vending/model/PurchaseOrderRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;Lcom/android/vending/api/CarrierService;Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/api/BillingDatabase;Lcom/android/vending/model/BillingParameter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/PurchaseOrderAction;

.field final synthetic val$billingDatabase:Lcom/android/vending/api/BillingDatabase;

.field final synthetic val$billingParameter:Lcom/android/vending/model/BillingParameter;

.field final synthetic val$carrierService:Lcom/android/vending/api/CarrierService;

.field final synthetic val$localBillingData:Lcom/android/vending/model/LocalBillingData;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$request:Lcom/android/vending/model/PurchaseOrderRequest;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/PurchaseOrderAction;Lcom/android/vending/model/BillingParameter;Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/api/CarrierService;Ljava/lang/String;Lcom/android/vending/api/BillingDatabase;Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->this$0:Lcom/android/vending/billing/PurchaseOrderAction;

    iput-object p2, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$billingParameter:Lcom/android/vending/model/BillingParameter;

    iput-object p3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$localBillingData:Lcom/android/vending/model/LocalBillingData;

    iput-object p4, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$carrierService:Lcom/android/vending/api/CarrierService;

    iput-object p5, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$billingDatabase:Lcom/android/vending/api/BillingDatabase;

    iput-object p7, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$request:Lcom/android/vending/model/PurchaseOrderRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/android/vending/api/RequestManager;)V
    .locals 7
    .parameter "requestManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/AuthFailureException;,
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 142
    const/4 v0, 0x0

    .line 145
    .local v0, credentials:Lcom/android/vending/model/CarrierCredentialsResponse;
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$billingParameter:Lcom/android/vending/model/BillingParameter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$billingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v3}, Lcom/android/vending/model/BillingParameter;->perTransactionCredentialsRequired()Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$localBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v3}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCredentialsResponse()Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v0

    .line 151
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/vending/model/CarrierCredentialsResponse;->isValid(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$carrierService:Lcom/android/vending/api/CarrierService;

    iget-object v4, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$localBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$password:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/vending/api/CarrierService;->getCredentials(Lcom/android/vending/model/CarrierProvisioningResponse;Ljava/lang/String;)Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/android/vending/model/CarrierCredentialsResponse;->isPasswordInvalid()Z

    move-result v1

    .line 158
    .local v1, passwordInvalid:Z
    invoke-virtual {v0}, Lcom/android/vending/model/CarrierCredentialsResponse;->isProvisioned()Z

    move-result v3

    if-nez v3, :cond_3

    .line 159
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$carrierService:Lcom/android/vending/api/CarrierService;

    invoke-virtual {v3, v6}, Lcom/android/vending/api/CarrierService;->getProvisioning(Ljava/lang/String;)Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v2

    .line 161
    .local v2, provisioning:Lcom/android/vending/model/CarrierProvisioningResponse;
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$billingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v3, v2, v6}, Lcom/android/vending/api/BillingDatabase;->setProvisioning(Lcom/android/vending/model/CarrierProvisioningResponse;Lcom/android/vending/model/BillingParameter;)V

    .line 162
    invoke-virtual {v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCredentialsResponse()Lcom/android/vending/model/CarrierCredentialsResponse;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierCredentialsResponse;->setIsPasswordInvalid(Z)V

    .line 171
    .end local v1           #passwordInvalid:Z
    .end local v2           #provisioning:Lcom/android/vending/model/CarrierProvisioningResponse;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/vending/model/CarrierCredentialsResponse;->isValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/vending/model/CarrierCredentialsResponse;->isPasswordInvalid()Z

    move-result v3

    if-nez v3, :cond_4

    .line 173
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$request:Lcom/android/vending/model/PurchaseOrderRequest;

    new-instance v4, Lcom/android/vending/model/CarrierBillingCredentials;

    invoke-direct {v4, v0}, Lcom/android/vending/model/CarrierBillingCredentials;-><init>(Lcom/android/vending/model/CarrierCredentialsResponse;)V

    invoke-virtual {v3, v4}, Lcom/android/vending/model/PurchaseOrderRequest;->setCredentials(Lcom/android/vending/model/CarrierBillingCredentials;)V

    .line 174
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->this$0:Lcom/android/vending/billing/PurchaseOrderAction;

    invoke-virtual {v3}, Lcom/android/vending/billing/PurchaseOrderAction;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V

    .line 179
    :goto_1
    return-void

    .line 167
    .restart local v1       #passwordInvalid:Z
    :cond_3
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->val$billingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v3, v0}, Lcom/android/vending/api/BillingDatabase;->saveCredentials(Lcom/android/vending/model/CarrierCredentialsResponse;)V

    goto :goto_0

    .line 176
    .end local v1           #passwordInvalid:Z
    :cond_4
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->this$0:Lcom/android/vending/billing/PurchaseOrderAction;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/vending/billing/PurchaseOrderAction;->access$002(Lcom/android/vending/billing/PurchaseOrderAction;Z)Z

    .line 177
    iget-object v3, p0, Lcom/android/vending/billing/PurchaseOrderAction$1;->this$0:Lcom/android/vending/billing/PurchaseOrderAction;

    invoke-static {v3, v0}, Lcom/android/vending/billing/PurchaseOrderAction;->access$102(Lcom/android/vending/billing/PurchaseOrderAction;Lcom/android/vending/model/CarrierCredentialsResponse;)Lcom/android/vending/model/CarrierCredentialsResponse;

    goto :goto_1
.end method
