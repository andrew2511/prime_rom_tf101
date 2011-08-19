.class public Lcom/android/vending/PromotedAppViewSwitcher;
.super Landroid/widget/ViewSwitcher;
.source "PromotedAppViewSwitcher.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/PromotedAppViewSwitcher$1;,
        Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;
    }
.end annotation


# static fields
.field private static LOADING_IMAGE_BITMAP:Landroid/graphics/Bitmap;

.field private static sPromoRefreshInterval:J


# instance fields
.field private mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

.field private mAssetIndex:I

.field private final mContext:Landroid/content/Context;

.field private mCycleAssets:Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;

.field private mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

.field private mFrameBoundsComputed:Z

.field private mFramePressed:Landroid/graphics/drawable/Drawable;

.field private mFrameSelected:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/vending/PromotedAppViewSwitcher;->sPromoRefreshInterval:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mHandler:Landroid/os/Handler;

    .line 73
    invoke-static {p1}, Lcom/android/vending/PromotedAppViewSwitcher;->getPromoRefreshPeriodMs(Landroid/content/Context;)J

    .line 74
    invoke-direct {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->init()V

    .line 75
    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/PromotedAppViewSwitcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 27
    sget-wide v0, Lcom/android/vending/PromotedAppViewSwitcher;->sPromoRefreshInterval:J

    return-wide v0
.end method

.method private calculateNextAssetIndex()I
    .locals 2

    .prologue
    .line 201
    iget v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAssetIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 202
    .local v0, newAssetIndex:I
    iget-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->getNumPromotedAssets()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    if-gez v0, :cond_2

    .line 204
    :cond_1
    const/4 v0, 0x0

    .line 206
    :cond_2
    return v0
.end method

.method private computeFrameBounds()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 302
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    .line 303
    .local v4, view:Landroid/view/View;
    const v5, 0x7f080103

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/vending/PromotedAppView;

    .line 304
    .local v3, v:Lcom/android/vending/PromotedAppView;
    invoke-virtual {v3}, Lcom/android/vending/PromotedAppView;->getFrameLocation()Landroid/graphics/Rect;

    move-result-object v1

    .line 305
    .local v1, rect:Landroid/graphics/Rect;
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 306
    .local v0, location:[I
    invoke-virtual {v3, v0}, Lcom/android/vending/PromotedAppView;->getLocationInWindow([I)V

    .line 307
    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 308
    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, 0x5

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 309
    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 310
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 313
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->getPaddingTop()I

    move-result v2

    .line 314
    .local v2, topPadding:I
    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 315
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 317
    iget-object v5, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mFramePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 318
    iget-object v5, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mFrameSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 319
    return-void
.end method

.method private getLoadingBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    .local v0, rsrc:Landroid/content/res/Resources;
    sget-object v1, Lcom/android/vending/PromotedAppViewSwitcher;->LOADING_IMAGE_BITMAP:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 188
    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/vending/PromotedAppViewSwitcher;->LOADING_IMAGE_BITMAP:Landroid/graphics/Bitmap;

    .line 193
    :cond_0
    sget-object v1, Lcom/android/vending/PromotedAppViewSwitcher;->LOADING_IMAGE_BITMAP:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 194
    sget-object v1, Lcom/android/vending/PromotedAppViewSwitcher;->LOADING_IMAGE_BITMAP:Landroid/graphics/Bitmap;

    .line 196
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPromoRefreshPeriodMs(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 270
    sget-wide v0, Lcom/android/vending/PromotedAppViewSwitcher;->sPromoRefreshInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 271
    sget-wide v0, Lcom/android/vending/PromotedAppViewSwitcher;->sPromoRefreshInterval:J

    .line 276
    :goto_0
    return-wide v0

    .line 274
    :cond_0
    sget-object v0, Lcom/android/vending/util/RequestIntervalUtil$IntervalType;->PROMO_REFRESH:Lcom/android/vending/util/RequestIntervalUtil$IntervalType;

    invoke-static {v0}, Lcom/android/vending/util/RequestIntervalUtil;->getRequestIntervalMs(Lcom/android/vending/util/RequestIntervalUtil$IntervalType;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/vending/PromotedAppViewSwitcher;->sPromoRefreshInterval:J

    .line 276
    sget-wide v0, Lcom/android/vending/PromotedAppViewSwitcher;->sPromoRefreshInterval:J

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 78
    invoke-virtual {p0, p0}, Lcom/android/vending/PromotedAppViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 79
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f05

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 80
    .local v1, in:Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mContext:Landroid/content/Context;

    const v5, 0x7f050001

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 81
    .local v2, out:Landroid/view/animation/Animation;
    invoke-virtual {p0, v1}, Lcom/android/vending/PromotedAppViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/vending/PromotedAppViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 83
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 84
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/vending/PromotedAppViewSwitcher;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    invoke-virtual {p0, v6}, Lcom/android/vending/PromotedAppViewSwitcher;->setFocusable(Z)V

    .line 86
    invoke-virtual {p0, v6}, Lcom/android/vending/PromotedAppViewSwitcher;->setClickable(Z)V

    .line 87
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 88
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f020068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mFramePressed:Landroid/graphics/drawable/Drawable;

    .line 89
    const v4, 0x7f02006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mFrameSelected:Landroid/graphics/drawable/Drawable;

    .line 90
    return-void
.end method

.method private updateBitmapView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v2}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->isFullyLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v2}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPromoBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    const v2, 0x7f080103

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/vending/PromotedAppView;

    .line 182
    .local v1, v:Lcom/android/vending/PromotedAppView;
    invoke-virtual {v1, v0}, Lcom/android/vending/PromotedAppView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    return-void

    .line 179
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #v:Lcom/android/vending/PromotedAppView;
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->getLoadingBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method public changeAsset()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 210
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v4}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->isFullyLoaded()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 243
    :goto_0
    return v4

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->calculateNextAssetIndex()I

    move-result v0

    .line 220
    .local v0, newAssetIndex:I
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-virtual {v4, v0}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->getPromoAssetData(I)Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    move-result-object v1

    .line 221
    .local v1, promoData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->hasLoadedEnoughForDisplay()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v4, v6

    .line 223
    goto :goto_0

    .line 226
    :cond_2
    iput v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAssetIndex:I

    .line 227
    iput-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    .line 228
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    .line 229
    .local v3, view:Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/android/vending/PromotedAppViewSwitcher;->updateBitmapView(Landroid/view/View;)V

    .line 231
    const v4, 0x7f0800f7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 232
    .local v2, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v4}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPromoDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->showNext()V

    .line 239
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v4}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->isFullyLoaded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    iget-object v4, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-direct {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->calculateNextAssetIndex()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->requestPreload(IZ)V

    .line 243
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mFramePressed:Landroid/graphics/drawable/Drawable;

    .line 294
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-boolean v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mFrameBoundsComputed:Z

    if-nez v1, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->computeFrameBounds()V

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mFrameBoundsComputed:Z

    .line 298
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mFrameSelected:Landroid/graphics/drawable/Drawable;

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    .line 107
    const v1, 0x7f04004e

    iget-object v2, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, view:Landroid/view/View;
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAssetIndex:I

    .line 109
    return-object v0
.end method

.method public notifyFullLoadComplete(Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;)V
    .locals 2
    .parameter "promotedAssetData"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v0}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPositionInPromoList()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->getPositionInPromoList()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v0}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->isFullyLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    .line 170
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/PromotedAppViewSwitcher;->updateBitmapView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->invalidate()V

    goto :goto_0
