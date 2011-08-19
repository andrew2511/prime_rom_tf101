.class Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AboutDeveloperSection"
.end annotation


# instance fields
.field private mCall:Landroid/view/View;

.field private mSendEmail:Landroid/view/View;

.field private mViewOtherApplications:Landroid/view/View;

.field private mViewWebsite:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1996
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1996
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method

.method private updateTextView(Landroid/view/View;ZLjava/lang/String;)V
    .locals 2
    .parameter "parentView"
    .parameter "isVisible"
    .parameter "contents"

    .prologue
    .line 2052
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2053
    .local v0, tv:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 2054
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2055
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2059
    :goto_0
    return-void

    .line 2057
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttach()V
    .locals 4

    .prologue
    const v3, 0x7f040014

    const v2, 0x1020014

    .line 2008
    const v0, 0x7f0701a4

    const v1, 0x7f0701a5

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 2010
    const v0, 0x7f040013

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0, v1}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewOtherApplications:Landroid/view/View;

    .line 2012
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewOtherApplications:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2013
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewOtherApplications:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->setActionTag(Landroid/view/View;I)V

    .line 2014
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewOtherApplications:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addView(Landroid/view/View;)V

    .line 2016
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3, v0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    .line 2018
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2020
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->setActionTag(Landroid/view/View;I)V

    .line 2021
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addView(Landroid/view/View;)V

    .line 2023
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3, v0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    .line 2025
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2027
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->setActionTag(Landroid/view/View;I)V

    .line 2028
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addView(Landroid/view/View;)V

    .line 2030
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3, v0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    .line 2032
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0701a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2034
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->setActionTag(Landroid/view/View;I)V

    .line 2035
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->addView(Landroid/view/View;)V

    .line 2036
    return-void
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mSendEmail:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->hasContactEmail()Z

    move-result v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getContactEmail()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->updateTextView(Landroid/view/View;ZLjava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mCall:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->hasContactPhone()Z

    move-result v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getContactPhone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->updateTextView(Landroid/view/View;ZLjava/lang/String;)V

    .line 2046
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->mViewWebsite:Landroid/view/View;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->hasContactWebsite()Z

    move-result v1

    iget-object v2, p0, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v2, v2, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->getContactWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AboutDeveloperSection;->updateTextView(Landroid/view/View;ZLjava/lang/String;)V

    .line 2049
    return-void
.end method
