.class public Lcom/android/launcher2/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"

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

.field private final mEraseStrokeRect:Landroid/graphics/Rect;

.field private final mEraseStrokeRectPaint:Landroid/graphics/Paint;

.field private mHoloBlurColor:I

.field private mHoloOutlineColor:I

.field private mHolographicAlpha:I

.field private mHolographicOutline:Landroid/graphics/Bitmap;

.field private final mHolographicOutlineCanvas:Landroid/graphics/Canvas;

.field private mIsChecked:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreview:Lcom/android/launcher2/FastBitmapDrawable;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private final mTmpScaleRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pagedviewwidget-helper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/PagedViewWidget;->sWorkerThread:Landroid/os/HandlerThread;

    .line 79
    sget-object v0, Lcom/android/launcher2/PagedViewWidget;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 84
    new-instance v0, Lcom/android/launcher2/PagedViewWidget$1;

    sget-object v1, Lcom/android/launcher2/PagedViewWidget;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedViewWidget$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/PagedViewWidget;->sWorker:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v8, 0x7f0a0010

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutlineCanvas:Landroid/graphics/Canvas;

    .line 60
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    .line 61
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRect:Landroid/graphics/Rect;

    .line 62
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRectPaint:Landroid/graphics/Paint;

    .line 64
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/launcher2/PagedViewWidget;->mAlpha:I

    .line 73
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 135
    sget-object v3, Lcom/android/launcher/R$styleable;->PagedViewWidget:[I

    invoke-virtual {p1, p2, v3, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 137
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedViewWidget;->mHoloBlurColor:I

    .line 138
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedViewWidget;->mHoloOutlineColor:I

    .line 139
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRectPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRectPaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/launcher2/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRectPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 142
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    sget-object v3, Lcom/android/launcher2/PagedViewWidget;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    if-nez v3, :cond_0

    .line 147
    new-instance v3, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v3}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v3, Lcom/android/launcher2/PagedViewWidget;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 152
    .local v2, r:Landroid/content/res/Resources;
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 153
    .local v1, alpha:I
    if-lez v1, :cond_1

    .line 154
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4380

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 155
    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 156
    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    .line 159
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedViewWidget;->setFocusable(Z)V

    .line 160
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedViewWidget;->setWillNotDraw(Z)V

    .line 161
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedViewWidget;->setClipToPadding(Z)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/PagedViewWidget;)Lcom/android/launcher2/FastBitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPreview:Lcom/android/launcher2/FastBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutlineCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PagedViewWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PagedViewWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/PagedViewWidget;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mEraseStrokeRectPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/PagedViewWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHoloBlurColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/PagedViewWidget;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHoloOutlineColor:I

    return v0
.end method

.method static synthetic access$800()Lcom/android/launcher2/HolographicOutlineHelper;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/launcher2/PagedViewWidget;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/PagedViewWidget;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private queueHolographicOutlineCreation()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mPreview:Lcom/android/launcher2/FastBitmapDrawable;

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/android/launcher2/PagedViewWidget;->sWorker:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/android/launcher2/PagedViewWidget;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getChildCount()I

    move-result v0

    .line 261
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher2/FastBitmapDrawable;I[ILcom/android/launcher2/PagedViewIconCache;Z)V
    .locals 8
    .parameter "info"
    .parameter "preview"
    .parameter "maxWidth"
    .parameter "cellSpan"
    .parameter "cache"
    .parameter "createHolographicOutline"

    .prologue
    .line 176
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 177
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 178
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iput-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    .line 180
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 181
    .local v2, name:Landroid/widget/TextView;
    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 183
    const v3, 0x7f08001f

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    .local v0, dims:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/launcher2/PagedViewWidget;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0017

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, p4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 187
    if-eqz p6, :cond_0

    .line 188
    iput-object p2, p0, Lcom/android/launcher2/PagedViewWidget;->mPreview:Lcom/android/launcher2/FastBitmapDrawable;

    .line 190
    :cond_0
    return-void
.end method

.method public applyFromWallpaperInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher2/FastBitmapDrawable;ILcom/android/launcher2/PagedViewIconCache;Z)V
    .locals 4
    .parameter "info"
    .parameter "packageManager"
    .parameter "preview"
    .parameter "maxWidth"
    .parameter "cache"
    .parameter "createHolographicOutline"

    .prologue
    .line 195
    const v2, 0x7f08001b

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 196
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 197
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    .line 199
    const v2, 0x7f08001c

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 200
    .local v1, name:Landroid/widget/TextView;
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 203
    if-eqz p6, :cond_0

    .line 204
    iput-object p3, p0, Lcom/android/launcher2/PagedViewWidget;->mPreview:Lcom/android/launcher2/FastBitmapDrawable;

    .line 206
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 278
    sget-object v0, Lcom/android/launcher2/PagedViewWidget;->sWorker:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 279
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 222
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mAlpha:I

    if-lez v0, :cond_0

    .line 223
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicAlpha:I

    if-lez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 234
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mTmpScaleRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicOutline:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 238
    :cond_1
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 268
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/launcher2/PagedViewWidget;->queueHolographicOutlineCreation()V

    .line 272
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 273
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(F)V
    .locals 6
    .parameter "alpha"

    .prologue
    const/high16 v5, 0x437f

    .line 247
    sget-object v4, Lcom/android/launcher2/PagedViewWidget;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/HolographicOutlineHelper;->viewAlphaInterpolator(F)F

    move-result v3

    .line 248
    .local v3, viewAlpha:F
    sget-object v4, Lcom/android/launcher2/PagedViewWidget;->sHolographicOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/HolographicOutlineHelper;->highlightAlphaInterpolator(F)F

    move-result v0

    .line 249
    .local v0, holographicAlpha:F
    mul-float v4, v3, v5

    float-to-int v2, v4

    .line 250
    .local v2, newViewAlpha:I
    mul-float v4, v0, v5

    float-to-int v1, v4

    .line 251
    .local v1, newHolographicAlpha:I
    iget v4, p0, Lcom/android/launcher2/PagedViewWidget;->mAlpha:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicAlpha:I

    if-eq v4, v1, :cond_1

    .line 252
    :cond_0
    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mAlpha:I

    .line 253
    iput v1, p0, Lcom/android/launcher2/PagedViewWidget;->mHolographicAlpha:I

    .line 254
    invoke-direct {p0, v3}, Lcom/android/launcher2/PagedViewWidget;->setChildrenAlpha(F)V

    .line 255
    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 257
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(ZZ)V

    .line 314
    return-void
.end method

.method setChecked(ZZ)V
    .locals 6
    .parameter "checked"
    .parameter "animate"

    .prologue
    .line 282
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eq v2, p1, :cond_1

    .line 283
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    .line 287
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eqz v2, :cond_2

    .line 288
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 289
    .local v0, alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 296
    .local v1, duration:I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 299
    :cond_0
    if-eqz p2, :cond_3

    .line 300
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 301
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 307
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    .line 309
    .end local v0           #alpha:F
    .end local v1           #duration:I
    :cond_1
    return-void

    .line 291
    :cond_2
    const/high16 v0, 0x3f80

    .line 292
    .restart local v0       #alpha:F
    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    .restart local v1       #duration:I
    goto :goto_0

    .line 304
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setAlpha(F)V

    goto :goto_1
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(Z)V

    .line 324
    return-void

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
