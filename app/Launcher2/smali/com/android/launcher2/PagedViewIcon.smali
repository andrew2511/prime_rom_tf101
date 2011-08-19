.class public Lcom/android/launcher2/PagedViewIcon;
.super Lcom/android/launcher2/CachedTextView;
.source "PagedViewIcon.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAlpha:I

.field private mCheckedAlpha:F

.field private mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCheckedFadeInDuration:I

.field private mCheckedFadeOutDuration:I

.field private mCheckedOutline:Landroid/graphics/Bitmap;

.field private mHoloBlurColor:I

.field private mHoloOutlineColor:I

.field private mHolographicAlpha:I

.field private mHolographicOutline:Landroid/graphics/Bitmap;

.field mHolographicOutlineView:Lcom/android/launcher2/HolographicPagedViewIcon;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIconCache:Lcom/android/launcher2/PagedViewIconCache;

.field private mIconCacheKey:Lcom/android/launcher2/PagedViewIconCache$Key;

.field private mIsChecked:Z

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pagedviewicon-helper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedViewIcon;->sWorkerThread:Landroid/os/HandlerThread;

    .line 73
    sget-object v0, Lcom/android/launcher2/PagedViewIcon;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Lcom/android/launcher2/PagedViewIcon$1;

    sget-object v1, Lcom/android/launcher2/PagedViewIcon;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedViewIcon$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/PagedViewIcon;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v6, 0x7f0a0010

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CachedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    .line 56
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/launcher2/PagedViewIcon;->mAlpha:I

    .line 61
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlpha:F

    .line 113
    sget-object v3, Lcom/android/launcher/R$styleable;->PagedViewIcon:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedViewIcon;->mHoloBlurColor:I

    .line 115
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedViewIcon;->mHoloOutlineColor:I

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    sget-object v3, Lcom/android/launcher2/PagedViewIcon;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    if-nez v3, :cond_0

    .line 119
    new-instance v3, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v3}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v3, Lcom/android/launcher2/PagedViewIcon;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 125
    .local v1, alpha:I
    if-lez v1, :cond_1

    .line 126
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4380

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlpha:F

    .line 127
    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedFadeInDuration:I

    .line 128
    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedFadeOutDuration:I

    .line 131
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedViewIcon;->setFocusable(Z)V

    .line 132
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewIcon;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    new-instance v3, Lcom/android/launcher2/HolographicPagedViewIcon;

    invoke-direct {v3, p1, p0}, Lcom/android/launcher2/HolographicPagedViewIcon;-><init>(Landroid/content/Context;Lcom/android/launcher2/PagedViewIcon;)V

    iput-object v3, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutlineView:Lcom/android/launcher2/HolographicPagedViewIcon;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/PagedViewIcon;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedViewIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher2/PagedViewIcon;->mHoloBlurColor:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PagedViewIcon;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/launcher2/PagedViewIcon;->mHoloOutlineColor:I

    return v0
.end method

.method static synthetic access$300()Lcom/android/launcher2/HolographicOutlineHelper;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/launcher2/PagedViewIcon;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/PagedViewIcon;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/PagedViewIcon;)Lcom/android/launcher2/PagedViewIconCache$Key;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCacheKey:Lcom/android/launcher2/PagedViewIconCache$Key;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/PagedViewIcon;)Lcom/android/launcher2/PagedViewIconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCache:Lcom/android/launcher2/PagedViewIconCache;

    return-object v0
.end method

