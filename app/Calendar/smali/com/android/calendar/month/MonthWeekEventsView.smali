.class public Lcom/android/calendar/month/MonthWeekEventsView;
.super Lcom/android/calendar/month/SimpleWeekView;
.source "MonthWeekEventsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;
    }
.end annotation


# static fields
.field private static DAY_SEPARATOR_INNER_WIDTH:I

.field private static DAY_SEPARATOR_OUTER_WIDTH:I

.field private static DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

.field private static DAY_SEPARATOR_VERTICAL_LENGTH:I

.field private static EVENT_BOTTOM_PADDING:I

.field private static EVENT_LINE_PADDING:I

.field private static EVENT_RIGHT_PADDING:I

.field private static EVENT_SQUARE_BORDER:I

.field private static EVENT_SQUARE_WIDTH:I

.field private static EVENT_X_OFFSET_LANDSCAPE:I

.field private static EVENT_Y_OFFSET_LANDSCAPE:I

.field private static EVENT_Y_OFFSET_PORTRAIT:I

.field private static PADDING_MONTH_NUMBER:I

.field private static PADDING_WEEK_NUMBER:I

.field private static SPACING_WEEK_NUMBER:I

.field private static TEXT_SIZE_EVENT:I

.field private static TEXT_SIZE_MONTH_NAME:I

.field private static TEXT_SIZE_MONTH_NUMBER:I

.field private static TEXT_SIZE_MORE_EVENTS:I

.field private static TEXT_SIZE_WEEK_NUM:I

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mScaled:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field protected mDaySeparatorInnerColor:I

.field protected mDaySeparatorOuterColor:I

.field protected mEventChipOutlineColor:I

.field protected mEventExtrasPaint:Landroid/text/TextPaint;

.field protected mEventHeight:I

.field protected mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

.field protected mEventPaint:Landroid/text/TextPaint;

.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHasToday:Z

.field private mIsSingleLine:Z

.field protected mMonthEventColor:I

.field protected mMonthEventExtraColor:I

.field protected mMonthEventExtraOtherColor:I

.field protected mMonthEventOtherColor:I

.field protected mMonthNameColor:I

.field protected mMonthNameOtherColor:I

.field protected mMonthNumColor:I

.field protected mMonthNumHeight:I

.field protected mMonthNumOtherColor:I

.field protected mMonthNumTodayColor:I

.field protected mMonthWeekNumColor:I

.field protected mOrientation:I

.field protected mToday:Landroid/text/format/Time;

.field protected mTodayDrawable:Landroid/graphics/drawable/Drawable;

.field protected mTodayIndex:I

.field protected mWeekNumHeight:I

