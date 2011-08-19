.class public Lcom/android/launcher2/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mBubbleColorAlpha:F

.field private mDidInvalidateForPressedState:Z

.field private mFocusedGlowColor:I

.field private mFocusedOutlineColor:I

.field private mOnVisibilityChangedListener:Lcom/android/launcher2/VisibilityChangedListener;

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedGlowColor:I

.field private mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

.field private mPressedOutlineColor:I

.field private mPrevAlpha:I

.field private mStayPressed:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;

.field private final mTempPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    .line 55
    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempPaint:Landroid/graphics/Paint;

    .line 75
    invoke-direct {p0}, Lcom/android/launcher2/BubbleTextView;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    .line 55
    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempPaint:Landroid/graphics/Paint;

    .line 80
    invoke-direct {p0}, Lcom/android/launcher2/BubbleTextView;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    .line 55
    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 56
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempPaint:Landroid/graphics/Paint;

    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/BubbleTextView;->init()V

    .line 86
    return-void
.end method

.method private createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "canvas"
    .parameter "outlineColor"
    .parameter "glowColor"

    .prologue
    .line 198
    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 199
    .local v1, padding:I
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/BubbleTextView;->drawWithPadding(Landroid/graphics/Canvas;I)V

    .line 204
    iget-object v2, p0, Lcom/android/launcher2/BubbleTextView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p1, p3, p2}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 206
    return-object v0
.end method

.method private drawWithPadding(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "destCanvas"
    .parameter "padding"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 177
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/BubbleTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/launcher2/BubbleTextView;->draw(Landroid/graphics/Canvas;)V

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 191
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {p0, v3}, Lcom/android/launcher2/BubbleTextView;->setFocusable(Z)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 95
    .local v0, bubbleColor:I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher2/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v2, p0, Lcom/android/launcher2/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/BubbleTextView;->mBubbleColorAlpha:F

    .line 98
    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/BubbleTextView;->mFocusedOutlineColor:I

    .line 99
    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/BubbleTextView;->mFocusedGlowColor:I

    .line 100
    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOutlineColor:I

    .line 101
    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/BubbleTextView;->mPressedGlowColor:I

    .line 103
    const/high16 v2, 0x4080

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    const/high16 v5, -0x3400

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/BubbleTextView;->setShadowLayer(FFFI)V

    .line 104
    return-void
.end method


# virtual methods
.method public applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V
    .locals 3
    .parameter "info"
    .parameter "iconCache"

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-virtual {p1, p2}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v1, v0}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/android/launcher2/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/launcher2/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 283
    iget-object v6, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 284
    .local v6, background:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 285
    iget v7, p0, Lcom/android/launcher2/BubbleTextView;->mScrollX:I

    .line 286
    .local v7, scrollX:I
    iget v8, p0, Lcom/android/launcher2/BubbleTextView;->mScrollY:I

    .line 288
    .local v8, scrollY:I
    iget-boolean v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v0, :cond_0

    .line 289
    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mRight:I

    iget v1, p0, Lcom/android/launcher2/BubbleTextView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/BubbleTextView;->mBottom:I

    iget v2, p0, Lcom/android/launcher2/BubbleTextView;->mTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v6, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 290
    iput-boolean v3, p0, Lcom/android/launcher2/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 293
    :cond_0
    or-int v0, v7, v8

    if-nez v0, :cond_2

    .line 294
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x4080

    const/high16 v2, 0x4000

    const/high16 v3, -0x3400

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 303
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 304
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 305
    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mScrollX:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe0

    const/high16 v2, -0x4500

    invoke-virtual {v0, v1, v9, v9, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 308
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 310
    return-void

    .line 296
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_2
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 297
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 298
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    iget-boolean v3, p0, Lcom/android/launcher2/BubbleTextView;->mDidInvalidateForPressedState:Z

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 162
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 163
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 166
    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 167
    return-void

    .line 140
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    move v0, v7

    .line 141
    .local v0, backgroundEmptyBefore:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/launcher2/BubbleTextView;->mStayPressed:Z

    if-nez v3, :cond_3

    .line 142
    iput-object v4, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    iget-object v3, p0, Lcom/android/launcher2/BubbleTextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_6

    .line 148
    iput-object v4, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 153
    :goto_2
    iput-boolean v6, p0, Lcom/android/launcher2/BubbleTextView;->mStayPressed:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 156
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v3, :cond_7

    move v1, v7

    .line 157
    .local v1, backgroundEmptyNow:Z
    :goto_3
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    .end local v0           #backgroundEmptyBefore:Z
    .end local v1           #backgroundEmptyNow:Z
    :cond_5
    move v0, v6

    .line 140
    goto :goto_1

    .line 150
    .restart local v0       #backgroundEmptyBefore:Z
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/android/launcher2/BubbleTextView;->mFocusedGlowColor:I

    iget v5, p0, Lcom/android/launcher2/BubbleTextView;->mFocusedOutlineColor:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher2/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_7
    move v1, v6

    .line 156
    goto :goto_3
.end method

.method getPressedOrFocusedBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getPressedOrFocusedBackgroundPadding()I
    .locals 1

    .prologue
    .line 278
    sget v0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 315
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 316
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 320
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 321
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 322
    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 3
    .parameter "alpha"

    .prologue
    .line 326
    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    if-eq v0, p1, :cond_0

    .line 327
    iput p1, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    .line 328
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/launcher2/BubbleTextView;->mBubbleColorAlpha:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 329
    invoke-super {p0, p1}, Landroid/widget/TextView;->onSetAlpha(I)Z

    .line 331
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 215
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 220
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/launcher2/BubbleTextView;->mPressedGlowColor:I

    iget v3, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOutlineColor:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/BubbleTextView;->mDidInvalidateForPressedState:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->invalidate()V

    goto :goto_0

    .line 230
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/BubbleTextView;->mDidInvalidateForPressedState:Z

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mOnVisibilityChangedListener:Lcom/android/launcher2/VisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mOnVisibilityChangedListener:Lcom/android/launcher2/VisibilityChangedListener;

    invoke-interface {v0, p0}, Lcom/android/launcher2/VisibilityChangedListener;->receiveVisibilityChangedMessage(Landroid/view/View;)V

    .line 254
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 255
    return-void
.end method

.method setCellLayoutPressedOrFocusedIcon()V
    .locals 3

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    .line 267
    .local v1, parent:Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 269
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setPressedOrFocusedIcon(Lcom/android/launcher2/BubbleTextView;)V

    .line 271
    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void

    .line 269
    .restart local v0       #layout:Lcom/android/launcher2/CellLayout;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 118
    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 121
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method setStayPressed(Z)V
    .locals 1
    .parameter "stayPressed"

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/android/launcher2/BubbleTextView;->mStayPressed:Z

    .line 259
    if-nez p1, :cond_0

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 263
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
