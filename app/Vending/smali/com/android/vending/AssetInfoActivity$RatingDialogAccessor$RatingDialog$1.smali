.class Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;-><init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

.field final synthetic val$ratingBar:Landroid/widget/RatingBar;

.field final synthetic val$this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;Landroid/widget/RatingBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2527
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->val$this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    iput-object p3, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->val$ratingBar:Landroid/widget/RatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2529
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->val$ratingBar:Landroid/widget/RatingBar;

    invoke-static {v1, v2}, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->access$5600(Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;Landroid/widget/RatingBar;)I

    move-result v0

    .line 2530
    .local v0, rating:I
    if-lez v0, :cond_0

    .line 2531
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "rating"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2532
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1, v2, v3}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mController:Lcom/android/vending/controller/Controller;

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog$1;->this$2:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor$RatingDialog;->this$1:Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$RatingDialogAccessor;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-interface {v1, v2, v3}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    .line 2537
    :cond_0
    return-void
.end method
