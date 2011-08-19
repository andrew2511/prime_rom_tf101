.class Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
.super Ljava/lang/Object;
.source "PromoStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/PromoStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PromoItemView"
.end annotation


# instance fields
.field private isLogoSet:Z

.field private isPromoSet:Z

.field private final mBuyLink:Landroid/widget/TextView;

.field private final mFlyover:Landroid/view/View;

.field private final mIcon:Landroid/widget/ImageView;

.field private final mLargePromoImage:Landroid/widget/ImageView;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field mPurchaseButton:Lcom/google/android/finsky/utils/PurchaseButtonWrapper;

.field private final mStripSideHologram:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/google/android/finsky/layout/PromoStrip;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/layout/PromoStrip;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isPromoSet:Z

    .line 45
    iput-boolean v2, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isLogoSet:Z

    .line 57
    iget-object v0, p1, Lcom/google/android/finsky/layout/PromoStrip;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 59
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040034

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mIcon:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mBuyLink:Landroid/widget/TextView;

    .line 63
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/finsky/layout/PromoStrip;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/finsky/layout/PromoStrip;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mStripSideHologram:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mStripSideHologram:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mStripSideHologram:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method

.method private getComponentStrengthForPosition(IF)F
    .locals 5
    .parameter "x"
    .parameter "intensity"

    .prologue
    .line 194
    iget-object v3, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/PromoStrip;->getWidth()I

    move-result v2

    .line 195
    .local v2, viewWidth:I
    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 196
    const/4 v3, 0x0

    .line 202
    :goto_0
    return v3

    .line 198
    :cond_0
    div-int/lit8 v1, v2, 0x2

    .line 199
    .local v1, middleX:I
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 200
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 201
    sub-int v3, v1, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 202
    .local v0, distanceFromCenter:I
    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    goto :goto_0
.end method

.method private isDocumentSet()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFlyoverFade()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    .line 174
    iget-object v3, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-virtual {v3}, Lcom/google/android/finsky/layout/PromoStrip;->getWidth()I

    move-result v2

    .line 175
    .local v2, widgetWidth:I
    if-gtz v2, :cond_0

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    div-int/lit8 v1, v2, 0x2

    .line 179
    .local v1, halfWayMark:I
    iget-object v3, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    .line 180
    .local v0, edge:I
    iget-object v3, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    if-le v0, v1, :cond_1

    move v4, v7

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    int-to-float v4, v1

    int-to-float v5, v0

    sub-float/2addr v4, v5

    int-to-float v5, v1

    const v6, 0x3fb33333

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float v4, v7, v4

    goto :goto_1
.end method


# virtual methods
.method public clearBitmaps()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->setPromo(Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->setFlyoverIcon(Landroid/graphics/Bitmap;)V

    .line 141
    return-void
.end method

.method public getFlyover()Landroid/view/View;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    return-object v0
.end method

.method public getHologram()Landroid/view/View;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mStripSideHologram:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPromo()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isReadyForDisplay()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isPromoSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isLogoSet:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isDocumentSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDocument(Lcom/google/android/finsky/api/model/Document;)V
    .locals 4
    .parameter "document"

    .prologue
    .line 117
    new-instance v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoCache()Lcom/google/android/finsky/utils/PackageInfoCache;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;-><init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/PackageInfoCache;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mPurchaseButton:Lcom/google/android/finsky/utils/PurchaseButtonWrapper;

    .line 119
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mPurchaseButton:Lcom/google/android/finsky/utils/PurchaseButtonWrapper;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->getVisibility()I

    move-result v0

    .line 122
    .local v0, visibility:I
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mBuyLink:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    if-nez v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mBuyLink:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mPurchaseButton:Lcom/google/android/finsky/utils/PurchaseButtonWrapper;

    iget-object v3, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    iget-object v3, v3, Lcom/google/android/finsky/layout/PromoStrip;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper;->getDisplayText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/CorpusMetadata;->getFlyoverBackgroundResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mStripSideHologram:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/CorpusMetadata;->getPromoHolographicStrip(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mBuyLink:Landroid/widget/TextView;

    new-instance v2, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView$1;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView$1;-><init>(Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public setFlyoverIcon(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bm"

    .prologue
    const/4 v3, 0x0

    .line 73
    if-eqz p1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    iget-object v2, v2, Lcom/google/android/finsky/layout/PromoStrip;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isLogoSet:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isLogoSet:Z

    .line 83
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mFlyover:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 82
    goto :goto_1
.end method

.method public setPromo(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bm"

    .prologue
    const/4 v3, 0x0

    .line 86
    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    iget-object v2, v2, Lcom/google/android/finsky/layout/PromoStrip;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-static {v1}, Lcom/google/android/finsky/layout/PromoStrip;->access$000(Lcom/google/android/finsky/layout/PromoStrip;)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/PromoStrip;->access$100(Lcom/google/android/finsky/layout/PromoStrip;I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-static {v1}, Lcom/google/android/finsky/layout/PromoStrip;->access$200(Lcom/google/android/finsky/layout/PromoStrip;)I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/layout/PromoStrip;->access$300(Lcom/google/android/finsky/layout/PromoStrip;I)V

    .line 90
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isPromoSet:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isPromoSet:Z

    .line 98
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 97
    goto :goto_1
.end method

.method public updateFade()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 148
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isReadyForDisplay()Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->this$0:Lcom/google/android/finsky/layout/PromoStrip;

    invoke-static {v6}, Lcom/google/android/finsky/layout/PromoStrip;->access$500(Lcom/google/android/finsky/layout/PromoStrip;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 153
    .local v4, promoMiddleX:I
    const v5, 0x3f333333

    invoke-direct {p0, v4, v5}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getComponentStrengthForPosition(IF)F

    move-result v5

    sub-float v2, v8, v5

    .line 158
    .local v2, imageAlpha:F
    const/high16 v5, 0x437f

    mul-float/2addr v5, v2

    float-to-int v3, v5

    .line 159
    .local v3, multiplyComponentValue:I
    const/high16 v5, 0x424c

    sub-float v6, v8, v2

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 160
    .local v1, greyComponentValue:I
    new-instance v0, Landroid/graphics/LightingColorFilter;

    shl-int/lit8 v5, v3, 0x10

    shl-int/lit8 v6, v3, 0x8

    or-int/2addr v5, v6

    or-int/2addr v5, v3

    shl-int/lit8 v6, v1, 0x10

    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v1

    invoke-direct {v0, v5, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 166
    .local v0, filter:Landroid/graphics/LightingColorFilter;
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mStripSideHologram:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v8}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getComponentStrengthForPosition(IF)F

    move-result v6

    sub-float v6, v8, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 167
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mLargePromoImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 168
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->mStripSideHologram:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 169
    invoke-direct {p0}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->updateFlyoverFade()V

    goto :goto_0
.end method
