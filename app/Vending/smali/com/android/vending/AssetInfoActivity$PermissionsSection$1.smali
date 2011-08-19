.class Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$PermissionsSection;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasRun:Z

.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)V
    .locals 1
    .parameter

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->mHasRun:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1347
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->mHasRun:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 1365
    :goto_0
    return v0

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->access$3000(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->access$2902(Lcom/android/vending/AssetInfoActivity$PermissionsSection;I)I

    .line 1353
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->access$2900(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 1354
    goto :goto_0

    .line 1357
    :cond_1
    iput-boolean v3, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->mHasRun:Z

    .line 1358
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->access$3000(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1359
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$3100(Lcom/android/vending/AssetInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->access$3200(Lcom/android/vending/AssetInfoActivity$PermissionsSection;I)V

    :goto_1
    move v0, v3

    .line 1365
    goto :goto_0

    .line 1363
    :cond_2
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$PermissionsSection$1;->this$1:Lcom/android/vending/AssetInfoActivity$PermissionsSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$PermissionsSection;->access$3000(Lcom/android/vending/AssetInfoActivity$PermissionsSection;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
