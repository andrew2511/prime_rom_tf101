.class public Lcom/android/calendar/month/SimpleWeekView;
.super Landroid/view/View;
.source "SimpleWeekView.java"


# static fields
.field protected static DAY_SEPARATOR_WIDTH:I

.field protected static DEFAULT_HEIGHT:I

.field protected static MINI_DAY_NUMBER_TEXT_SIZE:I

.field protected static MINI_TODAY_NUMBER_TEXT_SIZE:I

.field protected static MIN_HEIGHT:I

.field protected static mScale:F


# instance fields
.field protected mBGColor:I

.field protected mDayNumbers:[Ljava/lang/String;

.field protected mDaySeparatorColor:I

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field protected mFocusDay:[Z

.field protected mFocusMonthColor:I

.field protected mHasSelectedDay:Z

.field protected mHasToday:Z

.field protected mHeight:I

.field protected mLastMonth:I

.field protected mMonthNumPaint:Landroid/graphics/Paint;

.field protected mNumCells:I

.field protected mNumDays:I

.field protected mOtherMonthColor:I

.field protected mPadding:I

.field protected mSelectedDay:I

.field protected mSelectedDayLine:Landroid/graphics/drawable/Drawable;

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field protected mSelectedWeekBGColor:I

.field protected mShowWeekNum:Z

.field protected mTimeZone:Ljava/lang/String;

.field protected mToday:I

.field protected mWeek:I

.field protected mWeekNumColor:I

.field protected mWeekStart:I

.field protected mWidth:I

.field protected p:Landroid/graphics/Paint;

.field protected r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->DEFAULT_HEIGHT:I

    .line 87
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    .line 94
    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->DAY_SEPARATOR_WIDTH:I

    .line 96
    const/16 v0, 0xe

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 97
    const/16 v0, 0x12

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 159
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 103
    iput v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    .line 105
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    .line 106
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    .line 115
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    .line 117
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstMonth:I

    .line 119
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastMonth:I

    .line 122
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    .line 126
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->DEFAULT_HEIGHT:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    .line 128
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    .line 130
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    .line 132
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    .line 134
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    .line 136
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    .line 138
    iput v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    .line 140
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    .line 142
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 144
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    .line 146
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    .line 149
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mTimeZone:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mBGColor:I

    .line 164
    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedWeekBGColor:I

    .line 165
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusMonthColor:I

    .line 166
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mOtherMonthColor:I

    .line 167
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mDaySeparatorColor:I

    .line 168
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekNumColor:I

    .line 169
    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDayLine:Landroid/graphics/drawable/Drawable;

    .line 171
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    .line 173
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 174
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->DEFAULT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->DEFAULT_HEIGHT:I

    .line 175
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    .line 176
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 177
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeekView;->initView()V

    .line 183
    return-void
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedWeekBGColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 394
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 395
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 396
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 397
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 398
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 399
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 400
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 401
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 402
    :cond_0
    return-void
.end method

.method protected drawDaySeparators(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 457
    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 458
    .local v7, nDays:I
    const/4 v6, 0x1

    .line 459
    .local v6, i:I
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v0, :cond_0

    .line 460
    const/4 v6, 0x2

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mDaySeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/SimpleWeekView;->DAY_SEPARATOR_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 465
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    int-to-float v1, v0

    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 467
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDayLine:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 469
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDayLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 470
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDayLine:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 471
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDayLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 473
    :cond_1
    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    .line 411
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 413
    .local v4, textHeight:F
    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 415
    .local v3, nDays:I
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, i:I
    mul-int/lit8 v0, v3, 0x2

    .line 418
    .local v0, divisor:I
    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v7, :cond_0

    .line 419
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekNumColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 420
    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/2addr v7, v0

    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v5, v7, v8

    .line 421
    .local v5, x:I
    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    const/4 v8, 0x2

    sub-int v6, v7, v8

    .line 422
    .local v6, y:I
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 423
    add-int/lit8 v1, v1, 0x1

    .line 426
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 427
    .restart local v6       #y:I
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v2, v7, v1

    .line 428
    .local v2, isFocusMonth:Z
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusMonthColor:I

    :goto_0
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 430
    :goto_1
    if-ge v1, v3, :cond_6

    .line 431
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v7, v7, v1

    if-eq v7, v2, :cond_1

    .line 432
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v2, v7, v1

    .line 433
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_5

    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusMonthColor:I

    :goto_2
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 436
    :cond_1
    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    if-ne v7, v1, :cond_2

    .line 437
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v8, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 438
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 440
    :cond_2
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    mul-int/2addr v7, v8

    div-int/2addr v7, v0

    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v5, v7, v8

    .line 441
    .restart local v5       #x:I
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v7, v7, v1

    int-to-float v8, v5

    int-to-float v9, v6

    iget-object v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 442
    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    if-ne v7, v1, :cond_3

    .line 443
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v8, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 444
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 430
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    .end local v5           #x:I
    :cond_4
    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mOtherMonthColor:I

    goto :goto_0

    .line 433
    :cond_5
    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mOtherMonthColor:I

    goto :goto_2

    .line 447
    :cond_6
    return-void
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 9
    .parameter "x"

    .prologue
    const v8, 0x253d8c

    const/4 v7, 0x1

    .line 351
    iget-boolean v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    div-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v4, v5

    move v2, v4

    .line 352
    .local v2, dayStart:I
    :goto_0
    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 353
    :cond_0
    const/4 v4, 0x0

    .line 372
    :goto_1
    return-object v4

    .line 351
    .end local v2           #dayStart:I
    :cond_1
    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    move v2, v4

    goto :goto_0

    .line 356
    .restart local v2       #dayStart:I
    :cond_2
    int-to-float v4, v2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 357
    .local v1, dayPosition:I
    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    add-int v0, v4, v1

    .line 359
    .local v0, day:I
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 360
    .local v3, time:Landroid/text/format/Time;
    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    if-nez v4, :cond_3

    .line 362
    if-ge v0, v8, :cond_4

    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 371
    :cond_3
    invoke-virtual {v3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-object v4, v3

    .line 372
    goto :goto_1

    .line 364
    :cond_4
    if-ne v0, v8, :cond_3

    .line 365
    const/4 v4, 0x0

    const/16 v5, 0x7b2

    invoke-virtual {v3, v7, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 366
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-object v4, v3

    .line 367
    goto :goto_1
.end method

.method public getFirstJulianDay()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    return v0
.end method

.method public getFirstMonth()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstMonth:I

    return v0
.end method

.method public getLastMonth()I
    .locals 1

    .prologue
    .line 330
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastMonth:I

    return v0
.end method

.method protected initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 304
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 307
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusMonthColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 311
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 313
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->drawDaySeparators(Landroid/graphics/Canvas;)V

    .line 380
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 502
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/month/SimpleWeekView;->setMeasuredDimension(II)V

    .line 503
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 477
    iput p1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    .line 478
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeekView;->updateSelectionPositions()V

    .line 479
    return-void
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter "tz"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 197
    const-string v6, "week"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "You must specify the week number for this view"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->setTag(Ljava/lang/Object;)V

    .line 201
    iput-object p2, p0, Lcom/android/calendar/month/SimpleWeekView;->mTimeZone:Ljava/lang/String;

    .line 203
    const-string v6, "height"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 204
    const-string v6, "height"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    .line 205
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    sget v7, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    if-ge v6, v7, :cond_1

    .line 206
    sget v6, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    .line 209
    :cond_1
    const-string v6, "selected_day"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 210
    const-string v6, "selected_day"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    .line 212
    :cond_2
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    if-eq v6, v12, :cond_b

    move v6, v10

    :goto_0
    iput-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    .line 213
    const-string v6, "num_days"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 214
    const-string v6, "num_days"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    .line 216
    :cond_3
    const-string v6, "show_wk_num"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 217
    const-string v6, "show_wk_num"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_c

    .line 218
    iput-boolean v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    .line 223
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int/lit8 v6, v6, 0x1

    :goto_2
    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 226
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    .line 227
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    .line 228
    const-string v6, "week"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    .line 229
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    invoke-static {v6}, Lcom/android/calendar/Utils;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v3

    .line 230
    .local v3, julianMonday:I
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 231
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, i:I
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v6, :cond_5

    .line 236
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-virtual {v4}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 237
    add-int/lit8 v2, v2, 0x1

    .line 240
    :cond_5
    const-string v6, "week_start"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 241
    const-string v6, "week_start"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    .line 247
    :cond_6
    iget v6, v4, Landroid/text/format/Time;->weekDay:I

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    if-eq v6, v7, :cond_8

    .line 248
    iget v6, v4, Landroid/text/format/Time;->weekDay:I

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    sub-int v0, v6, v7

    .line 249
    .local v0, diff:I
    if-gez v0, :cond_7

    .line 250
    add-int/lit8 v0, v0, 0x7

    .line 252
    :cond_7
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v6, v0

    iput v6, v4, Landroid/text/format/Time;->monthDay:I

    .line 253
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 256
    .end local v0           #diff:I
    :cond_8
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    .line 257
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstMonth:I

    .line 260
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 261
    .local v5, today:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 262
    iput-boolean v11, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    .line 263
    iput v12, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    .line 265
    const-string v6, "focus_month"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "focus_month"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v1, v6

    .line 269
    .local v1, focusMonth:I
    :goto_3
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    if-ge v2, v6, :cond_10

    .line 270
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    if-ne v6, v10, :cond_9

    .line 271
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstMonth:I

    .line 273
    :cond_9
    iget v6, v4, Landroid/text/format/Time;->month:I

    if-ne v6, v1, :cond_f

    .line 274
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aput-boolean v10, v6, v2

    .line 278
    :goto_4
    iget v6, v4, Landroid/text/format/Time;->year:I

    iget v7, v5, Landroid/text/format/Time;->year:I

    if-ne v6, v7, :cond_a

    iget v6, v4, Landroid/text/format/Time;->yearDay:I

    iget v7, v5, Landroid/text/format/Time;->yearDay:I

    if-ne v6, v7, :cond_a

    .line 279
    iput-boolean v10, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    .line 280
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    .line 282
    :cond_a
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 283
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1           #focusMonth:I
    .end local v2           #i:I
    .end local v3           #julianMonday:I
    .end local v4           #time:Landroid/text/format/Time;
    .end local v5           #today:Landroid/text/format/Time;
    :cond_b
    move v6, v11

    .line 212
    goto/16 :goto_0

    .line 220
    :cond_c
    iput-boolean v11, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    goto/16 :goto_1

    .line 223
    :cond_d
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    goto/16 :goto_2

    .restart local v2       #i:I
    .restart local v3       #julianMonday:I
    .restart local v4       #time:Landroid/text/format/Time;
    .restart local v5       #today:Landroid/text/format/Time;
    :cond_e
    move v1, v12

    .line 265
    goto :goto_3

    .line 276
    .restart local v1       #focusMonth:I
    :cond_f
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aput-boolean v11, v6, v2

    goto :goto_4

    .line 287
    :cond_10
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    if-ne v6, v10, :cond_11

    .line 288
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v6, v10

    iput v6, v4, Landroid/text/format/Time;->monthDay:I

    .line 289
    invoke-virtual {v4, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 291
    :cond_11
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastMonth:I

    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeekView;->updateSelectionPositions()V

    .line 294
    return-void
.end method

.method protected updateSelectionPositions()V
    .locals 4

    .prologue
    .line 485
    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v1, :cond_2

    .line 486
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    sub-int v0, v1, v2

    .line 487
    .local v0, selectedPosition:I
    if-gez v0, :cond_0

    .line 488
    add-int/lit8 v0, v0, 0x7

    .line 490
    :cond_0
    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v1, :cond_1

    .line 491
    add-int/lit8 v0, v0, 0x1

    .line 493
    :cond_1
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    .line 495
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    .line 498
    .end local v0           #selectedPosition:I
    :cond_2
    return-void
.end method
