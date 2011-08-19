.class Lcom/google/android/finsky/activities/PurchaseActivity$9;
.super Ljava/lang/Object;
.source "PurchaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;->setupHelpDropdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

.field final synthetic val$helpPopup:Landroid/widget/PopupMenu;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/PurchaseActivity;Landroid/widget/PopupMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity$9;->this$0:Lcom/google/android/finsky/activities/PurchaseActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/PurchaseActivity$9;->val$helpPopup:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity$9;->val$helpPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 869
    return-void
.end method
