.class Lcom/google/android/finsky/activities/PurchaseActivity$7;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->setupFormsOfPaymentDropdown(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

.field final synthetic val$addCreditCardUrl:Ljava/lang/String;

.field final synthetic val$formsOfPaymentList:Ljava/util/List;

.field final synthetic val$paymentOptions:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->val$paymentOptions:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->val$addCreditCardUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->val$formsOfPaymentList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->val$paymentOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->val$addCreditCardUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1400(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)V

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->val$formsOfPaymentList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/FormOfPayment;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/FormOfPayment;->hasCart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$7;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
