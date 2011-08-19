.class Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)V
    .locals 0
    .parameter

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1613
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v2}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4200(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1615
    .local v1, screenshotId:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1616
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Received a click from unknown view."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1619
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const-class v3, Lcom/android/vending/FullImageGalleryActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1621
    .local v0, screenshotGalleryIntent:Landroid/content/Intent;
    const-string v2, "assetid"

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v3, v3, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const-string v2, "full_image_gall_curr_pos"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1625
    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v2, v0}, Lcom/android/vending/AssetInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 1626
    return-void
.end method
