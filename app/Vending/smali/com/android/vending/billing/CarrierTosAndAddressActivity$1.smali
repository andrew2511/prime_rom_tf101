.class Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;
.super Ljava/lang/Thread;
.source "CarrierTosAndAddressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fetchProvisioning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

.field final synthetic val$carrierServiceHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    iput-object p3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->val$carrierServiceHandler:Landroid/os/Handler;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 443
    const/4 v2, 0x0

    .line 445
    .local v2, provisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;
    :try_start_0
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-static {v3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->access$100(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Lcom/android/vending/api/CarrierService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-static {v4}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->access$000(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/vending/api/CarrierService;->getProvisioning(Ljava/lang/String;)Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v2

    .line 446
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    iget-object v3, v3, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/vending/api/BillingDatabase;->setProvisioning(Lcom/android/vending/model/CarrierProvisioningResponse;Lcom/android/vending/model/BillingParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    move-object v0, v2

    .line 453
    .local v0, finalProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->val$carrierServiceHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1$1;

    invoke-direct {v4, p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1$1;-><init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;Lcom/android/vending/model/CarrierProvisioningResponse;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    return-void

    .line 447
    .end local v0           #finalProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 448
    .local v1, ioe:Ljava/io/IOException;
    const-string v3, "Unable to make second getProvisioning() call in order to fetch encrypted subscriber info."

    invoke-static {v3}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
