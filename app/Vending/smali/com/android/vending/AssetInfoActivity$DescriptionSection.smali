.class Lcom/android/vending/AssetInfoActivity$DescriptionSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescriptionSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetInfoActivity$DescriptionSection$DescriptionZippyClickListener;
    }
.end annotation


# instance fields
.field private mDescriptionAlternateForeground:Landroid/graphics/drawable/Drawable;

.field private mDescriptionAlternateHeight:I

.field private mDescriptionAlternateText:Ljava/lang/CharSequence;

.field private mHeader:Landroid/widget/TwoLineListItem;

.field private mMainView:Landroid/view/View;

.field private mScreenshotContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1472
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {p0, p1, v1}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 1553
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateHeight:I

    .line 1554
    const-string v0, ""

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateText:Ljava/lang/CharSequence;

    .line 1555
    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateForeground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateForeground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateHeight:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/vending/AssetInfoActivity$DescriptionSection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1472
    iput p1, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mDescriptionAlternateHeight:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refreshScreenshotThumbnails()V

    return-void
.end method

.method private addChildren(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 3
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1768
    .local p2, collection:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1769
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1770
    .local v0, child:Landroid/view/View;,"TT;"
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1772
    .end local v0           #child:Landroid/view/View;,"TT;"
    :cond_0
    return-void
.end method

.method private refreshScreenshotThumbnails()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1728
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v8, v8, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v8}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1729
    .local v4, numScreenshots:I
    if-lez v4, :cond_1

    .line 1730
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1731
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1734
    .end local v1           #group:Landroid/view/ViewGroup;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 1735
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1736
    .local v5, v:Landroid/widget/ImageView;
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1737
    iget-object v7, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshots:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 1738
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_3

    .line 1739
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1742
    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    .line 1754
    .local v6, width:I
    if-nez v6, :cond_2

    .line 1765
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #v:Landroid/widget/ImageView;
    .end local v6           #width:I
    :cond_1
    return-void

    .line 1758
    .restart local v0       #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #v:Landroid/widget/ImageView;
    .restart local v6       #width:I
    :cond_2
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v8

    mul-int/2addr v8, v6

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v9

    div-int/2addr v8, v9

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1760
    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 1761
    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 1734
    .end local v6           #width:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateScreenshotThumbnail(I)V
    .locals 9
    .parameter "imageId"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1782
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v2

    .line 1783
    .local v2, numScreenshots:I
    if-ltz p1, :cond_1

    if-ge p1, v2, :cond_1

    .line 1784
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v5, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v4, v6, v5, p1}, Lcom/android/vending/AssetItemAdapter;->getBitmapsAt(ILcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;

    move-result-object v0

    .line 1786
    .local v0, bitmaps:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 1787
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 1788
    .local v3, screenshot:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1792
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x58

    const/16 v6, 0x84

    invoke-static {v4, v8, v8, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1796
    .local v1, cropped:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #screenshot:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x8c

    const/16 v6, 0xd2

    invoke-static {v1, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1800
    .end local v1           #cropped:Landroid/graphics/Bitmap;
    .restart local v3       #screenshot:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshots:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    .end local v0           #bitmaps:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v3           #screenshot:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refreshScreenshotThumbnails()V

    .line 1804
    return-void
.end method


# virtual methods
.method protected onAttach()V
    .locals 2

    .prologue
    .line 1562
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshots:Ljava/util/Map;

    .line 1564
    const v0, 0x7f0701b8

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mHeader:Landroid/widget/TwoLineListItem;

    .line 1565
    const v0, 0x7f04000c

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    .line 1566
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->addView(Landroid/view/View;)V

    .line 1567
    return-void
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 4
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 1775
    sget-object v0, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v0, :cond_0

    .line 1776
    invoke-direct {p0, p3}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->updateScreenshotThumbnail(I)V

    .line 1777
    const-string v0, "AssetInfoActivity descriptionSection.onImageLoaded() %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->event(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1779
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 28

    .prologue
    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v5, :cond_1

    .line 1572
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->activate()V

    .line 1579
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/vending/AssetInfoActivity;->access$4000(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/vending/AssetInfoActivity;->access$4100(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$ReviewSection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/AssetInfoActivity$ReviewSection;->isActivated()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mHeader:Landroid/widget/TwoLineListItem;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TwoLineListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1583
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f08002a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1584
    .local v16, filterReasonView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f08002b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 1587
    .local v7, descriptionContainer:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f08002c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1589
    .local v9, descriptionView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f08002d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1591
    .local v8, descriptionZippyContainer:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f0800ee

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1593
    .local v10, descriptionZippy:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f08002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1594
    .local v26, versionSizeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v6, 0x7f08002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1597
    .local v15, downloadsRatingsView:Landroid/widget/TextView;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v11, 0x7f080030

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v11, 0x7f080031

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mMainView:Landroid/view/View;

    move-object v5, v0

    const v11, 0x7f080032

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotContainers:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/ViewGroup;

    .line 1607
    .local v27, viewGroup:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->addChildren(Landroid/view/ViewGroup;Ljava/util/List;)V

    goto :goto_1

    .line 1574
    .end local v7           #descriptionContainer:Landroid/widget/FrameLayout;
    .end local v8           #descriptionZippyContainer:Landroid/widget/LinearLayout;
    .end local v9           #descriptionView:Landroid/widget/TextView;
    .end local v10           #descriptionZippy:Landroid/widget/TextView;
    .end local v15           #downloadsRatingsView:Landroid/widget/TextView;
    .end local v16           #filterReasonView:Landroid/widget/TextView;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v26           #versionSizeView:Landroid/widget/TextView;
    .end local v27           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->deactivate()V

    goto/16 :goto_0

    .line 1610
    .restart local v7       #descriptionContainer:Landroid/widget/FrameLayout;
    .restart local v8       #descriptionZippyContainer:Landroid/widget/LinearLayout;
    .restart local v9       #descriptionView:Landroid/widget/TextView;
    .restart local v10       #descriptionZippy:Landroid/widget/TextView;
    .restart local v15       #downloadsRatingsView:Landroid/widget/TextView;
    .restart local v16       #filterReasonView:Landroid/widget/TextView;
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v26       #versionSizeView:Landroid/widget/TextView;
    :cond_2
    new-instance v20, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;)V

    .line 1628
    .local v20, screenshotThumbnailClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->mScreenshotViews:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 1629
    .local v21, screenshotView:Landroid/widget/ImageView;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1632
    .end local v21           #screenshotView:Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->isFiltered()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getFilterReason()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1634
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1639
    :goto_3
    const-string v23, "    "

    .line 1640
    .local v23, spacer:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    const v6, 0x7f0700c9

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v12}, Lcom/android/vending/model/Asset;->getDownloadCount()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1642
    .local v14, downloadString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v18

    .line 1643
    .local v18, numRaters:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0001

    move-object v0, v5

    move v1, v6

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v19

    .line 1645
    .local v19, ratingsText:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v6

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 1646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    const v6, 0x7f0700c8

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v12}, Lcom/android/vending/model/Asset;->getVersion()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 1649
    .local v25, version:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/android/vending/model/Asset;->getRequiredInstallationSize()J

    move-result-wide v11

    invoke-static {v5, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    .line 1651
    .local v22, size:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    new-instance v24, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1655
    .local v24, text:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getRecentChanges()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1656
    const-string v5, "\n\n"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1657
    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    .line 1658
    .local v12, boldStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    const v6, 0x7f0701b2

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1659
    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 1660
    .local v11, boldEnd:I
    const/16 v5, 0xa

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getRecentChanges()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1663
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v6, 0x21

    move-object/from16 v0, v24

    move-object v1, v5

    move v2, v12

    move v3, v11

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1667
    .end local v11           #boldEnd:I
    .end local v12           #boldStart:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getContentRatingString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1668
    const-string v5, "\n\n"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v5, v0

    const v6, 0x7f0701b3

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v12}, Lcom/android/vending/model/Asset;->getContentRatingString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1672
    .local v13, contentRatingText:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1674
    .end local v13           #contentRatingText:Ljava/lang/String;
    :cond_5
    move-object v0, v9

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1675
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    new-instance v5, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/vending/AssetInfoActivity$DescriptionSection$2;-><init>(Lcom/android/vending/AssetInfoActivity$DescriptionSection;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v11, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1723
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/AssetInfoActivity$DescriptionSection;->refreshScreenshotThumbnails()V

    .line 1724
    return-void

    .line 1636
    .end local v14           #downloadString:Ljava/lang/String;
    .end local v18           #numRaters:I
    .end local v19           #ratingsText:Ljava/lang/String;
    .end local v22           #size:Ljava/lang/String;
    .end local v23           #spacer:Ljava/lang/String;
    .end local v24           #text:Landroid/text/SpannableStringBuilder;
    .end local v25           #version:Ljava/lang/String;
    :cond_6
    const/16 v5, 0x8

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method