.field protected mWeekNumPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    const/16 v0, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x4

    .line 52
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    .line 53
    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    .line 54
    sput v3, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    .line 55
    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    .line 58
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_MONTH_NUMBER:I

    .line 59
    const/16 v0, 0x10

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_WEEK_NUMBER:I

    .line 60
    const/4 v0, 0x5

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 61
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 62
    const/16 v0, 0x35

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 63
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 66
    const/16 v0, 0xb

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 68
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    .line 69
    sput v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    .line 70
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    .line 71
    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    .line 74
    const/16 v0, 0x13

    sput v0, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/month/MonthWeekEventsView;->mScaled:Z

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 88
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/month/MonthWeekEventsView;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isSingleLine"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 142
    invoke-direct {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    .line 78
    iput-boolean v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 79
    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    const/16 v1, 0x460

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;-><init>(Lcom/android/calendar/month/MonthWeekEventsView;I)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    .line 113
    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventChipOutlineColor:I

    .line 114
    const v0, 0x33ffffff

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorOuterColor:I

    .line 115
    const/high16 v0, 0x1a00

    iput v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorInnerColor:I

    .line 117
    iput-boolean v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mIsSingleLine:Z

    .line 143
    iput-boolean p2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mIsSingleLine:Z

    .line 144
    return-void
.end method


# virtual methods
.method protected addChipOutline(Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;III)I
    .locals 3
    .parameter "lines"
    .parameter "count"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 442
    add-int/lit8 v1, p2, 0x10

    invoke-virtual {p1, v1}, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->ensureSize(I)V

    .line 444
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, count:I
    int-to-float v2, p3

    aput v2, v1, p2

    .line 445
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v2, p4

    aput v2, v1, v0

    .line 446
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    aput v2, v1, p2

    .line 447
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v2, p4

    aput v2, v1, v0

    .line 449
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    aput v2, v1, p2

    .line 450
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v2, p4

    aput v2, v1, v0

    .line 451
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    aput v2, v1, p2

    .line 452
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    aput v2, v1, v0

    .line 454
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v2, p3

    aput v2, v1, p2

    .line 455
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v2, p4

    aput v2, v1, v0

    .line 456
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v2, p3

    aput v2, v1, p2

    .line 457
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p4

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aput v2, v1, v0

    .line 459
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v2, p3

    aput v2, v1, p2

    .line 460
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    aput v2, v1, v0

    .line 461
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    aput v2, v1, p2

    .line 462
    iget-object v1, p1, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v2, p4

    int-to-float v2, v2

    aput v2, v1, v0

    .line 464
    return p2
.end method

.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 326
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedWeekBGColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, wkNumOffset:I
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 333
    .local v0, effectiveWidth:I
    const/4 v1, 0x1

    .line 334
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v0, v2

    .line 335
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 336
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 337
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 339
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v0

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    mul-int/2addr v4, v1

    add-int/2addr v3, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 341
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 342
    iget-object v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    .end local v0           #effectiveWidth:I
    .end local v1           #wkNumOffset:I
    :cond_0
    return-void
.end method

.method protected drawDaySeparators(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 289
    const/16 v9, 0x20

    new-array v4, v9, [F

    .line 290
    .local v4, lines:[F
    const/16 v0, 0x1c

    .line 291
    .local v0, count:I
    const/4 v5, 0x0

    .line 292
    .local v5, wkNumOffset:I
    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v1, v9, v10

    .line 293
    .local v1, effectiveWidth:I
    add-int/lit8 v0, v0, 0x4

    .line 294
    const/4 v5, 0x1

    .line 295
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v1, v9

    .line 296
    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    int-to-float v9, v9

    aput v9, v4, v12

    .line 297
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    aput v9, v4, v13

    .line 298
    const/4 v9, 0x2

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v11, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    aput v10, v4, v9

    .line 299
    const/4 v9, 0x3

    aget v10, v4, v13

    aput v10, v4, v9

    .line 300
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    div-int/lit8 v9, v9, 0x2

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    add-int v7, v9, v10

    .line 302
    .local v7, y0:I
    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    if-ne v9, v13, :cond_0

    .line 303
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    add-int v8, v7, v9

    .line 308
    .local v8, y1:I
    :goto_0
    const/4 v2, 0x4

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 309
    div-int/lit8 v9, v3, 0x4

    sub-int/2addr v9, v5

    mul-int/2addr v9, v1

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v9, v10

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v9, v10

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    mul-int/2addr v10, v5

    add-int v6, v9, v10

    .line 311
    .local v6, x:I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    int-to-float v9, v6

    aput v9, v4, v3

    .line 312
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-float v9, v7

    aput v9, v4, v2

    .line 313
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    int-to-float v9, v6

    aput v9, v4, v3

    .line 314
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-float v9, v8

    aput v9, v4, v2

    goto :goto_1

    .line 305
    .end local v3           #i:I
    .end local v6           #x:I
    .end local v8           #y1:I
    :cond_0
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    add-int v8, v7, v9

    .restart local v8       #y1:I
    goto :goto_0

    .line 316
    .restart local v3       #i:I
    :cond_1
    iget-object v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorOuterColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    iget-object v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 318
    iget-object v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v12, v0, v9}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 319
    iget-object v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDaySeparatorInnerColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget v10, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 321
    iget-object v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v12, v0, v9}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 322
    return-void
.end method

.method protected drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZ)I
    .locals 19
    .parameter "canvas"
    .parameter "event"
    .parameter "x"
    .parameter "y"
    .parameter "rightEdge"
    .parameter "moreEvents"

    .prologue
    .line 480
    sget v5, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    move v6, v0

    add-int v15, v5, v6

    .line 481
    .local v15, requiredSpace:I
    const/4 v14, 0x1

    .line 482
    .local v14, multiplier:I
    if-eqz p6, :cond_0

    .line 483
    add-int/lit8 v14, v14, 0x1

    .line 485
    :cond_0
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move v5, v0

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mIsSingleLine:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 486
    add-int/lit8 v14, v14, 0x1

    .line 488
    :cond_1
    mul-int/2addr v15, v14

    .line 489
    add-int v5, v15, p4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    move v6, v0

    sget v7, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    move/from16 v5, p4

    .line 516
    .end local v14           #multiplier:I
    :goto_0
    return v5

    .line 493
    .restart local v14       #multiplier:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    move-object v5, v0

    move/from16 v0, p3

    move-object v1, v5

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    move-object v5, v0

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v6, v6, p3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    move-object v5, v0

    move/from16 v0, p4

    move-object v1, v5

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    move-object v5, v0

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v6, v6, p4

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendar/Event;->color:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 500
    sget v5, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    add-int v5, v5, p3

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int v17, v5, v6

    .line 501
    .local v17, textX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    move v5, v0

    add-int v5, v5, p4

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    div-int/lit8 v6, v6, 0x2

    sub-int v18, v5, v6

    .line 502
    .local v18, textY:I
    sub-int v5, p5, v17

    int-to-float v13, v5

    .line 503
    .local v13, avail:F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v5, v6, v13, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 505
    .local v16, text:Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 506
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move v5, v0

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mIsSingleLine:Z

    move v5, v0

    if-nez v5, :cond_3

    .line 507
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    move v5, v0

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int/2addr v5, v6

    add-int v18, v18, v5

    .line 508
    sget-object v5, Lcom/android/calendar/month/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/calendar/month/MonthWeekEventsView;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide v7, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide v9, v0

    const v11, 0x80001

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .end local v14           #multiplier:I
    move-result-object v12

    invoke-static/range {v5 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v16

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    move-object v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v16

    move-object v1, v5

    move v2, v13

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 513
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v17

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 516
    :cond_3
    sget v5, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int v5, v5, v18

    goto/16 :goto_0
.end method

.method protected drawEvents(Landroid/graphics/Canvas;)V
    .locals 22
    .parameter "canvas"

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const/16 v21, 0x0

    .line 393
    .local v21, wkNumOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x2

    sub-int v13, v5, v6

    .line 394
    .local v13, effectiveWidth:I
    const/16 v21, 0x1

    .line 395
    sget v5, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v13, v5

    .line 397
    const/4 v12, -0x1

    .line 398
    .local v12, day:I
    const/16 v19, 0x0

    .line 399
    .local v19, outlineCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 400
    .local v15, eventDay:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    add-int/lit8 v12, v12, 0x1

    .line 401
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 405
    mul-int v5, v12, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    move v6, v0

    div-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    move v6, v0

    add-int/2addr v5, v6

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    mul-int v6, v6, v21

    add-int v8, v5, v6

    .line 407
    .local v8, xSquare:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 408
    sget v5, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    move v6, v0

    add-int/2addr v5, v6

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_MONTH_NUMBER:I

    add-int v9, v5, v6

    .line 409
    .local v9, ySquare:I
    sget v5, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_MONTH_NUMBER:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v8, v5

    .line 414
    :goto_2
    add-int/lit8 v5, v12, 0x1

    mul-int/2addr v5, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    move v6, v0

    div-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    move v6, v0

    add-int/2addr v5, v6

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    mul-int v6, v6, v21

    add-int/2addr v5, v6

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    sub-int v10, v5, v6

    .line 416
    .local v10, rightEdge:I
    const/4 v14, 0x0

    .line 417
    .local v14, eventCount:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 418
    .local v17, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 419
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/Event;

    .line 420
    .local v7, event:Lcom/android/calendar/Event;
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvent(Landroid/graphics/Canvas;Lcom/android/calendar/Event;IIIZ)I

    move-result v18

    .line 421
    .local v18, newY:I
    move/from16 v0, v18

    move v1, v9

    if-ne v0, v1, :cond_5

    .line 429
    .end local v7           #event:Lcom/android/calendar/Event;
    .end local v18           #newY:I
    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v20, v5, v14

    .line 430
    .local v20, remaining:I
    if-lez v20, :cond_2

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/month/MonthWeekEventsView;->drawMoreEvents(Landroid/graphics/Canvas;II)V

    goto/16 :goto_1

    .line 411
    .end local v9           #ySquare:I
    .end local v10           #rightEdge:I
    .end local v14           #eventCount:I
    .end local v17           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .end local v20           #remaining:I
    :cond_4
    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 412
    .restart local v9       #ySquare:I
    sget v5, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    add-int/2addr v8, v5

    goto :goto_2

    .line 424
    .restart local v7       #event:Lcom/android/calendar/Event;
    .restart local v10       #rightEdge:I
    .restart local v14       #eventCount:I
    .restart local v17       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .restart local v18       #newY:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v19

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/month/MonthWeekEventsView;->addChipOutline(Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;III)I

    move-result v19

    .line 425
    add-int/lit8 v14, v14, 0x1

    .line 426
    move/from16 v9, v18

    .line 427
    goto :goto_3

    .line 434
    .end local v7           #event:Lcom/android/calendar/Event;
    .end local v8           #xSquare:I
    .end local v9           #ySquare:I
    .end local v10           #rightEdge:I
    .end local v14           #eventCount:I
    .end local v15           #eventDay:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .end local v17           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    .end local v18           #newY:I
    :cond_6
    if-lez v19, :cond_0

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventChipOutlineColor:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    move-object v5, v0

    sget v6, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventOutlines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move/from16 v3, v19

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected drawMoreEvents(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "remainingEvents"
    .parameter "x"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 520
    new-instance v0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;

    const/16 v3, 0x10

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;-><init>(Lcom/android/calendar/month/MonthWeekEventsView;I)V

    .line 521
    .local v0, lines:Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;
    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    sub-int v2, v3, v4

    .line 522
    .local v2, y:I
    invoke-virtual {p0, v0, v7, p3, v2}, Lcom/android/calendar/month/MonthWeekEventsView;->addChipOutline(Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;III)I

    .line 523
    iget-object v3, v0, Lcom/android/calendar/month/MonthWeekEventsView$FloatRef;->array:[F

    iget-object v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 524
    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, text:Ljava/lang/String;
    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHeight:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    sub-int v2, v3, v4

    .line 527
    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    add-int/2addr v3, v4

    add-int/2addr p3, v3

    .line 528
    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 529
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-float v4, p3

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 530
    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 531
    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, i:I
    const/4 v4, 0x0

    .line 351
    .local v4, offset:I
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v0, v8, v9

    .line 352
    .local v0, effectiveWidth:I
    iget v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 353
    .local v5, todayIndex:I
    sget v8, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_WEEK_NUMBER:I

    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int v6, v8, v9

    .line 354
    .local v6, x:I
    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    .line 355
    .local v3, numCount:I
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumHeight:I

    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_MONTH_NUMBER:I

    add-int v7, v8, v9

    .line 356
    .local v7, y:I
    iget-boolean v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mShowWeekNum:Z

    if-eqz v8, :cond_0

    .line 357
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayNumbers:[Ljava/lang/String;

    aget-object v8, v8, v12

    int-to-float v9, v6

    int-to-float v10, v7

    iget-object v11, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 358
    add-int/lit8 v3, v3, 0x1

    .line 359
    add-int/lit8 v1, v1, 0x1

    .line 360
    add-int/lit8 v5, v5, 0x1

    .line 361
    add-int/lit8 v4, v4, 0x1

    .line 363
    :cond_0
    sget v8, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v0, v8

    .line 365
    iget v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_MONTH_NUMBER:I

    add-int v7, v8, v9

    .line 367
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v2, v8, v1

    .line 368
    .local v2, isFocusMonth:Z
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    :goto_0
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    :goto_1
    if-ge v1, v3, :cond_6

    .line 370
    iget-boolean v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    if-eqz v8, :cond_4

    if-ne v5, v1, :cond_4

    .line 371
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumTodayColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    add-int/lit8 v8, v1, 0x1

    if-ge v8, v3, :cond_1

    .line 375
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    add-int/lit8 v9, v1, 0x1

    aget-boolean v8, v8, v9

    if-nez v8, :cond_3

    const/4 v8, 0x1

    move v2, v8

    .line 381
    :cond_1
    :goto_2
    sub-int v8, v1, v4

    mul-int/2addr v8, v0

    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v8, v9

    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_MONTH_NUMBER:I

    add-int/2addr v8, v9

    sget v9, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int v6, v8, v9

    .line 383
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mDayNumbers:[Ljava/lang/String;

    aget-object v8, v8, v1

    int-to-float v9, v6

    int-to-float v10, v7

    iget-object v11, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 368
    :cond_2
    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    goto :goto_0

    :cond_3
    move v2, v12

    .line 375
    goto :goto_2

    .line 377
    :cond_4
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v8, v8, v1

    if-eq v8, v2, :cond_1

    .line 378
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v2, v8, v1

    .line 379
    iget-object v8, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_5

    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    :goto_3
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_5
    iget v9, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    goto :goto_3

    .line 386
    :cond_6
    return-void
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 9
    .parameter "x"

    .prologue
    const v8, 0x253d8c

    const/4 v7, 0x1

    .line 551
    sget v4, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    iget v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int v2, v4, v5

    .line 552
    .local v2, dayStart:I
    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 553
    :cond_0
    const/4 v4, 0x0

    .line 572
    :goto_0
    return-object v4

    .line 556
    :cond_1
    int-to-float v4, v2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 557
    .local v1, dayPosition:I
    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    add-int v0, v4, v1

    .line 559
    .local v0, day:I
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 560
    .local v3, time:Landroid/text/format/Time;
    iget v4, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeek:I

    if-nez v4, :cond_2

    .line 562
    if-ge v0, v8, :cond_3

    .line 563
    add-int/lit8 v0, v0, 0x1

    .line 571
    :cond_2
    invoke-virtual {v3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-object v4, v3

    .line 572
    goto :goto_0

    .line 564
    :cond_3
    if-ne v0, v8, :cond_2

    .line 565
    const/4 v4, 0x0

    const/16 v5, 0x7b2

    invoke-virtual {v3, v7, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 566
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-object v4, v3

    .line 567
    goto :goto_0
.end method

.method protected initView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 184
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    .local v0, res:Landroid/content/res/Resources;
    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mScaled:Z

    if-nez v1, :cond_0

    .line 186
    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    .line 187
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_BOTTOM_PADDING:I

    .line 188
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_X_OFFSET_LANDSCAPE:I

    .line 189
    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_PORTRAIT:I

    .line 192
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    .line 193
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/calendar/month/MonthWeekEventsView;->mScaled:Z

    if-nez v1, :cond_1

    .line 194
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_MONTH_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_MONTH_NUMBER:I

    .line 195
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->PADDING_WEEK_NUMBER:I

    .line 196
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 197
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    .line 198
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MORE_EVENTS:I

    .line 199
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NAME:I

    .line 200
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    .line 201
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_OUTER_WIDTH:I

    .line 202
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 203
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGTH:I

    .line 204
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->DAY_SEPARATOR_VERTICAL_LENGHT_PORTRAIT:I

    .line 205
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_Y_OFFSET_LANDSCAPE:I

    .line 206
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_WIDTH:I

    .line 207
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_LINE_PADDING:I

    .line 208
    sget v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_RIGHT_PADDING:I

    .line 209
    const/high16 v1, 0x4080

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    .line 211
    :cond_1
    sput-boolean v3, Lcom/android/calendar/month/MonthWeekEventsView;->mScaled:Z

    .line 213
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/calendar/month/MonthWeekEventsView;->loadColors(Landroid/content/Context;)V

    .line 215
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 218
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_MONTH_NUMBER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 224
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 226
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumHeight:I

    .line 228
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    .line 229
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 232
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 234
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventHeight:I

    .line 236
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    .line 237
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 238
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 239
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->EVENT_SQUARE_BORDER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 240
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_EVENT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 241
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 242
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 243
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEventExtrasPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 245
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    .line 246
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->TEXT_SIZE_WEEK_NUM:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 249
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 253
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekNumHeight:I

    .line 254
    return-void
.end method

.method protected loadColors(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthWeekNumColor:I

    .line 164
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    .line 165
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    .line 166
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumTodayColor:I

    .line 167
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumColor:I

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNameColor:I

    .line 168
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNumOtherColor:I

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthNameOtherColor:I

    .line 169
    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventColor:I

    .line 170
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraColor:I

    .line 171
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventOtherColor:I

    .line 172
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mMonthEventExtraOtherColor:I

    .line 174
    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawDaySeparators(Landroid/graphics/Canvas;)V

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/MonthWeekEventsView;->drawEvents(Landroid/graphics/Canvas;)V

    .line 284
    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, sortedEvents:Ljava/util/List;,"Ljava/util/List<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    iput-object p1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    .line 148
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    if-eq v0, v1, :cond_0

    .line 152
    const-string v0, "MonthView"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string v0, "MonthView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Events size must be same as days displayed: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " days="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mEvents:Ljava/util/List;

    goto :goto_0
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 258
    invoke-super {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeekView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 260
    const-string v1, "orientation"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "orientation"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mOrientation:I

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    iput-object p2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 266
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 267
    iget-object v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    invoke-virtual {v1, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mToday:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 268
    .local v0, julianToday:I
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 269
    iput-boolean v6, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 270
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mFirstJulianDay:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    .line 275
    :goto_0
    iget v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumCells:I

    .line 276
    return-void

    .line 272
    :cond_1
    iput-boolean v5, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasToday:Z

    .line 273
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mTodayIndex:I

    goto :goto_0
.end method

.method protected updateSelectionPositions()V
    .locals 4

    .prologue
    .line 535
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mHasSelectedDay:Z

    if-eqz v2, :cond_1

    .line 536
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedDay:I

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWeekStart:I

    sub-int v1, v2, v3

    .line 537
    .local v1, selectedPosition:I
    if-gez v1, :cond_0

    .line 538
    add-int/lit8 v1, v1, 0x7

    .line 540
    :cond_0
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mWidth:I

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 541
    .local v0, effectiveWidth:I
    sget v2, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v0, v2

    .line 542
    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedLeft:I

    .line 543
    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mPadding:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedRight:I

    .line 544
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedLeft:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedLeft:I

    .line 545
    iget v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedRight:I

    sget v3, Lcom/android/calendar/month/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/month/MonthWeekEventsView;->mSelectedRight:I

    .line 547
    .end local v0           #effectiveWidth:I
    .end local v1           #selectedPosition:I
    :cond_1
    return-void
.end method
