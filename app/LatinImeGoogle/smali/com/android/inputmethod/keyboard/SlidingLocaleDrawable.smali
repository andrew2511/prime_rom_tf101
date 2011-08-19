.class public Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SlidingLocaleDrawable.java"


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiff:I

.field private final mHeight:I

.field private mHitThreshold:Z

.field private final mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMiddleX:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPrevLanguage:Ljava/lang/String;

.field private final mRes:Landroid/content/res/Resources;

.field private final mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mThreshold:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)V
    .locals 4
    .parameter "context"
    .parameter "background"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mRes:Landroid/content/res/Resources;

    .line 60
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/android/inputmethod/keyboard/Keyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iput p3, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mWidth:I

    .line 63
    iput p4, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mHeight:I

    .line 64
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    .line 65
    .local v1, textPaint:Landroid/text/TextPaint;
    const v2, 0x1030044

    const/16 v3, 0x12

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->getTextSizeFromTheme(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 66
    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 67
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 68
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 70
    iput-object v1, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 71
    iget v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mWidth:I

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mMiddleX:I

    .line 72
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mRes:Landroid/content/res/Resources;

    .line 73
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f02008b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    const v2, 0x7f02008c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mThreshold:I

    .line 78
    return-void
.end method

.method private getTextSizeFromTheme(II)I
    .locals 6
    .parameter "style"
    .parameter "defValue"

    .prologue
    const/4 v5, 0x0

    .line 81
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010095

    aput v4, v3, v5

    invoke-virtual {v2, p1, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 84
    .local v1, textSize:I
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    iget-boolean v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v8, :cond_1

    .line 105
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 106
    .local v4, paint:Landroid/graphics/Paint;
    iget v7, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mWidth:I

    .line 107
    .local v7, width:I
    iget v2, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mHeight:I

    .line 108
    .local v2, height:I
    iget v1, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mDiff:I

    .line 109
    .local v1, diff:I
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    .local v3, lArrow:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    .local v5, rArrow:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v11, v11, v7, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 112
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 113
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v6

    .line 114
    .local v6, subtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLanguageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 115
    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getNextInputLanguageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 116
    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getPreviousInputLanguageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 119
    .end local v6           #subtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    :cond_0
    iget v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mHeight:I

    int-to-float v8, v8

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v9

    sub-float v0, v8, v9

    .line 121
    .local v0, baseline:F
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f090007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 122
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    div-int/lit8 v9, v7, 0x2

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    div-int/lit8 v9, v7, 0x2

    sub-int v9, v1, v9

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    add-int v9, v1, v7

    div-int/lit8 v10, v7, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 126
    invoke-static {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 127
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v8, v11, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 129
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    .end local v0           #baseline:F
    .end local v1           #diff:I
    .end local v2           #height:I
    .end local v3           #lArrow:Landroid/graphics/drawable/Drawable;
    .end local v4           #paint:Landroid/graphics/Paint;
    .end local v5           #rArrow:Landroid/graphics/drawable/Drawable;
    .end local v7           #width:I
    :cond_1
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 133
    iget v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 147
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 152
    return-void
.end method

.method setDiff(I)V
    .locals 2
    .parameter "diff"

    .prologue
    .line 88
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mHitThreshold:Z

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mDiff:I

    .line 94
    iget v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mWidth:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mWidth:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mDiff:I

    .line 95
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mWidth:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mWidth:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mDiff:I

    .line 96
    :cond_2
    iget v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mThreshold:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->mHitThreshold:Z

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->invalidateSelf()V

    goto :goto_0
.end method
