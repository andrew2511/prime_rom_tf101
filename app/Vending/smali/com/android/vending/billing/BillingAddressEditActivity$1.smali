.class Lcom/android/vending/billing/BillingAddressEditActivity$1;
.super Ljava/lang/Object;
.source "BillingAddressEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/billing/BillingAddressEditActivity;->setupViewFromIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/billing/BillingAddressEditActivity;

.field final synthetic val$errorList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/BillingAddressEditActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->this$0:Lcom/android/vending/billing/BillingAddressEditActivity;

    iput-object p2, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->val$errorList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->this$0:Lcom/android/vending/billing/BillingAddressEditActivity;

    iget-object v1, p0, Lcom/android/vending/billing/BillingAddressEditActivity$1;->val$errorList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/vending/billing/BillingAddressEditActivity;->access$000(Lcom/android/vending/billing/BillingAddressEditActivity;Ljava/util/List;)V

    .line 370
    return-void
.end method
