.class Lcom/android/vending/AssetInfoActivity$ShareSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareSection"
.end annotation


# instance fields
.field private mShareAppView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1952
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$ShareSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method protected onAttach()V
    .locals 2

    .prologue
    .line 1957
    const v0, 0x7f07019f

    const v1, 0x7f0701a0

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$ShareSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 1958
    const v0, 0x7f040013

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0, v1}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->mShareAppView:Landroid/view/View;

    .line 1960
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->mShareAppView:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1962
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->mShareAppView:Landroid/view/View;

    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$ShareSection;->setActionTag(Landroid/view/View;I)V

    .line 1963
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$ShareSection;->mShareAppView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$ShareSection;->addView(Landroid/view/View;)V

    .line 1964
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 1969
    return-void
.end method
