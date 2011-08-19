.class public Lcom/android/launcher2/CachedTextView;
.super Landroid/widget/TextView;
.source "CachedTextView.java"


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private final mCacheCanvas:Landroid/graphics/Canvas;

.field private final mCachePaint:Landroid/graphics/Paint;

.field private mEnabled:Z

.field private mIsBuildingCache:Z

.field mIsTextCacheDirty:Z

.field private mPaddingH:F

.field private mPaddingV:F

.field private mPrevAlpha:I

.field mRectLeft:F

.field mRectTop:F

.field private mText:Ljava/lang/CharSequence;

.field mTextCacheLeft:F

.field mTextCacheScrollX:F

.field mTextCacheTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCachePaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/CachedTextView;->mPrevAlpha:I

    .line 47
    iput v1, p0, Lcom/android/launcher2/CachedTextView;->mPaddingH:F

    .line 48
    iput v1, p0, Lcom/android/launcher2/CachedTextView;->mPaddingV:F

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mEnabled:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCachePaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/CachedTextView;->mPrevAlpha:I

    .line 47
    iput v1, p0, Lcom/android/launcher2/CachedTextView;->mPaddingH:F

    .line 48
    iput v1, p0, Lcom/android/launcher2/CachedTextView;->mPaddingV:F

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mEnabled:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCachePaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/CachedTextView;->mPrevAlpha:I

    .line 47
    iput v1, p0, Lcom/android/launcher2/CachedTextView;->mPaddingH:F

    .line 48
    iput v1, p0, Lcom/android/launcher2/CachedTextView;->mPaddingV:F

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mEnabled:Z

    .line 62
    return-void
.end method

.method private buildAndUpdateCache()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 88
    .local v1, layout:Landroid/text/Layout;
    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 89
    .local v2, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getExtendedPaddingTop()I

    move-result v6

    .line 90
    .local v6, top:I
    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getAlpha()F

    move-result v3

    .line 92
    .local v3, prevAlpha:F
    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getCacheLeftPadding()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheLeft:F

    .line 93
    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    iget v10, p0, Lcom/android/launcher2/CachedTextView;->mPaddingV:F

    sub-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getCacheTopPadding()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheTop:F

    .line 95
    iget v9, p0, Lcom/android/launcher2/CachedTextView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getLeft()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/CachedTextView;->mRectLeft:F

    .line 96
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/CachedTextView;->mRectTop:F

    .line 97
    iget v9, p0, Lcom/android/launcher2/CachedTextView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheScrollX:F

    .line 99
    int-to-float v9, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/launcher2/CachedTextView;->mPaddingH:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/launcher2/CachedTextView;->mScrollX:I

    iget v11, p0, Lcom/android/launcher2/CachedTextView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/CachedTextView;->mLeft:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getCacheRightPadding()I

    move-result v10

    int-to-float v10, v10

    add-float v5, v9, v10

    .line 102
    .local v5, textCacheRight:F
    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    add-int/2addr v9, v6

    int-to-float v9, v9

    iget v10, p0, Lcom/android/launcher2/CachedTextView;->mPaddingV:F

    add-float/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getCacheBottomPadding()I

    move-result v10

    int-to-float v10, v10

    add-float v4, v9, v10

    .line 104
    .local v4, textCacheBottom:F
    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 106
    .local v8, xCharWidth:F
    iget v9, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheLeft:F

    sub-float v9, v5, v9

    const/high16 v10, 0x4000

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    float-to-int v7, v9

    .line 107
    .local v7, width:I
    iget v9, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheTop:F

    sub-float v9, v4, v9

    float-to-int v0, v9

    .line 109
    .local v0, height:I
    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    .line 110
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 111
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ne v9, v7, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-eq v9, v0, :cond_1

    .line 112
    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 113
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    .line 116
    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    if-nez v9, :cond_3

    .line 117
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    .line 118
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    :goto_0
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 124
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    iget v10, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheLeft:F

    neg-float v10, v10

    iget v11, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheTop:F

    neg-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/CachedTextView;->mIsBuildingCache:Z

    .line 127
    const/high16 v9, 0x3f80

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CachedTextView;->setAlpha(F)V

    .line 128
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CachedTextView;->draw(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CachedTextView;->setAlpha(F)V

    .line 130
    iput-boolean v12, p0, Lcom/android/launcher2/CachedTextView;->mIsBuildingCache:Z

    .line 131
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher2/CachedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/CachedTextView;->mText:Ljava/lang/CharSequence;

    .line 137
    const-string v9, " "

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CachedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_2
    return-void

    .line 120
    :cond_3
    iget-object v9, p0, Lcom/android/launcher2/CachedTextView;->mCacheCanvas:Landroid/graphics/Canvas;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method public disableCache()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mEnabled:Z

    .line 79
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mIsTextCacheDirty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mIsBuildingCache:Z

    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/launcher2/CachedTextView;->buildAndUpdateCache()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mIsTextCacheDirty:Z

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mIsBuildingCache:Z

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCache:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheLeft:F

    iget v2, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheScrollX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/CachedTextView;->mScrollX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/CachedTextView;->mTextCacheTop:F

    iget-object v3, p0, Lcom/android/launcher2/CachedTextView;->mCachePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 155
    return-void
.end method

.method protected getCacheBottomPadding()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method protected getCacheLeftPadding()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected getCacheRightPadding()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method protected getCacheTopPadding()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/launcher2/CachedTextView;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CachedTextView;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/launcher2/CachedTextView;->mPrevAlpha:I

    if-eq v0, p1, :cond_0

    .line 164
    iput p1, p0, Lcom/android/launcher2/CachedTextView;->mPrevAlpha:I

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/CachedTextView;->mCachePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 166
    invoke-super {p0, p1}, Landroid/widget/TextView;->onSetAlpha(I)Z

    .line 168
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "text"
    .parameter "type"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CachedTextView;->mIsTextCacheDirty:Z

    .line 84
    return-void
.end method
