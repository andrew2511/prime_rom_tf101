.class Lcom/android/vending/billing/CarrierTosAndAddressActivity$1$1;
.super Ljava/lang/Object;
.source "CarrierTosAndAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;

.field final synthetic val$finalProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;Lcom/android/vending/model/CarrierProvisioningResponse;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1$1;->this$1:Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;

    iput-object p2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1$1;->val$finalProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1$1;->this$1:Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;

    iget-object v0, v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->this$0:Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1$1;->val$finalProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-static {v0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->access$200(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Lcom/android/vending/model/CarrierProvisioningResponse;)V

    .line 456
    return-void
.end method
