.class Lcom/google/android/finsky/activities/PurchaseActivity$2;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->startPurchasePaidItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$2;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$2;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$100(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/FormOfPayment;

    .line 406
    .local v0, option:Lcom/google/android/finsky/model/FormOfPayment;
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$2;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/FormOfPayment;->getCart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$202(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$2;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$000(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    .line 408
    return-void
.end method