.end method

.method public readyToCycle()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->getNumPromotedAssets()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 148
    :goto_0
    return v1

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mDisplayedPromotedAsset:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    invoke-virtual {v1}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->isFullyLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    .line 141
    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-direct {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->calculateNextAssetIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->getPromoAssetData(I)Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;

    move-result-object v0

    .line 145
    .local v0, promoData:Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;
    if-nez v0, :cond_3

    move v1, v3

    .line 146
    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v0}, Lcom/android/vending/PromotedAssetSwitcherAdapter$PromotedAssetData;->hasLoadedEnoughForDisplay()Z

    move-result v1

    goto :goto_0
.end method

.method public setAdapter(Lcom/android/vending/PromotedAssetSwitcherAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    .line 99
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mAdapter:Lcom/android/vending/PromotedAssetSwitcherAdapter;

    invoke-virtual {v0, p0}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->setFullLoadListener(Lcom/android/vending/PromotedAssetSwitcherAdapter$FullLoadListener;)V

    .line 100
    return-void
.end method

.method public declared-synchronized startCycling()V
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->readyToCycle()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/vending/PromotedAppViewSwitcher;->stopCycling()V

    .line 118
    new-instance v0, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;-><init>(Lcom/android/vending/PromotedAppViewSwitcher;Lcom/android/vending/PromotedAppViewSwitcher$1;)V

    iput-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mCycleAssets:Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;

    .line 119
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mCycleAssets:Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;

    invoke-virtual {v0}, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopCycling()V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mCycleAssets:Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mCycleAssets:Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;

    invoke-virtual {v0}, Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;->stop()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/PromotedAppViewSwitcher;->mCycleAssets:Lcom/android/vending/PromotedAppViewSwitcher$CycleAssets;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
