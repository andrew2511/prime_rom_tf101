.class Lcom/android/browser/WebViewFastScroller;
.super Ljava/lang/Object;
.source "WebViewFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/WebViewFastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final DEFAULT_STATES:[I

.field private static MIN_PAGES:F

.field private static final PRESSED_STATES:[I


# instance fields
.field private mAlwaysShow:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsScrollerThumbDragged:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:I

.field private mOverlaySize:I

.field private mPosition:I

.field private mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbH:I

.field private mThumbW:I

.field private mThumbY:I

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mWebView:Lcom/android/browser/ScrollWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    const v0, 0x3f8ccccd

    sput v0, Lcom/android/browser/WebViewFastScroller;->MIN_PAGES:F

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/android/browser/WebViewFastScroller;->PRESSED_STATES:[I

    .line 50
    new-array v0, v2, [I

    sput-object v0, Lcom/android/browser/WebViewFastScroller;->DEFAULT_STATES:[I

    .line 52
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/WebViewFastScroller;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x59t 0x3t 0x1t 0x1t
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
        0x37t 0x3t 0x1t 0x1t
        0x38t 0x3t 0x1t 0x1t
        0x3at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/ScrollWebView;)V
    .locals 1
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mHandler:Landroid/os/Handler;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WebViewFastScroller;->mAlwaysShow:Z

    .line 104
    iput-object p2, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    .line 105
    invoke-direct {p0, p1}, Lcom/android/browser/WebViewFastScroller;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/WebViewFastScroller;)Lcom/android/browser/ScrollWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    return-object v0
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 266
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 267
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v0, v8}, Lcom/android/browser/ScrollWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 268
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 269
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/browser/WebViewFastScroller;->ATTRS:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    .local v0, ta:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/browser/WebViewFastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 233
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 236
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 237
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/browser/WebViewFastScroller;->mOverlayPosition:I

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/browser/WebViewFastScroller;->mOverlaySize:I

    .line 241
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 242
    new-instance v1, Lcom/android/browser/WebViewFastScroller$ScrollFade;

    invoke-direct {v1, p0}, Lcom/android/browser/WebViewFastScroller$ScrollFade;-><init>(Lcom/android/browser/WebViewFastScroller;)V

    iput-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    .line 245
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 246
    const-string v1, "WebViewFastScroller"

    const-string v2, " --- calling onSizeChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v2}, Lcom/android/browser/ScrollWebView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2, v3, v3}, Lcom/android/browser/WebViewFastScroller;->onSizeChanged(IIII)V

    .line 250
    :cond_0
    iput-boolean v3, p0, Lcom/android/browser/WebViewFastScroller;->mIsScrollerThumbDragged:Z

    .line 251
    iput v3, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    .line 252
    invoke-direct {p0}, Lcom/android/browser/WebViewFastScroller;->refreshDrawableState()V

    .line 254
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/WebViewFastScroller;->setScrollbarPosition(I)V

    .line 257
    return-void
.end method

.method private refreshDrawableState()V
    .locals 3

    .prologue
    .line 123
    iget v1, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/browser/WebViewFastScroller;->PRESSED_STATES:[I

    move-object v0, v1

    .line 125
    .local v0, state:[I
    :goto_0
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 128
    :cond_0
    return-void

    .line 123
    .end local v0           #state:[I
    :cond_1
    sget-object v1, Lcom/android/browser/WebViewFastScroller;->DEFAULT_STATES:[I

    move-object v0, v1

    goto :goto_0
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->getWidth()I

    move-result v0

    .line 202
    .local v0, viewWidth:I
    iget v1, p0, Lcom/android/browser/WebViewFastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 213
    return-void

    .line 206
    :pswitch_0
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    iget v3, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scrollTo(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/browser/ScrollWebView;->scrollTo(II)V

    .line 262
    return-void
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 216
    iput-object p2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 218
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    .line 220
    const/16 v0, 0x26

    iput v0, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    .line 224
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 272
    iget v10, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    if-nez v10, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget v10, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2

    .line 279
    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v10}, Lcom/android/browser/ScrollWebView;->getHeight()I

    move-result v8

    .line 280
    .local v8, webViewHeight:I
    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v10}, Lcom/android/browser/ScrollWebView;->getContentHeight()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v11}, Lcom/android/browser/ScrollWebView;->getScale()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 281
    .local v1, contentHeight:I
    int-to-float v10, v8

    sget v11, Lcom/android/browser/WebViewFastScroller;->MIN_PAGES:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v11, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    add-int/lit8 v10, v10, 0x30

    if-le v1, v10, :cond_0

    .line 285
    sub-int v10, v1, v8

    iget v11, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    sub-int v3, v10, v11

    .line 286
    .local v3, maxScrollableY:I
    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v10}, Lcom/android/browser/ScrollWebView;->getScrollY()I

    move-result v10

    iget-object v11, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    const/16 v11, 0x30

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v3

    div-float v5, v10, v11

    .line 287
    .local v5, newThumbYPercentage:F
    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    const/16 v10, 0x30

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/lit8 v4, v10, 0x30

    .line 289
    .local v4, newThumbY:I
    iput v4, p0, Lcom/android/browser/WebViewFastScroller;->mThumbY:I

    .line 294
    .end local v1           #contentHeight:I
    .end local v3           #maxScrollableY:I
    .end local v4           #newThumbY:I
    .end local v5           #newThumbYPercentage:F
    .end local v8           #webViewHeight:I
    :cond_2
    iget v9, p0, Lcom/android/browser/WebViewFastScroller;->mThumbY:I

    .line 295
    .local v9, y:I
    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v10}, Lcom/android/browser/ScrollWebView;->getWidth()I

    move-result v7

    .line 296
    .local v7, viewWidth:I
    iget-object v6, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    .line 298
    .local v6, scrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;
    const/4 v0, -0x1

    .line 299
    .local v0, alpha:I
    iget v10, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    .line 301
    invoke-virtual {v6}, Lcom/android/browser/WebViewFastScroller$ScrollFade;->getAlpha()I

    move-result v0

    .line 302
    const/16 v10, 0x68

    if-ge v0, v10, :cond_3

    .line 306
    :cond_3
    const/4 v2, 0x0

    .line 307
    .local v2, left:I
    iget v10, p0, Lcom/android/browser/WebViewFastScroller;->mPosition:I

    packed-switch v10, :pswitch_data_0

    .line 316
    :goto_1
    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    add-int/2addr v12, v2

    iget v13, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    invoke-virtual {v10, v2, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    .end local v2           #left:I
    :cond_4
    const/4 v10, 0x0

    int-to-float v11, v9

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 321
    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 322
    const/4 v10, 0x0

    neg-int v11, v9

    int-to-float v11, v11

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 324
    iget v10, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    .line 325
    if-nez v0, :cond_6

    .line 328
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 334
    :cond_5
    :goto_2
    iget v10, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    goto/16 :goto_0

    .line 310
    .restart local v2       #left:I
    :pswitch_0
    iget v10, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    mul-int/2addr v10, v0

    div-int/lit16 v10, v10, 0xd0

    sub-int v2, v7, v10

    .line 311
    goto :goto_1

    .line 313
    :pswitch_1
    iget v10, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    neg-int v10, v10

    iget v11, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    mul-int/2addr v11, v0

    div-int/lit16 v11, v11, 0xd0

    add-int v2, v10, v11

    goto :goto_1

    .line 330
    .end local v2           #left:I
    :cond_6
    iget-object v10, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v10}, Lcom/android/browser/ScrollWebView;->invalidate()V

    goto :goto_2

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    return v0
.end method