.method private queueHolographicOutlineCreation()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 147
    sget-object v1, Lcom/android/launcher2/PagedViewIcon;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/android/launcher2/PagedViewIcon;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v1, v2

    .line 152
    .end local v0           #m:Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/PagedViewIconCache;ZZ)V
    .locals 3
    .parameter "info"
    .parameter "cache"
    .parameter "scaleUp"
    .parameter "createHolographicOutlines"

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 158
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/launcher2/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 162
    if-eqz p4, :cond_0

    .line 163
    iput-object p2, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCache:Lcom/android/launcher2/PagedViewIconCache;

    .line 164
    new-instance v0, Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-direct {v0, p1}, Lcom/android/launcher2/PagedViewIconCache$Key;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCacheKey:Lcom/android/launcher2/PagedViewIconCache$Key;

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCache:Lcom/android/launcher2/PagedViewIconCache;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCacheKey:Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewIconCache;->getOutline(Lcom/android/launcher2/PagedViewIconCache$Key;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    .line 166
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewIcon;->queueHolographicOutlineCreation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getHolographicOutlineView()Lcom/android/launcher2/HolographicPagedViewIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HolographicPagedViewIcon;->invalidate()V

    .line 170
    :cond_0
    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher2/PagedViewIconCache;Lcom/android/launcher2/IconCache;Z)V
    .locals 3
    .parameter "info"
    .parameter "packageManager"
    .parameter "cache"
    .parameter "modelIconCache"
    .parameter "createHolographicOutlines"

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-virtual {p4, p1, p2}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 176
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/launcher2/PagedViewIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 180
    if-eqz p5, :cond_0

    .line 181
    iput-object p3, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCache:Lcom/android/launcher2/PagedViewIconCache;

    .line 182
    new-instance v0, Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-direct {v0, p1}, Lcom/android/launcher2/PagedViewIconCache$Key;-><init>(Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCacheKey:Lcom/android/launcher2/PagedViewIconCache$Key;

    .line 183
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCache:Lcom/android/launcher2/PagedViewIconCache;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewIcon;->mIconCacheKey:Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewIconCache;->getOutline(Lcom/android/launcher2/PagedViewIconCache$Key;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    .line 184
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewIcon;->queueHolographicOutlineCreation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getHolographicOutlineView()Lcom/android/launcher2/HolographicPagedViewIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HolographicPagedViewIcon;->invalidate()V

    .line 188
    :cond_0
    return-void
.end method

.method protected getHolographicOutline()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getHolographicOutlineView()Lcom/android/launcher2/HolographicPagedViewIcon;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutlineView:Lcom/android/launcher2/HolographicPagedViewIcon;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Lcom/android/launcher2/CachedTextView;->onDetachedFromWindow()V

    .line 244
    sget-object v0, Lcom/android/launcher2/PagedViewIcon;->sWorker:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 245
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 212
    iget v5, p0, Lcom/android/launcher2/PagedViewIcon;->mAlpha:I

    if-lez v5, :cond_0

    .line 213
    invoke-super {p0, p1}, Lcom/android/launcher2/CachedTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 216
    :cond_0
    const/4 v4, 0x0

    .line 219
    .local v4, overlay:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    if-nez v5, :cond_3

    .line 220
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicAlpha:I

    if-lez v5, :cond_1

    .line 221
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicAlpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 222
    iget-object v4, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicOutline:Landroid/graphics/Bitmap;

    .line 229
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getScrollX()I

    move-result v3

    .line 231
    .local v3, offset:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getCompoundPaddingLeft()I

    move-result v0

    .line 232
    .local v0, compoundPaddingLeft:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getCompoundPaddingRight()I

    move-result v1

    .line 233
    .local v1, compoundPaddingRight:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int v2, v5, v0

    .line 234
    .local v2, hspace:I
    add-int v5, v3, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/PagedViewIcon;->mPaddingTop:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/launcher2/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    .end local v0           #compoundPaddingLeft:I
    .end local v1           #compoundPaddingRight:I
    .end local v2           #hspace:I
    .end local v3           #offset:I
    :cond_2
    return-void

    .line 225
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/PagedViewIcon;->mPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 226
    iget-object v4, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedOutline:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 6
    .parameter "alpha"

    .prologue
    const/high16 v5, 0x437f

    .line 192
    sget-object v4, Lcom/android/launcher2/PagedViewIcon;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/HolographicOutlineHelper;->viewAlphaInterpolator(F)F

    move-result v3

    .line 193
    .local v3, viewAlpha:F
    sget-object v4, Lcom/android/launcher2/PagedViewIcon;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/HolographicOutlineHelper;->highlightAlphaInterpolator(F)F

    move-result v0

    .line 194
    .local v0, holographicAlpha:F
    mul-float v4, v3, v5

    float-to-int v2, v4

    .line 195
    .local v2, newViewAlpha:I
    mul-float v4, v0, v5

    float-to-int v1, v4

    .line 196
    .local v1, newHolographicAlpha:I
    iget v4, p0, Lcom/android/launcher2/PagedViewIcon;->mAlpha:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicAlpha:I

    if-eq v4, v1, :cond_1

    .line 197
    :cond_0
    iput v2, p0, Lcom/android/launcher2/PagedViewIcon;->mAlpha:I

    .line 198
    iput v1, p0, Lcom/android/launcher2/PagedViewIcon;->mHolographicAlpha:I

    .line 199
    invoke-super {p0, v3}, Lcom/android/launcher2/CachedTextView;->setAlpha(F)V

    .line 201
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewIcon;->setChecked(ZZ)V

    .line 285
    return-void
.end method

.method setChecked(ZZ)V
    .locals 6
    .parameter "checked"
    .parameter "animate"

    .prologue
    .line 253
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    if-eq v2, p1, :cond_1

    .line 254
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    .line 258
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    if-eqz v2, :cond_2

    .line 259
    iget v0, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlpha:F

    .line 260
    .local v0, alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedFadeInDuration:I

    .line 267
    .local v1, duration:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 270
    :cond_0
    if-eqz p2, :cond_3

    .line 271
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 272
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 273
    iget-object v2, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 278
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewIcon;->invalidate()V

    .line 280
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_1
    return-void

    .line 262
    :cond_2
    const/high16 v0, 0x3f80

    .line 263
    .restart local v0       #alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewIcon;->mCheckedFadeOutDuration:I

    .restart local v1       #duration:I
    goto :goto_0

    .line 275
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setAlpha(F)V

    goto :goto_1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewIcon;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewIcon;->setChecked(Z)V

    .line 290
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
