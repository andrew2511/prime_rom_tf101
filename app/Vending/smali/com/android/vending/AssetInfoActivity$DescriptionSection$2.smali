.class Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;
.super Ljava/lang/Object;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHasRun:Z

.field final synthetic this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

.field final synthetic val$descriptionContainer:Landroid/widget/FrameLayout;

.field final synthetic val$descriptionView:Landroid/widget/TextView;

.field final synthetic val$descriptionZippy:Landroid/widget/TextView;

.field final synthetic val$descriptionZippyContainer:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iput-object p2, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippy:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->mHasRun:Z

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1681
    iget-boolean v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->mHasRun:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$3800(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v7

    .line 1719
    :goto_0
    return v0

    .line 1685
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$4300(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)V

    .line 1687
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$3802(Lcom/android/vending/AssetInfoActivity$DescriptionSection;I)I

    .line 1689
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$3800(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1690
    iput-boolean v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->mHasRun:Z

    .line 1691
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1695
    :cond_2
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$3800(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I

    move-result v0

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/16 v2, 0x54

    invoke-static {v1, v2}, Lcom/android/vending/util/Util;->dipsToPixels(Landroid/content/Context;I)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1697
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v7

    .line 1698
    goto :goto_0

    .line 1703
    :cond_3
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const v2, 0x7f0701bc

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$3602(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1704
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    invoke-static {v0, v5}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->access$3702(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1707
    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippy:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;-><init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/android/vending/AssetInfoActivity$1;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1711
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/android/vending/util/Util;->dipsToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1713
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->this$1:Lcom/android/vending/AssetInfoActivity$DescriptionSection;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v1}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1715
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1716
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1717
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;->val$descriptionZippyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    move v0, v7

    .line 1719
    goto/16 :goto_0
.end method