.method public getStateName(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 181
    packed-switch p1, :pswitch_data_0

    .line 195
    const-string v0, "Invalid state"

    :goto_0
    return-object v0

    .line 183
    :pswitch_0
    const-string v0, "STATE_NONE"

    goto :goto_0

    .line 185
    :pswitch_1
    const-string v0, "STATE_ENTER"

    goto :goto_0

    .line 187
    :pswitch_2
    const-string v0, "STATE_DRAGGING"

    goto :goto_0

    .line 189
    :pswitch_3
    const-string v0, "STATE_VISIBLE"

    goto :goto_0

    .line 191
    :pswitch_4
    const-string v0, "STATE_EXIT"

    goto :goto_0

    .line 193
    :pswitch_5
    const-string v0, "STATE_FLOATING"

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/browser/WebViewFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method isPointInside(FFI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "action"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, inTrack:Z
    const/4 v1, 0x0

    .line 435
    .local v1, inTrackVertical:Z
    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mPosition:I

    packed-switch v2, :pswitch_data_0

    .line 439
    iget-object v2, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v2}, Lcom/android/browser/ScrollWebView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move v0, v5

    .line 449
    :goto_0
    if-nez p3, :cond_0

    .line 450
    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbY:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbY:I

    iget v3, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_3

    move v1, v5

    .line 451
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    move v0, v5

    .line 453
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v4

    .line 439
    goto :goto_0

    .line 442
    :pswitch_0
    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move v0, v5

    :goto_3
    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_3

    :cond_3
    move v1, v4

    .line 450
    goto :goto_1

    :cond_4
    move v0, v4

    .line 451
    goto :goto_2

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 349
    iget v0, p0, Lcom/android/browser/WebViewFastScroller;->mPosition:I

    packed-switch v0, :pswitch_data_0

    .line 353
    const-string v0, "WebViewFastScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged - set bounds to: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/browser/WebViewFastScroller;->mThumbW:I

    iget v2, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "me"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/16 v9, 0x30

    const/4 v10, 0x1

    .line 366
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v7}, Lcom/android/browser/ScrollWebView;->getHeight()I

    move-result v6

    .line 367
    .local v6, webViewHeight:I
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v7}, Lcom/android/browser/ScrollWebView;->getContentHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v8}, Lcom/android/browser/ScrollWebView;->getScale()F

    move-result v8

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 368
    .local v1, contentHeight:I
    int-to-float v7, v6

    sget v8, Lcom/android/browser/WebViewFastScroller;->MIN_PAGES:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    add-int/lit8 v7, v7, 0x30

    if-gt v1, v7, :cond_0

    move v7, v12

    .line 429
    :goto_0
    return v7

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 375
    .local v0, action:I
    if-nez v0, :cond_1

    .line 376
    const-string v7, "WebViewFastScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent - MotionEvent.ACTION_DOWN. mState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    invoke-virtual {p0, v9}, Lcom/android/browser/WebViewFastScroller;->getStateName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0, v11}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 379
    invoke-direct {p0}, Lcom/android/browser/WebViewFastScroller;->cancelFling()V

    move v7, v10

    .line 380
    goto :goto_0

    .line 381
    :cond_1
    if-ne v0, v10, :cond_3

    .line 382
    const-string v7, "WebViewFastScroller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTouchEvent - MotionEvent.ACTION_UP. mState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    invoke-virtual {p0, v9}, Lcom/android/browser/WebViewFastScroller;->getStateName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget v7, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    if-ne v7, v11, :cond_8

    .line 384
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 385
    iget-object v2, p0, Lcom/android/browser/WebViewFastScroller;->mHandler:Landroid/os/Handler;

    .line 386
    .local v2, handler:Landroid/os/Handler;
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 387
    iget-boolean v7, p0, Lcom/android/browser/WebViewFastScroller;->mAlwaysShow:Z

    if-nez v7, :cond_2

    .line 388
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 391
    :cond_2
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v7}, Lcom/android/browser/ScrollWebView;->invalidate()V

    move v7, v10

    .line 392
    goto :goto_0

    .line 394
    .end local v2           #handler:Landroid/os/Handler;
    :cond_3
    if-ne v0, v11, :cond_8

    .line 396
    iget v7, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    if-ne v7, v11, :cond_8

    .line 397
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    sub-int v7, v6, v9

    sub-int v3, v1, v7

    .line 400
    .local v3, maxScrollableY:I
    if-gez v3, :cond_4

    .line 401
    const/4 v3, 0x0

    .line 402
    const-string v7, "WebViewFastScroller"

    const-string v8, " --- Webpage content height is shorter than webview height"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    div-int/lit8 v8, v8, 0x2

    sub-int v4, v7, v8

    .line 406
    .local v4, newThumbY:I
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    if-ge v4, v9, :cond_6

    .line 407
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    const/16 v4, 0x30

    .line 411
    :cond_5
    :goto_1
    iget v7, p0, Lcom/android/browser/WebViewFastScroller;->mThumbY:I

    sub-int v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gez v7, :cond_7

    .line 415
    iget-object v7, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    sub-int v7, v4, v9

    const/4 v8, -0x1

    if-le v7, v8, :cond_7

    move v7, v10

    .line 417
    goto/16 :goto_0

    .line 408
    :cond_6
    iget v7, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    sub-int v7, v6, v7

    if-le v4, v7, :cond_5

    .line 409
    iget v7, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    sub-int v4, v6, v7

    goto :goto_1

    .line 420
    :cond_7
    iput v4, p0, Lcom/android/browser/WebViewFastScroller;->mThumbY:I

    .line 422
    iget v7, p0, Lcom/android/browser/WebViewFastScroller;->mThumbY:I

    iget-object v8, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    sub-int/2addr v7, v9

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    sub-int v8, v6, v9

    iget v9, p0, Lcom/android/browser/WebViewFastScroller;->mThumbH:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v5, v7, v8

    .line 425
    .local v5, scrollToPercentage:F
    int-to-float v7, v3

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/browser/WebViewFastScroller;->scrollTo(I)V

    move v7, v10

    .line 426
    goto/16 :goto_0

    .end local v3           #maxScrollableY:I
    .end local v4           #newThumbY:I
    .end local v5           #scrollToPercentage:F
    :cond_8
    move v7, v12

    .line 429
    goto/16 :goto_0
