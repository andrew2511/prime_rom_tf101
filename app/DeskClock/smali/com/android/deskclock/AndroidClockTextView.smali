.class public Lcom/android/deskclock/AndroidClockTextView;
.super Landroid/view/View;
.source "AndroidClockTextView.java"


# static fields
.field private static sClockTypeface:Landroid/graphics/Typeface;

.field private static sHighlightTypeface:Landroid/graphics/Typeface;

.field private static sStandardTypeface:Landroid/graphics/Typeface;


# instance fields
.field private mColor:Landroid/content/res/ColorStateList;

.field private mHighlightAlpha:I

.field private mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightsEnabled:Z

.field private mProperties:Landroid/widget/TextView;

.field private mShortForm:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;

.field private mTextAlpha:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mUseClockTypeface:Z

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 68
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    .line 55
    const/16 v0, 0x9a

    iput v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextAlpha:I

    .line 56
    const/16 v0, 0xe6

    iput v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightAlpha:I

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTempRect:Landroid/graphics/Rect;

    .line 61
    iput v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mX:I

    .line 62
    iput v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mY:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    .line 55
    const/16 v0, 0x9a

    iput v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextAlpha:I

    .line 56
    const/16 v0, 0xe6

    iput v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightAlpha:I

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextBounds:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTempRect:Landroid/graphics/Rect;

    .line 61
    iput v3, p0, Lcom/android/deskclock/AndroidClockTextView;->mX:I

    .line 62
    iput v3, p0, Lcom/android/deskclock/AndroidClockTextView;->mY:I

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mProperties:Landroid/widget/TextView;

    .line 76
    const-string v0, "fontHighlightsEnabled"

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightsEnabled:Z

    .line 78
    const-string v0, "shortForm"

    invoke-interface {p2, v1, v0, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mShortForm:Z

    .line 79
    const-string v0, "useClockTypeface"

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    .line 80
    iget-boolean v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    if-nez v0, :cond_0

    .line 81
    iput-boolean v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightsEnabled:Z

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mProperties:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextSize:F

    .line 85
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mProperties:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mColor:Landroid/content/res/ColorStateList;

    .line 87
    sget-object v0, Lcom/android/deskclock/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    .line 88
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    .line 89
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/AndroidClockTextView;->sHighlightTypeface:Landroid/graphics/Typeface;

    .line 90
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v0, Lcom/android/deskclock/AndroidClockTextView;->sStandardTypeface:Landroid/graphics/Typeface;

    .line 93
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/deskclock/AndroidClockTextView;->sClockTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 95
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 96
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/deskclock/AndroidClockTextView;->sHighlightTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 101
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 104
    return-void

    .line 94
    :cond_2
    sget-object v1, Lcom/android/deskclock/AndroidClockTextView;->sStandardTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->getDrawableState()[I

    move-result-object v2

    const/high16 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 167
    .local v0, color:I
    iget-object v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    iget-boolean v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget-object v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    iget-boolean v2, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightsEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightAlpha:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    :cond_0
    return-void

    .line 171
    :cond_1
    iget v2, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextAlpha:I

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mY:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/deskclock/AndroidClockTextView;->mY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 179
    iget-boolean v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    iget v1, p0, Lcom/android/deskclock/AndroidClockTextView;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/deskclock/AndroidClockTextView;->mY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    .line 116
    iget-object v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 118
    .local v0, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget-object v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 119
    iget-boolean v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mUseClockTypeface:Z

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lcom/android/deskclock/AndroidClockTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 121
    iget-object v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/deskclock/AndroidClockTextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 124
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 125
    .local v3, mode:I
    if-ne v3, v9, :cond_1

    .line 126
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 130
    .local v2, measuredWidth:I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 131
    if-ne v3, v9, :cond_2

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 139
    .local v1, measuredHeight:I
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/android/deskclock/AndroidClockTextView;->setMeasuredDimension(II)V

    .line 141
    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->getPaddingLeft()I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mX:I

    .line 142
    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->getPaddingBottom()I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mY:I

    .line 143
    return-void

    .line 128
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_1
    iget-object v4, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->getPaddingRight()I

    move-result v5

    add-int v2, v4, v5

    .restart local v2       #measuredWidth:I
    goto :goto_0

    .line 136
    :cond_2
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v4, v4

    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    .restart local v1       #measuredHeight:I
    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mShortForm:Z

    if-eqz v0, :cond_1

    .line 147
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    .line 155
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->requestLayout()V

    .line 156
    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->invalidate()V

    .line 157
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 107
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mColor:Landroid/content/res/ColorStateList;

    .line 108
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/android/deskclock/AndroidClockTextView;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/deskclock/AndroidClockTextView;->refreshDrawableState()V

    .line 111
    return-void
.end method
