.class Lcom/google/android/finsky/activities/PurchaseActivity$1;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->startPurchaseFreeItem()V
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
    .line 360
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$1;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$1;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    invoke-static {v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->access$000(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    .line 369
    return-void
.end method