.end method

.method public setAlwaysShow(Z)V
    .locals 4
    .parameter "alwaysShow"

    .prologue
    const/4 v2, 0x3

    .line 109
    iput-boolean p1, p0, Lcom/android/browser/WebViewFastScroller;->mAlwaysShow:Z

    .line 110
    if-eqz p1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget v0, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    if-ne v0, v2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/browser/WebViewFastScroller;->mPosition:I

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 136
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/browser/WebViewFastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 149
    packed-switch p1, :pswitch_data_0

    .line 172
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/android/browser/WebViewFastScroller;->mState:I

    .line 173
    invoke-direct {p0}, Lcom/android/browser/WebViewFastScroller;->refreshDrawableState()V

    .line 174
    return-void

    .line 151
    :pswitch_1
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->invalidate()V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    invoke-direct {p0}, Lcom/android/browser/WebViewFastScroller;->resetThumbPos()V

    goto :goto_0

    .line 159
    :pswitch_3
    invoke-direct {p0}, Lcom/android/browser/WebViewFastScroller;->resetThumbPos()V

    goto :goto_0

    .line 162
    :pswitch_4
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->getWidth()I

    move-result v0

    .line 163
    .local v0, viewWidth:I
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mWebView:Lcom/android/browser/ScrollWebView;

    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->invalidate()V

    goto :goto_0

    .line 166
    .end local v0           #viewWidth:I
    :pswitch_5
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/browser/WebViewFastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/WebViewFastScroller;->mScrollFade:Lcom/android/browser/WebViewFastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/WebViewFastScroller;->resetThumbPos()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method stop()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/WebViewFastScroller;->setState(I)V

    .line 341
    return-void
.end method
