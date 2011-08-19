.class Lcom/google/android/finsky/activities/PurchaseActivity$6;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->setupPriceSummary(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

.field final synthetic val$pricePopup:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseActivity;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 747
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$6;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/PurchaseActivity$6;->val$pricePopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$6;->val$pricePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$6;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$1300(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 751
    return-void
.end method
