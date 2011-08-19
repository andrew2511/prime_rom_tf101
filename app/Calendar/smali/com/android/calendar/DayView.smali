.class public Lcom/android/calendar/DayView;
.super Landroid/view/View;
.source "DayView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayView$ScrollInterpolator;,
        Lcom/android/calendar/DayView$CalendarGestureListener;,
        Lcom/android/calendar/DayView$UpdateCurrentTime;,
        Lcom/android/calendar/DayView$DismissPopup;,
        Lcom/android/calendar/DayView$ContinueScroll;,
        Lcom/android/calendar/DayView$ContextMenuHandler;,
        Lcom/android/calendar/DayView$GotoBroadcaster;,
        Lcom/android/calendar/DayView$AccessibilityRunnable;
    }
.end annotation


# static fields
.field private static ALLDAY_TOP_MARGIN:I

.field private static AMPM_FONT_SIZE:F

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String;

.field private static CALENDAR_COLOR_SQUARE_H_OFFSET:I

.field private static CALENDAR_COLOR_SQUARE_SIZE:I

.field private static CALENDAR_COLOR_SQUARE_V_OFFSET:I

.field private static CURRENT_TIME_LINE_BORDER_WIDTH:I

.field private static CURRENT_TIME_LINE_HEIGHT:I

.field private static DATE_HEADER_FONT_SIZE:F

.field private static DAY_HEADER_BOTTOM_MARGIN:F

.field private static DAY_HEADER_FONT_SIZE:F

.field private static DAY_HEADER_HEIGHT:I

.field private static DAY_HEADER_LEFT_MARGIN:F

.field private static DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:F

.field private static DAY_HEADER_ONE_DAY_LEFT_MARGIN:F

.field private static DAY_HEADER_ONE_DAY_RIGHT_MARGIN:F

.field private static DAY_HEADER_RIGHT_MARGIN:F

.field private static DEBUG:Z

.field private static DEFAULT_CELL_HEIGHT:I

.field private static EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

.field private static EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

.field private static EVENT_LINE_PADDING:I

.field private static EVENT_RECT_BOTTOM_MARGIN:I

.field private static EVENT_RECT_LEFT_MARGIN:I

.field private static EVENT_RECT_RIGHT_MARGIN:I

.field private static EVENT_RECT_TOP_MARGIN:I

.field private static EVENT_SQUARE_WIDTH:I

.field private static EVENT_TEXT_BOTTOM_MARGIN:I

.field private static EVENT_TEXT_FONT_SIZE:F

.field private static EVENT_TEXT_LEFT_MARGIN:I

.field private static EVENT_TEXT_RIGHT_MARGIN:I

.field private static EVENT_TEXT_TOP_MARGIN:I

.field private static EXPAND_ALL_DAY_BOTTOM_MARGIN:I

.field private static EXPAND_ALL_DAY_LEFT_MARGIN:I

.field private static GRID_LINE_LEFT_MARGIN:F

.field private static HOURS_FONT_SIZE:F

.field private static HOURS_LEFT_MARGIN:I

.field private static HOURS_MARGIN:I

.field private static HOURS_RIGHT_MARGIN:I

.field private static HOURS_TOP_MARGIN:I

.field private static MAX_CELL_HEIGHT:I

.field private static MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

.field private static MAX_UNEXPANDED_ALLDAY_HEIGHT:I

.field private static MIN_CELL_WIDTH_FOR_TEXT:I

.field private static MIN_EVENT_HEIGHT:F

.field private static MIN_HOURS_HEIGHT:I

.field private static MIN_HOURS_WIDTH:I

.field private static MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

.field private static MIN_Y_SPAN:I

.field private static NORMAL_FONT_SIZE:F

.field private static SINGLE_ALLDAY_HEIGHT:I

.field private static TAG:Ljava/lang/String;

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineHorizontalColor:I

.field private static mCalendarGridLineInnerHorizontalColor:I

.field private static mCalendarGridLineInnerVerticalColor:I

.field private static mCalendarGridLineVerticalColor:I

.field private static mCalendarHourLabelColor:I

.field private static mCellHeight:I

.field private static mDeclinedEventTextColor:I

.field private static mEventTextColor:I

.field protected static mFormatter:Ljava/util/Formatter;

.field private static mHorizontalSnapBackThreshold:I

.field private static mMinCellHeight:I

.field private static mMoreAlldayEventsTextAlpha:I

.field private static mMoreEventsTextColor:I

.field private static mPressedColor:I

.field private static mScale:F

.field private static mShowAllAllDayEvents:Z

.field protected static mStringBuilder:Ljava/lang/StringBuilder;

.field private static mWeek_saturdayColor:I

.field private static mWeek_sundayColor:I

.field private static sCounter:I


# instance fields
.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field protected mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllDayEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mAllDayLayouts:[Landroid/text/StaticLayout;

.field private mAllDayString:Ljava/lang/String;

.field mAlldayAnimator:Landroid/animation/ObjectAnimator;

.field mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

.field private mAlldayHeight:I

.field private mAmString:Ljava/lang/String;

.field private mAnimateDayEventHeight:I

.field private mAnimateDayHeight:I

.field private mAnimationDistance:F

.field mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field mBaseDate:Landroid/text/format/Time;

.field private mBold:Landroid/graphics/Typeface;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCancellingAnimations:Z

.field private mCellHeightBeforeScaleGesture:I

.field private mCellWidth:I

.field protected final mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mComputeSelectedEvents:Z

.field protected mContext:Landroid/content/Context;

.field private mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

.field private mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mCurrentTime:Landroid/text/format/Time;

.field protected final mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

.field private mDateStrWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDestRect:Landroid/graphics/Rect;

.field private mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

.field private mDispatchAccessibilityEventRunnable:Lcom/android/calendar/DayView$AccessibilityRunnable;

.field private mEarliestStartHour:[I

.field private mEventCountTemplate:Ljava/lang/String;

.field protected final mEventGeometry:Lcom/android/calendar/EventGeometry;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEventTextPaint:Landroid/graphics/Paint;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandAllDayRect:Landroid/graphics/Rect;

.field protected final mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

.field private mFirstCell:I

.field private mFirstDayOfWeek:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mFirstVisibleDate:I

.field private mFirstVisibleDayOfWeek:I

.field private mGestureCenterHour:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridAreaHeight:I

.field private mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

.field private mHandleActionUp:Z

.field private mHasAllDayEvent:[Z

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursWidth:I

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field private mIs24HourFormat:Z

.field private mLastJulianDay:I

.field private mLastPopupEventID:J

.field private mLastReloadMillis:J

.field private mLayouts:[Landroid/text/StaticLayout;

.field private mLines:[F

.field private mMaxAlldayEvents:I

.field private mMaxUnexpandedAlldayEventCount:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

.field protected mNumDays:I

.field private mNumHours:I

.field private mOnFlingCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/android/calendar/Event;

.field private mPreviousDirection:I

.field private mRect:Landroid/graphics/Rect;

.field private mRemeasure:Z

.field protected final mResources:Landroid/content/res/Resources;

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollStartY:I

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/android/calendar/Event;

.field private mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllday:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mSelectionMode:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private mSelectionRect:Landroid/graphics/Rect;

.field private mSkippedAlldayEvents:[I

.field private mStartingScroll:Z

.field private mStartingSpanY:F

.field private mTZUpdater:Ljava/lang/Runnable;

.field protected final mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayJulianDay:I

.field private mTouchMode:I

.field private mTouchStartedInAlldayArea:Z

.field protected mUnconfirmedOrDeclinedEventBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

.field private mUpdateToast:Z

.field private mUseExpandIcon:Z

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x4140

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 90
    const-string v0, "DayView"

    sput-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    .line 91
    sput-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    .line 96
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->mScale:F

    .line 110
    const/16 v0, 0x40

    sput v0, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 111
    const/16 v0, 0x96

    sput v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 112
    const/16 v0, 0x64

    sput v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "access_level"

    aput-object v1, v0, v7

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 137
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/DayView;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 154
    const/16 v0, 0x80

    sput v0, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 180
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    .line 258
    const/high16 v0, 0x4180

    sput v0, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 265
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 272
    const/high16 v0, 0x41e0

    sput v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 277
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 283
    const/16 v0, 0xb4

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    .line 284
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 286
    const/16 v0, 0x22

    sput v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 288
    sput v5, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 289
    const/16 v0, 0x1e

    sput v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 290
    const/4 v0, 0x4

    sput v0, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 291
    sget v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v1, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 293
    sput v5, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 294
    sput v7, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 308
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:F

    .line 309
    const/high16 v0, 0x40a0

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:F

    .line 310
    const/high16 v0, 0x40c0

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:F

    .line 311
    const/high16 v0, 0x40a0

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:F

    .line 312
    const/high16 v0, 0x40e0

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:F

    .line 313
    const/high16 v0, 0x4040

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:F

    .line 314
    const/high16 v0, 0x4160

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 315
    const/high16 v0, 0x4200

    sput v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 316
    sput v6, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 317
    sput v6, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 318
    sput v6, Lcom/android/calendar/DayView;->HOURS_FONT_SIZE:F

    .line 319
    const/high16 v0, 0x4110

    sput v0, Lcom/android/calendar/DayView;->AMPM_FONT_SIZE:F

    .line 320
    const/16 v0, 0x60

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 321
    const/16 v0, 0x1b

    sput v0, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 324
    const/high16 v0, 0x41a0

    sput v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 325
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 326
    sput v4, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_V_OFFSET:I

    .line 327
    const/4 v0, -0x3

    sput v0, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_H_OFFSET:I

    .line 328
    sput v4, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 329
    sput v4, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 330
    sput v4, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 331
    sput v4, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 332
    sput v5, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 333
    const/4 v0, 0x3

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 334
    const/16 v0, 0xb

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 335
    const/4 v0, 0x4

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 336
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 337
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 338
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 339
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 341
    sget v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sput v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_LEFT_MARGIN:I

    .line 342
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 344
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 345
    const/4 v0, 0x4

    sput v0, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 368
    const/16 v0, 0x4c

    sput v0, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 377
    sput v3, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 378
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 418
    const/16 v0, 0x2d

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 434
    sput-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 469
    sput v3, Lcom/android/calendar/DayView;->sCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/CalendarController;Landroid/widget/ViewSwitcher;Lcom/android/calendar/EventLoader;I)V
    .locals 6
    .parameter "context"
    .parameter "controller"
    .parameter "viewSwitcher"
    .parameter "eventLoader"
    .parameter "numDays"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 532
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 115
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 156
    new-instance v0, Lcom/android/calendar/DayView$ContinueScroll;

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/DayView$ContinueScroll;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    .line 163
    new-instance v0, Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView$UpdateCurrentTime;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    .line 166
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    .line 182
    new-instance v0, Lcom/android/calendar/DayView$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView$1;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/android/calendar/DayView$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView$2;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    .line 223
    iput-object v3, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    .line 224
    iput-object v3, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 240
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 241
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 251
    new-instance v0, Lcom/android/calendar/DayView$DismissPopup;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView$DismissPopup;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    .line 253
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 370
    iput v4, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 386
    iput v4, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 390
    iput v4, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 396
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 406
    iput v2, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 410
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 414
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    .line 430
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 436
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 437
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 445
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 458
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    .line 471
    new-instance v0, Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/DayView$ContextMenuHandler;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    .line 496
    iput v2, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 506
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 508
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 520
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 522
    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 1453
    new-instance v0, Lcom/android/calendar/DayView$AccessibilityRunnable;

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/DayView$AccessibilityRunnable;-><init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDispatchAccessibilityEventRunnable:Lcom/android/calendar/DayView$AccessibilityRunnable;

    .line 1731
    new-instance v0, Lcom/android/calendar/DayView$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView$4;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    .line 3167
    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 533
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    .line 535
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    .line 536
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 538
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    .line 540
    sget v0, Lcom/android/calendar/DayView;->mScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/calendar/DayView;->mScale:F

    .line 542
    sget v0, Lcom/android/calendar/DayView;->mScale:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 543
    sget v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 544
    sget v0, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    .line 545
    sget v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    .line 547
    sget v0, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    .line 548
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    .line 549
    sget v0, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    .line 550
    sget v0, Lcom/android/calendar/DayView;->HOURS_FONT_SIZE:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->HOURS_FONT_SIZE:F

    .line 551
    sget v0, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    .line 552
    sget v0, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    .line 553
    sget v0, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    sget v1, Lcom/android/calendar/DayView;->HOURS_RIGHT_MARGIN:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    .line 554
    sget v0, Lcom/android/calendar/DayView;->AMPM_FONT_SIZE:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->AMPM_FONT_SIZE:F

    .line 555
    sget v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    .line 556
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    .line 557
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 558
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 560
    sget v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 561
    sget v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 563
    sget v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    .line 564
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    .line 565
    sget v0, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    .line 566
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    .line 567
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:F

    .line 568
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:F

    .line 569
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:F

    .line 570
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:F

    .line 571
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:F

    .line 572
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:F

    .line 573
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    .line 574
    sget v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    .line 575
    sget v0, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    .line 576
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    .line 577
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    .line 578
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    .line 579
    sget v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    .line 580
    sget v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    .line 581
    sget v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    .line 582
    sget v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    .line 583
    sget v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    .line 584
    sget v0, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    .line 585
    sget v0, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    .line 586
    sget v0, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    .line 587
    sget v0, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    .line 588
    sget v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_LEFT_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_LEFT_MARGIN:I

    .line 589
    sget v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    .line 590
    sget v0, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    .line 591
    sget v0, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    .line 596
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    .line 597
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 598
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    .line 599
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 601
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mUnconfirmedOrDeclinedEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 603
    iput-object p4, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 604
    new-instance v0, Lcom/android/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/android/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    .line 605
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v1, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 606
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v0, v5}, Lcom/android/calendar/EventGeometry;->setHourGap(F)V

    .line 607
    iput-object p1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    .line 608
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAllDayString:Ljava/lang/String;

    .line 609
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v3, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 610
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 611
    iput-object p2, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    .line 612
    iput-object p3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 613
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/DayView$CalendarGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$CalendarGestureListener;-><init>(Lcom/android/calendar/DayView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 614
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 615
    iput p5, p0, Lcom/android/calendar/DayView;->mNumDays:I

    .line 616
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    if-nez v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v1, "preferences_default_cell_height"

    sget v2, Lcom/android/calendar/DayView;->DEFAULT_CELL_HEIGHT:I

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 620
    :cond_1
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    .line 621
    new-instance v0, Lcom/android/calendar/DayView$ScrollInterpolator;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView$ScrollInterpolator;-><init>(Lcom/android/calendar/DayView;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    .line 622
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->init(Landroid/content/Context;)V

    .line 623
    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/DayView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/DayView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/calendar/DayView;)[Landroid/text/StaticLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/calendar/DayView;[Landroid/text/StaticLayout;)[Landroid/text/StaticLayout;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeEventRelations()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/calendar/DayView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/DayView;)Lcom/android/calendar/Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/calendar/DayView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/calendar/DayView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/calendar/DayView;)Lcom/android/calendar/DayView$UpdateCurrentTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/calendar/DayView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/calendar/DayView;Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/calendar/DayView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    return v0
.end method

.method static synthetic access$3700(Lcom/android/calendar/DayView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    return-void
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$604()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/android/calendar/DayView;->sCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/DayView;->sCounter:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/DayView;)Landroid/widget/ViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/calendar/DayView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/calendar/DayView;)Lcom/android/calendar/CalendarController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method private adjustHourSelection()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x18

    const/16 v2, 0x17

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1672
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-gez v1, :cond_0

    .line 1673
    iput v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1674
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_0

    .line 1675
    iput-object v6, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1676
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1680
    :cond_0
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_1

    .line 1681
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1686
    :cond_1
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_4

    .line 1694
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 1695
    .local v0, daynum:I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_3

    .line 1697
    iput-object v6, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1698
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1699
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1725
    .end local v0           #daynum:I
    :cond_2
    :goto_0
    return-void

    .line 1703
    .restart local v0       #daynum:I
    :cond_3
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lez v1, :cond_4

    .line 1704
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1705
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1706
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_2

    .line 1707
    iput v4, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0

    .line 1713
    .end local v0           #daynum:I
    :cond_4
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_2

    .line 1714
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    sub-int v2, v5, v2

    if-ge v1, v2, :cond_5

    .line 1715
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1716
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1717
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_2

    .line 1718
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0

    .line 1721
    :cond_5
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    sub-int v2, v5, v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-lez v1, :cond_2

    .line 1722
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_0
.end method

.method private adjustToBeginningOfWeek(Landroid/text/format/Time;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 1012
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1013
    .local v0, dayOfWeek:I
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    sub-int v1, v0, v2

    .line 1014
    .local v1, diff:I
    if-eqz v1, :cond_1

    .line 1015
    if-gez v1, :cond_0

    .line 1016
    add-int/lit8 v1, v1, 0x7

    .line 1018
    :cond_0
    iget v2, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/text/format/Time;->monthDay:I

    .line 1019
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1021
    :cond_1
    return-void
.end method

.method private appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1507
    invoke-virtual {p2}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    const/16 v0, 0x10

    .line 1511
    iget-boolean v1, p2, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v1, :cond_0

    .line 1512
    or-int/lit16 v0, v0, 0x2002

    move v5, v0

    .line 1519
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, p2, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, p2, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 1520
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    const-string v0, ". "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    return-void

    .line 1514
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 1515
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1516
    or-int/lit16 v0, v0, 0x80

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_0
.end method

.method private calculateDuration(FFF)J
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4386
    const/high16 v0, 0x4000

    div-float v0, p2, v0

    .line 4387
    div-float v1, p1, p2

    .line 4388
    invoke-direct {p0, v1}, Lcom/android/calendar/DayView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    .line 4389
    mul-float v3, v0, v2

    add-float/2addr v3, v0

    .line 4391
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 4392
    const v5, 0x45098000

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 4400
    const/high16 v5, 0x447a

    div-float v6, v3, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x6

    int-to-long v5, v5

    .line 4401
    sget-boolean v7, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 4402
    sget-object v7, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "halfScreenSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " delta:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " distanceRatio:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " velocity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distanceInfluenceForSnapDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    :cond_0
    return-wide v5
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3601
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 3602
    .local v0, in:Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    .line 3604
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 3606
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 3607
    .local v1, out:Landroid/view/animation/Animation;
    if-eqz v1, :cond_1

    .line 3609
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 3611
    :cond_1
    return-void
.end method

.method private computeAllDayNeighbors()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2685
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2686
    .local v3, len:I
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_1

    .line 2740
    :cond_0
    :goto_0
    return-void

    .line 2691
    :cond_1
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 2692
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2693
    .local v0, ev:Lcom/android/calendar/Event;
    iput-object v12, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 2694
    iput-object v12, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 2695
    iput-object v12, v0, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 2696
    iput-object v12, v0, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 2691
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2706
    .end local v0           #ev:Lcom/android/calendar/Event;
    :cond_2
    const/4 v10, -0x1

    .line 2707
    .local v10, startPosition:I
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2708
    iget-object v11, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v11}, Lcom/android/calendar/Event;->getColumn()I

    move-result v10

    .line 2710
    :cond_3
    const/4 v4, -0x1

    .line 2711
    .local v4, maxPosition:I
    const/4 v9, 0x0

    .line 2712
    .local v9, startEvent:Lcom/android/calendar/Event;
    const/4 v5, 0x0

    .line 2713
    .local v5, maxPositionEvent:Lcom/android/calendar/Event;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    .line 2714
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 2715
    .restart local v0       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v8

    .line 2716
    .local v8, position:I
    if-ne v8, v10, :cond_6

    .line 2717
    move-object v9, v0

    .line 2722
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_4
    if-ge v2, v3, :cond_9

    .line 2723
    if-ne v2, v1, :cond_7

    .line 2722
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2718
    .end local v2           #jj:I
    :cond_6
    if-le v8, v4, :cond_4

    .line 2719
    move-object v5, v0

    .line 2720
    move v4, v8

    goto :goto_3

    .line 2726
    .restart local v2       #jj:I
    :cond_7
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/Event;

    .line 2727
    .local v6, neighbor:Lcom/android/calendar/Event;
    invoke-virtual {v6}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    .line 2728
    .local v7, neighborPosition:I
    const/4 v11, 0x1

    sub-int v11, v8, v11

    if-ne v7, v11, :cond_8

    .line 2729
    iput-object v6, v0, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    goto :goto_5

    .line 2730
    :cond_8
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_5

    .line 2731
    iput-object v6, v0, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    goto :goto_5

    .line 2713
    .end local v6           #neighbor:Lcom/android/calendar/Event;
    .end local v7           #neighborPosition:I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2735
    .end local v0           #ev:Lcom/android/calendar/Event;
    .end local v2           #jj:I
    .end local v8           #position:I
    :cond_a
    if-eqz v9, :cond_b

    .line 2736
    iput-object v9, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_0

    .line 2738
    :cond_b
    iput-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto :goto_0
.end method

.method private computeEventRelations()V
    .locals 15

    .prologue
    .line 1821
    const/4 v12, 0x0

    .line 1822
    .local v12, maxAllDayEvents:I
    iget-object v5, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 1823
    .local v5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1825
    .local v11, len:I
    iget v13, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v6, v13, [I

    .line 1826
    .local v6, eventsCount:[I
    const/4 v13, 0x0

    invoke-static {v6, v13}, Ljava/util/Arrays;->fill([II)V

    .line 1827
    const/4 v9, 0x0

    .local v9, ii:I
    :goto_0
    if-ge v9, v11, :cond_8

    .line 1828
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/Event;

    .line 1829
    .local v4, event:Lcom/android/calendar/Event;
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    if-gt v13, v14, :cond_0

    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    if-ge v13, v14, :cond_1

    .line 1827
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1832
    :cond_1
    invoke-virtual {v4}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1834
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1835
    .local v7, firstDay:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1836
    .local v10, lastDay:I
    move v1, v7

    .local v1, day:I
    :goto_2
    if-gt v1, v10, :cond_3

    .line 1837
    iget v13, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v13, v1, v13

    aget v14, v6, v13

    add-int/lit8 v0, v14, 0x1

    aput v0, v6, v13

    .line 1838
    .local v0, count:I
    if-ge v12, v0, :cond_2

    .line 1839
    move v12, v0

    .line 1836
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1843
    .end local v0           #count:I
    :cond_3
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 1844
    .local v2, daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, v4, Lcom/android/calendar/Event;->startDay:I

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 1845
    .local v3, durationDays:I
    if-gez v2, :cond_4

    .line 1846
    add-int/2addr v3, v2

    .line 1847
    const/4 v2, 0x0

    .line 1849
    :cond_4
    add-int v13, v2, v3

    iget v14, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v13, v14, :cond_5

    .line 1850
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int v3, v13, v2

    .line 1852
    :cond_5
    move v1, v2

    :goto_3
    if-lez v3, :cond_0

    .line 1853
    iget-object v13, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, v1

    .line 1852
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1856
    .end local v1           #day:I
    .end local v2           #daynum:I
    .end local v3           #durationDays:I
    .end local v7           #firstDay:I
    .end local v10           #lastDay:I
    :cond_6
    iget v13, v4, Lcom/android/calendar/Event;->startDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 1857
    .restart local v2       #daynum:I
    iget v13, v4, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 1858
    .local v8, hour:I
    if-ltz v2, :cond_7

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_7

    .line 1859
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    .line 1864
    :cond_7
    iget v13, v4, Lcom/android/calendar/Event;->endDay:I

    iget v14, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v2, v13, v14

    .line 1865
    iget v13, v4, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v8, v13, 0x3c

    .line 1866
    iget v13, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v13, :cond_0

    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aget v13, v13, v2

    if-ge v8, v13, :cond_0

    .line 1867
    iget-object v13, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    aput v8, v13, v2

    goto/16 :goto_1

    .line 1871
    .end local v2           #daynum:I
    .end local v4           #event:Lcom/android/calendar/Event;
    .end local v8           #hour:I
    :cond_8
    iput v12, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 1872
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 1873
    return-void
.end method

.method private computeFirstHour()V
    .locals 2

    .prologue
    .line 1667
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1668
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1669
    return-void
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 9
    .parameter "currentMax"
    .parameter "strings"
    .parameter "p"

    .prologue
    .line 2354
    const/4 v3, 0x0

    .line 2356
    .local v3, maxWidthF:F
    array-length v1, p2

    .line 2357
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2358
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2359
    .local v4, width:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2361
    .end local v4           #width:F
    :cond_0
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 2362
    .local v2, maxWidth:I
    if-ge v2, p1, :cond_1

    .line 2363
    move v2, p1

    .line 2365
    :cond_1
    return v2
.end method

.method private computeNeighbors()V
    .locals 41

    .prologue
    .line 2805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2806
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 3087
    :cond_0
    :goto_0
    return-void

    .line 2811
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    .line 2812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 2813
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 2814
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 2815
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 2816
    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 2811
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 2819
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 2820
    const v3, 0x186a0

    .line 2821
    const v5, 0x186a0

    .line 2822
    const/4 v6, 0x0

    .line 2827
    const/4 v7, 0x0

    .line 2828
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v8

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object v9, v0

    if-eqz v9, :cond_a

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object v9, v0

    iget v9, v9, Lcom/android/calendar/Event;->top:F

    float-to-int v9, v9

    .line 2831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object v10, v0

    iget v10, v10, Lcom/android/calendar/Event;->bottom:F

    float-to-int v10, v10

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object v11, v0

    iget v11, v11, Lcom/android/calendar/Event;->left:F

    float-to-int v11, v11

    .line 2833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    move-object v12, v0

    iget v12, v12, Lcom/android/calendar/Event;->right:F

    float-to-int v12, v12

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-le v10, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->left:I

    if-le v12, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->right:I

    if-lt v11, v13, :cond_8

    .line 2839
    :cond_3
    const/4 v9, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 2840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 2841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 2843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move/from16 v38, v12

    move v12, v9

    move/from16 v9, v38

    move/from16 v39, v10

    move v10, v11

    move/from16 v11, v39

    .line 2862
    :goto_2
    iget v13, v8, Landroid/graphics/Rect;->right:I

    if-lt v10, v13, :cond_b

    .line 2864
    const/16 v6, 0x8

    .line 2865
    add-int v7, v12, v11

    div-int/lit8 v7, v7, 0x2

    move/from16 v38, v7

    move v7, v6

    move/from16 v6, v38

    .line 2883
    :goto_3
    const/4 v13, 0x0

    move-object v14, v2

    move/from16 v38, v5

    move v5, v13

    move v13, v3

    move/from16 v3, v38

    :goto_4
    if-ge v5, v4, :cond_29

    .line 2884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/Event;

    .line 2886
    iget v15, v2, Lcom/android/calendar/Event;->startTime:I

    .line 2887
    move-object v0, v2

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v16, v0

    .line 2888
    move-object v0, v2

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2889
    move-object v0, v2

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    .line 2890
    move-object v0, v2

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    .line 2891
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 2892
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    .line 2894
    :cond_4
    move-object v0, v2

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2895
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    .line 2896
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    .line 2909
    :cond_5
    const/16 v21, 0x2710

    .line 2910
    const/16 v22, 0x2710

    .line 2911
    const/16 v23, 0x2710

    .line 2912
    const/16 v24, 0x2710

    .line 2913
    const/16 v25, 0x0

    .line 2914
    const/16 v26, 0x0

    .line 2915
    const/16 v27, 0x0

    .line 2916
    const/16 v28, 0x0

    .line 2920
    const/16 v29, 0x0

    .line 2921
    const/16 v30, 0x0

    .line 2922
    const/16 v31, 0x1

    move v0, v7

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 2923
    move/from16 v0, v17

    move v1, v6

    if-lt v0, v1, :cond_e

    .line 2924
    sub-int v29, v17, v6

    .line 2928
    :cond_6
    :goto_5
    sub-int v30, v19, v11

    move/from16 v38, v30

    move/from16 v30, v29

    move/from16 v29, v38

    .line 2951
    :goto_6
    move/from16 v0, v30

    move v1, v13

    if-lt v0, v1, :cond_7

    move/from16 v0, v30

    move v1, v13

    if-ne v0, v1, :cond_30

    move/from16 v0, v29

    move v1, v3

    if-ge v0, v1, :cond_30

    :cond_7
    move/from16 v13, v29

    move/from16 v14, v30

    move-object/from16 v29, v2

    .line 2960
    :goto_7
    const/4 v3, 0x0

    move/from16 v30, v21

    move/from16 v21, v3

    move-object/from16 v38, v27

    move/from16 v27, v23

    move-object/from16 v23, v38

    move/from16 v39, v24

    move-object/from16 v24, v26

    move/from16 v26, v39

    move/from16 v40, v22

    move-object/from16 v22, v28

    move/from16 v28, v40

    :goto_8
    move/from16 v0, v21

    move v1, v4

    if-ge v0, v1, :cond_28

    .line 2961
    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_18

    move-object/from16 v3, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v30

    .line 2960
    :goto_9
    add-int/lit8 v21, v21, 0x1

    move/from16 v30, v28

    move/from16 v28, v27

    move/from16 v27, v26

    move/from16 v26, v25

    move-object/from16 v25, v24

    move-object/from16 v24, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v3

    goto :goto_8

    .line 2846
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->top:I

    if-ge v9, v13, :cond_9

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 2849
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    if-le v10, v13, :cond_33

    .line 2850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v12

    move v12, v9

    move/from16 v9, v38

    move/from16 v39, v10

    move v10, v11

    move/from16 v11, v39

    goto/16 :goto_2

    .line 2855
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v11, v0

    iget v11, v11, Landroid/graphics/Rect;->left:I

    .line 2858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    move-object v12, v0

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move/from16 v38, v12

    move v12, v9

    move/from16 v9, v38

    move/from16 v39, v10

    move v10, v11

    move/from16 v11, v39

    goto/16 :goto_2

    .line 2866
    :cond_b
    iget v13, v8, Landroid/graphics/Rect;->left:I

    if-gt v9, v13, :cond_c

    .line 2868
    const/4 v6, 0x4

    .line 2869
    add-int v7, v12, v11

    div-int/lit8 v7, v7, 0x2

    move/from16 v38, v7

    move v7, v6

    move/from16 v6, v38

    goto/16 :goto_3

    .line 2870
    :cond_c
    iget v13, v8, Landroid/graphics/Rect;->top:I

    if-gt v11, v13, :cond_d

    .line 2872
    const/4 v6, 0x1

    .line 2873
    add-int v7, v10, v9

    div-int/lit8 v7, v7, 0x2

    move/from16 v38, v7

    move v7, v6

    move/from16 v6, v38

    goto/16 :goto_3

    .line 2874
    :cond_d
    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v12, v13, :cond_32

    .line 2876
    const/4 v6, 0x2

    .line 2877
    add-int v7, v10, v9

    div-int/lit8 v7, v7, 0x2

    move/from16 v38, v7

    move v7, v6

    move/from16 v6, v38

    goto/16 :goto_3

    .line 2925
    :cond_e
    move/from16 v0, v18

    move v1, v6

    if-gt v0, v1, :cond_6

    .line 2926
    sub-int v29, v6, v18

    goto/16 :goto_5

    .line 2929
    :cond_f
    const/16 v31, 0x2

    move v0, v7

    move/from16 v1, v31

    if-ne v0, v1, :cond_12

    .line 2930
    move/from16 v0, v17

    move v1, v6

    if-lt v0, v1, :cond_11

    .line 2931
    sub-int v29, v17, v6

    .line 2935
    :cond_10
    :goto_a
    sub-int v30, v12, v20

    move/from16 v38, v30

    move/from16 v30, v29

    move/from16 v29, v38

    goto/16 :goto_6

    .line 2932
    :cond_11
    move/from16 v0, v18

    move v1, v6

    if-gt v0, v1, :cond_10

    .line 2933
    sub-int v29, v6, v18

    goto :goto_a

    .line 2936
    :cond_12
    const/16 v31, 0x4

    move v0, v7

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    .line 2937
    move/from16 v0, v20

    move v1, v6

    if-gt v0, v1, :cond_14

    .line 2938
    sub-int v29, v6, v20

    .line 2942
    :cond_13
    :goto_b
    sub-int v30, v17, v9

    move/from16 v38, v30

    move/from16 v30, v29

    move/from16 v29, v38

    goto/16 :goto_6

    .line 2939
    :cond_14
    move/from16 v0, v19

    move v1, v6

    if-lt v0, v1, :cond_13

    .line 2940
    sub-int v29, v19, v6

    goto :goto_b

    .line 2943
    :cond_15
    const/16 v31, 0x8

    move v0, v7

    move/from16 v1, v31

    if-ne v0, v1, :cond_31

    .line 2944
    move/from16 v0, v20

    move v1, v6

    if-gt v0, v1, :cond_17

    .line 2945
    sub-int v29, v6, v20

    .line 2949
    :cond_16
    :goto_c
    sub-int v30, v10, v18

    move/from16 v38, v30

    move/from16 v30, v29

    move/from16 v29, v38

    goto/16 :goto_6

    .line 2946
    :cond_17
    move/from16 v0, v19

    move v1, v6

    if-lt v0, v1, :cond_16

    .line 2947
    sub-int v29, v19, v6

    goto :goto_c

    .line 2964
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/Event;

    .line 2965
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v31, v0

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v31, v0

    .line 2966
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v32, v0

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    .line 2967
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v33, v0

    move/from16 v0, v33

    move v1, v15

    if-gt v0, v1, :cond_1e

    .line 2970
    move/from16 v0, v31

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    move/from16 v0, v32

    move/from16 v1, v17

    if-le v0, v1, :cond_19

    .line 2971
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move/from16 v33, v0

    sub-int v33, v15, v33

    .line 2972
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_1a

    move-object/from16 v25, v3

    move/from16 v30, v33

    .line 3031
    :cond_19
    :goto_d
    move/from16 v0, v31

    move/from16 v1, v18

    if-lt v0, v1, :cond_25

    .line 3034
    add-int v32, v19, v20

    div-int/lit8 v32, v32, 0x2

    .line 3035
    const/16 v33, 0x0

    .line 3036
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3037
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    .line 3038
    move/from16 v0, v34

    move/from16 v1, v32

    if-gt v0, v1, :cond_23

    .line 3039
    sub-int v32, v32, v34

    .line 3043
    :goto_e
    move/from16 v0, v32

    move/from16 v1, v26

    if-ge v0, v1, :cond_24

    move/from16 v22, v32

    :goto_f
    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v30

    move/from16 v38, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move/from16 v25, v38

    .line 3055
    goto/16 :goto_9

    .line 2975
    :cond_1a
    move/from16 v0, v33

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    .line 2976
    add-int v34, v17, v18

    div-int/lit8 v34, v34, 0x2

    .line 2977
    const/16 v35, 0x0

    .line 2978
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v36, v0

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    .line 2979
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    .line 2980
    move/from16 v0, v37

    move/from16 v1, v34

    if-gt v0, v1, :cond_1c

    .line 2981
    sub-int v35, v34, v37

    .line 2986
    :cond_1b
    :goto_10
    const/16 v36, 0x0

    .line 2987
    move/from16 v0, v32

    move/from16 v1, v34

    if-gt v0, v1, :cond_1d

    .line 2988
    sub-int v34, v34, v32

    .line 2992
    :goto_11
    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_19

    move-object/from16 v25, v3

    move/from16 v30, v33

    .line 2994
    goto :goto_d

    .line 2982
    :cond_1c
    move/from16 v0, v36

    move/from16 v1, v34

    if-lt v0, v1, :cond_1b

    .line 2983
    sub-int v35, v36, v34

    goto :goto_10

    .line 2989
    :cond_1d
    move/from16 v0, v31

    move/from16 v1, v34

    if-lt v0, v1, :cond_2f

    .line 2990
    sub-int v34, v31, v34

    goto :goto_11

    .line 2998
    :cond_1e
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v33, v0

    move/from16 v0, v33

    move/from16 v1, v16

    if-lt v0, v1, :cond_19

    .line 3001
    move/from16 v0, v31

    move/from16 v1, v18

    if-ge v0, v1, :cond_19

    move/from16 v0, v32

    move/from16 v1, v17

    if-le v0, v1, :cond_19

    .line 3002
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move/from16 v33, v0

    sub-int v33, v33, v16

    .line 3003
    move/from16 v0, v33

    move/from16 v1, v28

    if-ge v0, v1, :cond_1f

    move-object/from16 v24, v3

    move/from16 v28, v33

    .line 3005
    goto/16 :goto_d

    .line 3006
    :cond_1f
    move/from16 v0, v33

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    .line 3007
    add-int v34, v17, v18

    div-int/lit8 v34, v34, 0x2

    .line 3008
    const/16 v35, 0x0

    .line 3009
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v36, v0

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v36, v0

    .line 3010
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    .line 3011
    move/from16 v0, v37

    move/from16 v1, v34

    if-gt v0, v1, :cond_21

    .line 3012
    sub-int v35, v34, v37

    .line 3017
    :cond_20
    :goto_12
    const/16 v36, 0x0

    .line 3018
    move/from16 v0, v32

    move/from16 v1, v34

    if-gt v0, v1, :cond_22

    .line 3019
    sub-int v34, v34, v32

    .line 3023
    :goto_13
    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_19

    move-object/from16 v24, v3

    move/from16 v28, v33

    .line 3025
    goto/16 :goto_d

    .line 3013
    :cond_21
    move/from16 v0, v36

    move/from16 v1, v34

    if-lt v0, v1, :cond_20

    .line 3014
    sub-int v35, v36, v34

    goto :goto_12

    .line 3020
    :cond_22
    move/from16 v0, v31

    move/from16 v1, v34

    if-lt v0, v1, :cond_2e

    .line 3021
    sub-int v34, v31, v34

    goto :goto_13

    .line 3040
    :cond_23
    move/from16 v0, v35

    move/from16 v1, v32

    if-lt v0, v1, :cond_2d

    .line 3041
    sub-int v32, v35, v32

    goto/16 :goto_e

    .line 3046
    :cond_24
    move/from16 v0, v32

    move/from16 v1, v26

    if-ne v0, v1, :cond_2c

    .line 3048
    sub-int v31, v31, v18

    .line 3049
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    sub-int v33, v33, v18

    .line 3050
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_2c

    move/from16 v22, v32

    .line 3052
    goto/16 :goto_f

    .line 3055
    :cond_25
    move/from16 v0, v32

    move/from16 v1, v17

    if-gt v0, v1, :cond_2a

    .line 3058
    add-int v31, v19, v20

    div-int/lit8 v31, v31, 0x2

    .line 3059
    const/16 v33, 0x0

    .line 3060
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    .line 3061
    move-object v0, v3

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    .line 3062
    move/from16 v0, v34

    move/from16 v1, v31

    if-gt v0, v1, :cond_26

    .line 3063
    sub-int v31, v31, v34

    .line 3067
    :goto_14
    move/from16 v0, v31

    move/from16 v1, v27

    if-ge v0, v1, :cond_27

    move-object/from16 v23, v24

    move/from16 v27, v28

    move-object/from16 v24, v25

    move/from16 v28, v30

    move/from16 v25, v26

    move/from16 v26, v31

    move-object/from16 v38, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v38

    .line 3069
    goto/16 :goto_9

    .line 3064
    :cond_26
    move/from16 v0, v35

    move/from16 v1, v31

    if-lt v0, v1, :cond_2b

    .line 3065
    sub-int v31, v35, v31

    goto :goto_14

    .line 3070
    :cond_27
    move/from16 v0, v31

    move/from16 v1, v27

    if-ne v0, v1, :cond_2a

    .line 3072
    sub-int v32, v17, v32

    .line 3073
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/calendar/Event;->right:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    sub-int v33, v17, v33

    .line 3074
    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_2a

    move-object/from16 v23, v24

    move/from16 v27, v28

    move-object/from16 v24, v25

    move/from16 v28, v30

    move/from16 v25, v26

    move/from16 v26, v31

    move-object/from16 v38, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v38

    .line 3076
    goto/16 :goto_9

    .line 3081
    :cond_28
    move-object/from16 v0, v25

    move-object v1, v2

    iput-object v0, v1, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    .line 3082
    move-object/from16 v0, v24

    move-object v1, v2

    iput-object v0, v1, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    .line 3083
    move-object/from16 v0, v23

    move-object v1, v2

    iput-object v0, v1, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    .line 3084
    move-object/from16 v0, v22

    move-object v1, v2

    iput-object v0, v1, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    .line 2883
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v13

    move v13, v14

    move-object/from16 v14, v29

    goto/16 :goto_4

    .line 3086
    :cond_29
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v3, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v30

    goto/16 :goto_9

    :cond_2b
    move/from16 v31, v33

    goto/16 :goto_14

    :cond_2c
    move-object/from16 v3, v22

    move/from16 v22, v26

    goto/16 :goto_f

    :cond_2d
    move/from16 v32, v33

    goto/16 :goto_e

    :cond_2e
    move/from16 v34, v36

    goto/16 :goto_13

    :cond_2f
    move/from16 v34, v36

    goto/16 :goto_11

    :cond_30
    move-object/from16 v29, v14

    move v14, v13

    move v13, v3

    goto/16 :goto_7

    :cond_31
    move/from16 v38, v30

    move/from16 v30, v29

    move/from16 v29, v38

    goto/16 :goto_6

    :cond_32
    move/from16 v38, v7

    move v7, v6

    move/from16 v6, v38

    goto/16 :goto_3

    :cond_33
    move/from16 v38, v12

    move v12, v9

    move/from16 v9, v38

    move/from16 v39, v10

    move v10, v11

    move/from16 v11, v39

    goto/16 :goto_2
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter

    .prologue
    .line 4418
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 4419
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 4420
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private doDown(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 3310
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3311
    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3312
    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 3313
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3314
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 2120
    iget-object v5, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 2121
    .local v5, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 2123
    .local v7, r:Landroid/graphics/Rect;
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2124
    invoke-direct {p0, v7, p1, v5}, Lcom/android/calendar/DayView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2127
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 2128
    .local v2, x:I
    iget v0, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v13, v0, 0x1

    .line 2129
    .local v13, deltaX:I
    iget v1, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2130
    .local v1, cell:I
    const/4 v12, 0x0

    .local v12, day:I
    :goto_0
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v12, v0, :cond_1

    .line 2133
    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/DayView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2135
    iget v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    if-ne v1, v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->minute:I

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    add-int/2addr v0, v3

    add-int/lit8 v9, v0, 0x1

    .line 2140
    .local v9, lineY:I
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-lt v9, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v3, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v0, v3

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    if-ge v9, v0, :cond_0

    move-object v6, p0

    move v8, v2

    move-object v10, p1

    move-object v11, v5

    .line 2141
    invoke-direct/range {v6 .. v11}, Lcom/android/calendar/DayView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2144
    .end local v9           #lineY:I
    :cond_0
    add-int/2addr v2, v13

    .line 2130
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2146
    :cond_1
    return-void
.end method

.method private doExpandAllDayClick()V
    .locals 10

    .prologue
    const/16 v9, 0x4c

    const-wide/16 v7, 0xc8

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 3318
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v0, :cond_5

    move v0, v6

    :goto_0
    sput-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    .line 3320
    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 3323
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-nez v0, :cond_0

    .line 3324
    sget-boolean v0, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3328
    :cond_0
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3329
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 3330
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3332
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 3333
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3335
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    .line 3336
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 3338
    :cond_3
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mCancellingAnimations:Z

    .line 3340
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    .line 3341
    invoke-direct {p0}, Lcom/android/calendar/DayView;->getAllDayEventAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    .line 3342
    const-string v0, "moreAllDayEventsTextAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_7

    move v2, v9

    :goto_2
    aput v2, v1, v3

    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_8

    move v2, v3

    :goto_3
    aput v2, v1, v6

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    .line 3348
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_9

    move-wide v1, v7

    :goto_4
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3349
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3350
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_a

    move-wide v1, v4

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3351
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3352
    iget-object v0, p0, Lcom/android/calendar/DayView;->mMoreAlldayEventsAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3353
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 3355
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_b

    move-wide v1, v7

    :goto_6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 3357
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAlldayEventAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3359
    :cond_4
    return-void

    :cond_5
    move v0, v3

    .line 3318
    goto/16 :goto_0

    .line 3324
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto/16 :goto_1

    :cond_7
    move v2, v3

    .line 3342
    goto :goto_2

    :cond_8
    move v2, v9

    goto :goto_3

    :cond_9
    move-wide v1, v4

    .line 3348
    goto :goto_4

    .line 3350
    :cond_a
    const-wide/16 v1, 0x190

    goto :goto_5

    :cond_b
    move-wide v1, v4

    .line 3355
    goto :goto_6
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3614
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 3616
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3617
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    .line 3619
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    .line 3622
    iput v1, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3623
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFling: velocityX "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    .line 3625
    if-gez v0, :cond_2

    move v0, v4

    :goto_0
    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v3, v3

    invoke-direct {p0, v0, v2, v3, p3}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 3626
    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3648
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 3625
    goto :goto_0

    .line 3630
    :cond_3
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_4

    .line 3631
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "doFling: no fling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3636
    :cond_4
    iput v1, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3637
    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3639
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 3640
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doFling: mViewStartY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " velocityY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    :cond_5
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 3645
    iget-object v0, p0, Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    neg-float v3, p4

    float-to-int v4, v3

    iget v8, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 3647
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContinueScroll:Lcom/android/calendar/DayView$ContinueScroll;

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private doLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 3517
    iget-boolean v3, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v3, :cond_1

    .line 3538
    :cond_0
    :goto_0
    return-void

    .line 3522
    :cond_1
    iget v3, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 3526
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 3527
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 3529
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/DayView;->setSelectionFromPosition(II)Z

    move-result v0

    .line 3530
    .local v0, validPosition:Z
    if-eqz v0, :cond_0

    .line 3535
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3536
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3537
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->performLongClick()Z

    goto :goto_0
.end method

.method private doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3541
    invoke-direct {p0}, Lcom/android/calendar/DayView;->cancelAnimation()V

    .line 3542
    iget-boolean v5, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    if-eqz v5, :cond_0

    .line 3543
    iput v6, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3544
    iput v6, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3545
    iput-boolean v7, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 3548
    :cond_0
    iget v5, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    add-float/2addr v5, p3

    iput v5, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3549
    iget v5, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    add-float/2addr v5, p4

    iput v5, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3550
    iget v5, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    float-to-int v3, v5

    .line 3551
    .local v3, distanceX:I
    iget v5, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    float-to-int v4, v5

    .line 3555
    .local v4, distanceY:I
    iget v5, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    if-ne v5, v8, :cond_5

    .line 3556
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3557
    .local v0, absDistanceX:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3558
    .local v1, absDistanceY:I
    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v5, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 3559
    iput v7, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    .line 3561
    if-le v0, v1, :cond_4

    .line 3562
    const/16 v5, 0x40

    iput v5, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3563
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3564
    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v5, v5

    invoke-direct {p0, v5}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 3584
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_1
    :goto_0
    iget v5, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    .line 3585
    iget v5, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3586
    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v5, :cond_7

    .line 3587
    iput v7, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3591
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 3594
    :cond_3
    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 3596
    iput v7, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3597
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3598
    return-void

    .line 3566
    .restart local v0       #absDistanceX:I
    .restart local v1       #absDistanceY:I
    :cond_4
    const/16 v5, 0x20

    iput v5, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    goto :goto_0

    .line 3568
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_5
    iget v5, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    .line 3572
    iput v3, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3573
    if-eqz v3, :cond_1

    .line 3574
    if-lez v3, :cond_6

    move v2, v8

    .line 3575
    .local v2, direction:I
    :goto_2
    iget v5, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    if-eq v2, v5, :cond_1

    .line 3578
    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v5, v5

    invoke-direct {p0, v5}, Lcom/android/calendar/DayView;->initNextView(I)Z

    .line 3579
    iput v2, p0, Lcom/android/calendar/DayView;->mPreviousDirection:I

    goto :goto_0

    .line 3574
    .end local v2           #direction:I
    :cond_6
    const/4 v5, -0x1

    move v2, v5

    goto :goto_2

    .line 3588
    :cond_7
    iget v5, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v6, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v5, v6, :cond_2

    .line 3589
    iget v5, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v5, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    goto :goto_1
.end method

.method private doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 30
    .parameter "ev"

    .prologue
    .line 3456
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    move v3, v0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mScrolling:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 3514
    :cond_0
    :goto_0
    return-void

    .line 3460
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v28, v0

    .line 3461
    .local v28, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v29, v0

    .line 3462
    .local v29, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v25, v0

    .line 3463
    .local v25, selectedDay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move/from16 v26, v0

    .line 3465
    .local v26, selectedHour:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v4, v0

    if-le v3, v4, :cond_4

    .line 3467
    sget v3, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v24, v3, v4

    .line 3468
    .local v24, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move v3, v0

    move/from16 v0, v28

    move v1, v3

    if-ge v0, v1, :cond_2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v29

    move v1, v3

    if-le v0, v1, :cond_2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    move v4, v0

    add-int/2addr v3, v4

    move/from16 v0, v29

    move v1, v3

    if-lt v0, v1, :cond_3

    :cond_2
    sget-boolean v3, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    move v3, v0

    if-nez v3, :cond_4

    move/from16 v0, v29

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    move/from16 v0, v29

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v4, v0

    sget v5, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 3471
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->doExpandAllDayClick()V

    goto :goto_0

    .line 3476
    .end local v24           #bottom:I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DayView;->setSelectionFromPosition(II)Z

    move-result v27

    .line 3477
    .local v27, validPosition:Z
    if-nez v27, :cond_5

    .line 3478
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move/from16 v0, v29

    move v1, v3

    if-ge v0, v1, :cond_0

    .line 3479
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object v3, v0

    invoke-direct {v9, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3480
    .local v9, selectedTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v3, v0

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move v3, v0

    iput v3, v9, Landroid/text/format/Time;->hour:I

    .line 3482
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v3, v0

    const-wide/16 v5, 0x20

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x2

    const-wide/16 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 3489
    .end local v9           #selectedTime:Landroid/text/format/Time;
    :cond_5
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3490
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 3494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v10, v0

    const-wide/16 v12, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-wide v14, v3, Lcom/android/calendar/Event;->id:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    move-object v0, v3

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    move-object v0, v3

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v22

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v23}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_0

    .line 3497
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v3, v0

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move v3, v0

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_7

    .line 3500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v10, v0

    const-wide/16 v12, 0x1

    const-wide/16 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v21, v0

    const-wide/16 v22, -0x1

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v23}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_0

    .line 3503
    :cond_7
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object v3, v0

    invoke-direct {v14, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3504
    .local v14, startTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v3, v0

    invoke-virtual {v14, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move v3, v0

    iput v3, v14, Landroid/text/format/Time;->hour:I

    .line 3506
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3508
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15, v14}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3509
    .local v15, endTime:Landroid/text/format/Time;
    iget v3, v15, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v15, Landroid/text/format/Time;->hour:I

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v10, v0

    const-wide/16 v12, 0x20

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v22}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 1937
    .local v0, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 1939
    .local v1, r:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    if-eqz v2, :cond_0

    .line 1940
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/android/calendar/DayView;->drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1941
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1944
    :cond_0
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1946
    invoke-direct {p0, v1, p1, v0}, Lcom/android/calendar/DayView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1949
    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-nez v2, :cond_1

    .line 1950
    invoke-direct {p0, p1, v0}, Lcom/android/calendar/DayView;->drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1952
    :cond_1
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 29
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2452
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 2454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    move-object v5, v0

    sget v6, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    move v7, v0

    add-int/2addr v6, v7

    sget v7, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 2456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move v6, v0

    sub-int/2addr v5, v6

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mCellWidth:I

    move v8, v0

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v5, v8

    add-int/2addr v5, v7

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mCellWidth:I

    move v7, v0

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 2459
    sget v5, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p3

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2463
    :cond_0
    sget v5, Lcom/android/calendar/DayView;->NORMAL_FONT_SIZE:F

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2464
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v9, v0

    .line 2482
    sget v5, Lcom/android/calendar/DayView;->mCalendarGridLineVerticalColor:I

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2483
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2484
    const/high16 v5, 0x40a0

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2485
    const/4 v5, 0x0

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2486
    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v5, v5

    .line 2487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    move v6, v0

    int-to-float v6, v6

    add-float/2addr v6, v5

    sget v7, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 2488
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mCellWidth:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    .line 2489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move v8, v0

    int-to-float v8, v8

    .line 2490
    const/4 v10, 0x0

    .line 2492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v11, v0

    add-int/lit8 v12, v10, 0x1

    sget v13, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v13, v11, v10

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v11, v12, 0x1

    aput v5, v10, v12

    .line 2494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move v13, v0

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v14, v0

    int-to-float v14, v14

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    aput v13, v10, v11

    .line 2495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v11, v12, 0x1

    aput v5, v10, v12

    .line 2497
    const/4 v10, 0x0

    move/from16 v28, v10

    move v10, v11

    move v11, v8

    move/from16 v8, v28

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v12, v0

    if-ge v8, v12, :cond_1

    .line 2498
    add-float/2addr v11, v7

    .line 2499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v12, v0

    add-int/lit8 v13, v10, 0x1

    aput v11, v12, v10

    .line 2500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v12, v13, 0x1

    aput v5, v10, v13

    .line 2501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v13, v12, 0x1

    aput v11, v10, v12

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v12, v13, 0x1

    aput v6, v10, v13

    .line 2497
    add-int/lit8 v8, v8, 0x1

    move v10, v12

    goto :goto_0

    .line 2504
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v8, v0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    move-object v1, v8

    move v2, v11

    move v3, v10

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2507
    sget v8, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    move-object/from16 v0, p4

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move v8, v0

    int-to-float v8, v8

    .line 2509
    const/high16 v10, 0x3f80

    move-object/from16 v0, p4

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2510
    const/4 v10, 0x0

    .line 2512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v11, v0

    add-int/lit8 v12, v10, 0x1

    sget v13, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v13, v11, v10

    .line 2513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v11, v12, 0x1

    aput v5, v10, v12

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move v13, v0

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v14, v0

    int-to-float v14, v14

    mul-float/2addr v14, v7

    add-float/2addr v13, v14

    aput v13, v10, v11

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v11, v12, 0x1

    aput v5, v10, v12

    .line 2517
    const/4 v10, 0x0

    move/from16 v28, v10

    move v10, v11

    move v11, v8

    move/from16 v8, v28

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v12, v0

    if-ge v8, v12, :cond_2

    .line 2518
    add-float/2addr v11, v7

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v12, v0

    add-int/lit8 v13, v10, 0x1

    aput v11, v12, v10

    .line 2520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v12, v13, 0x1

    aput v5, v10, v13

    .line 2521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v13, v12, 0x1

    aput v11, v10, v12

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v10, v0

    add-int/lit8 v12, v13, 0x1

    aput v6, v10, v13

    .line 2517
    add-int/lit8 v8, v8, 0x1

    move v10, v12

    goto :goto_1

    .line 2524
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLines:[F

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    move v3, v10

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2526
    const/4 v5, 0x1

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2527
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2529
    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v6, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int v17, v5, v6

    .line 2530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mHoursWidth:I

    move v5, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v18, v0

    .line 2531
    add-int v5, p1, p2

    const/4 v6, 0x1

    sub-int v19, v5, v6

    .line 2532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mAllDayEvents:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 2533
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 2535
    const/4 v5, 0x0

    .line 2537
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    move v6, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    .line 2539
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move v6, v0

    int-to-float v6, v6

    .line 2541
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    move v8, v0

    add-int/2addr v7, v8

    sget v8, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v7, v8

    .line 2543
    move/from16 v0, p2

    new-array v0, v0, [I

    move-object v8, v0

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    .line 2544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v10, v0

    if-le v8, v10, :cond_4

    sget-boolean v8, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v8, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    move v8, v0

    if-nez v8, :cond_4

    .line 2548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 2550
    int-to-float v6, v7

    sget v7, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    .line 2551
    const/4 v7, 0x1

    move/from16 v23, v6

    move/from16 v24, v5

    move/from16 v25, v7

    .line 2556
    :goto_2
    const/4 v5, 0x0

    move v7, v5

    :goto_3
    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 2557
    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/calendar/Event;

    .line 2558
    iget v5, v8, Lcom/android/calendar/Event;->startDay:I

    .line 2559
    iget v6, v8, Lcom/android/calendar/Event;->endDay:I

    .line 2560
    move v0, v5

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    move v0, v6

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    .line 2556
    :cond_3
    :goto_4
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_3

    .line 2552
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    move v8, v0

    if-eqz v8, :cond_11

    .line 2554
    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    move v8, v0

    add-int/2addr v7, v8

    sget v8, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v7, v8

    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v25, v5

    goto :goto_2

    .line 2563
    :cond_5
    move v0, v5

    move/from16 v1, p1

    if-ge v0, v1, :cond_10

    move/from16 v26, p1

    .line 2566
    :goto_5
    move v0, v6

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    move/from16 v27, v19

    .line 2569
    :goto_6
    sub-int v5, v26, p1

    .line 2570
    sub-int v6, v27, p1

    .line 2571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v11, v0

    if-le v10, v11, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    move v10, v0

    int-to-float v10, v10

    .line 2575
    :goto_7
    sget v11, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-lez v11, :cond_6

    .line 2576
    sget v10, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v10, v10

    .line 2581
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mCellWidth:I

    move v11, v0

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v11, v5

    int-to-float v11, v11

    add-float v11, v11, v18

    iput v11, v8, Lcom/android/calendar/Event;->left:F

    .line 2582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mCellWidth:I

    move v11, v0

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v11, v6

    int-to-float v11, v11

    add-float v11, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mCellWidth:I

    move v12, v0

    int-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, v8, Lcom/android/calendar/Event;->right:F

    .line 2583
    move/from16 v0, v17

    int-to-float v0, v0

    move v11, v0

    invoke-virtual {v8}, Lcom/android/calendar/Event;->getColumn()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    iput v11, v8, Lcom/android/calendar/Event;->top:F

    .line 2584
    iget v11, v8, Lcom/android/calendar/Event;->top:F

    add-float/2addr v10, v11

    iput v10, v8, Lcom/android/calendar/Event;->bottom:F

    .line 2585
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v11, v0

    if-le v10, v11, :cond_a

    .line 2589
    iget v10, v8, Lcom/android/calendar/Event;->top:F

    move/from16 v0, v23

    int-to-float v0, v0

    move v11, v0

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_8

    .line 2590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object v8, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_4

    .line 2571
    :cond_7
    div-float v10, v22, v24

    goto :goto_7

    .line 2592
    :cond_8
    iget v10, v8, Lcom/android/calendar/Event;->bottom:F

    move/from16 v0, v23

    int-to-float v0, v0

    move v11, v0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    .line 2593
    if-eqz v25, :cond_9

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object v8, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->incrementSkipCount([III)V

    goto/16 :goto_4

    .line 2597
    :cond_9
    move/from16 v0, v23

    int-to-float v0, v0

    move v5, v0

    iput v5, v8, Lcom/android/calendar/Event;->bottom:F

    .line 2601
    :cond_a
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v10

    .line 2602
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setupAllDayTextRect(Landroid/graphics/Rect;)V

    .line 2603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mAllDayLayouts:[Landroid/text/StaticLayout;

    move-object v6, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v12

    .line 2604
    iget v15, v10, Landroid/graphics/Rect;->top:I

    move-object v0, v10

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    move-object v13, v10

    move-object/from16 v14, p3

    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V

    .line 2607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 2608
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v5, v0

    move/from16 v0, v26

    move v1, v5

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v5, v0

    move/from16 v0, v27

    move v1, v5

    if-lt v0, v1, :cond_3

    .line 2609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2613
    :cond_b
    sget v5, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object v5, v0

    if-eqz v5, :cond_d

    .line 2615
    sget v5, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    shl-int/lit8 v5, v5, 0x18

    sget v6, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    and-int/2addr v5, v6

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2616
    const/4 v5, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_d

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object v6, v0

    aget v6, v6, v5

    if-lez v6, :cond_c

    .line 2618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSkippedAlldayEvents:[I

    move-object v6, v0

    aget v6, v6, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v6

    move v3, v5

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/DayView;->drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    .line 2616
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 2623
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v5, v0

    if-eqz v5, :cond_e

    .line 2626
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeAllDayNeighbors()V

    .line 2630
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2632
    :cond_e
    return-void

    :cond_f
    move/from16 v27, v6

    goto/16 :goto_6

    :cond_10
    move/from16 v26, v5

    goto/16 :goto_5

    :cond_11
    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v25, v5

    goto/16 :goto_2
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/16 v4, 0xc

    .line 2086
    sget v2, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2087
    sget v2, Lcom/android/calendar/DayView;->AMPM_FONT_SIZE:F

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2088
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2089
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2090
    iget-object v2, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2091
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 2092
    .local v0, text:Ljava/lang/String;
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-lt v2, v4, :cond_0

    .line 2093
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2095
    :cond_0
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2096
    .local v1, y:I
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2098
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v2, v4, :cond_1

    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v2, v3

    if-le v2, v4, :cond_1

    .line 2100
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 2101
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sub-int v3, v4, v3

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 2103
    sget v2, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2105
    :cond_1
    return-void
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2109
    const/4 v0, 0x2

    sub-int v0, p2, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2110
    iget v0, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2112
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2113
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2115
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2116
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTimeLine:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2117
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IIFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0xffffff

    const/high16 v5, -0x8000

    .line 2205
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    add-int/2addr v0, p2

    .line 2206
    iget v1, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    if-le v0, v1, :cond_0

    .line 2207
    iget v1, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    sub-int/2addr v0, v1

    .line 2211
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2212
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 2213
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_BOTTOM_MARGIN:F

    sub-float/2addr v1, v2

    .line 2216
    iget v2, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_RIGHT_MARGIN:F

    sub-float/2addr v2, v3

    add-float/2addr v2, p4

    .line 2217
    sget v3, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {p6, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2218
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p6, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2219
    invoke-virtual {p5, v0, v2, v1, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2222
    invoke-virtual {p6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_LEFT_MARGIN:F

    add-float/2addr v0, v3

    sub-float v0, v2, v0

    .line 2223
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    and-int/2addr v2, v4

    or-int/2addr v2, v5

    invoke-virtual {p6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2224
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2225
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2226
    invoke-virtual {p5, p1, v0, v1, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2247
    :goto_0
    return-void

    .line 2228
    :cond_1
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_BOTTOM_MARGIN:F

    sub-float/2addr v1, v2

    .line 2229
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p6, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2231
    invoke-virtual {p6}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 2234
    sget v3, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_LEFT_MARGIN:F

    add-float/2addr v3, p4

    .line 2235
    and-int/2addr v4, v2

    or-int/2addr v4, v5

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2236
    sget v4, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2237
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p6, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2238
    invoke-virtual {p5, p1, v3, v1, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2241
    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_ONE_DAY_RIGHT_MARGIN:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 2242
    invoke-virtual {p6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2243
    sget v2, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {p6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2244
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2245
    invoke-virtual {p5, v0, v3, v1, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 2005
    iget v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v7, v0, v1

    .line 2006
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-le v0, v10, :cond_0

    .line 2007
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 2008
    sget v0, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2011
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 2013
    iget v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v7

    add-int/2addr v0, v1

    sub-int/2addr v0, v10

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2014
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2015
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2016
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTodayHeaderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2033
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2034
    iget v0, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v8, v0, 0x1

    .line 2035
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 2036
    iget v1, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v1, v1

    .line 2037
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v2, v10, :cond_1

    .line 2038
    sget v1, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v1, v1

    .line 2042
    :cond_1
    iget v2, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget v3, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    if-ge v2, v3, :cond_4

    .line 2043
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    move-object v9, v2

    .line 2048
    :goto_0
    invoke-virtual {p3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move v2, v4

    move v3, v0

    move v4, v1

    .line 2049
    :goto_1
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v0, :cond_9

    .line 2050
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    add-int/2addr v0, v2

    .line 2051
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 2052
    add-int/lit8 v0, v0, -0xe

    .line 2055
    :cond_2
    sget v1, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 2056
    iget v5, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v5, v10, :cond_6

    .line 2057
    const/4 v5, 0x6

    if-ne v0, v5, :cond_5

    .line 2058
    sget v1, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 2071
    :cond_3
    :goto_2
    const v5, 0xffffff

    and-int/2addr v1, v5

    .line 2072
    if-ne v7, v2, :cond_8

    .line 2073
    const/high16 v5, -0x6700

    or-int/2addr v1, v5

    .line 2078
    :goto_3
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2079
    aget-object v1, v9, v0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/DayView;->drawDayHeader(Ljava/lang/String;IIFLandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 2080
    int-to-float v0, v8

    add-float/2addr v0, v4

    .line 2049
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v3, 0x1

    move v4, v0

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 2045
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object v9, v2

    goto :goto_0

    .line 2059
    :cond_5
    if-nez v0, :cond_3

    .line 2060
    sget v1, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_2

    .line 2063
    :cond_6
    rem-int/lit8 v5, v2, 0x7

    .line 2064
    iget v6, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->isSaturday(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2065
    sget v1, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    goto :goto_2

    .line 2066
    :cond_7
    iget v6, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    invoke-static {v5, v6}, Lcom/android/calendar/Utils;->isSunday(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2067
    sget v1, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    goto :goto_2

    .line 2075
    :cond_8
    const/high16 v5, 0x2600

    or-int/2addr v1, v5

    goto :goto_3

    .line 2082
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2083
    return-void
.end method

.method private drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 7
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"

    .prologue
    const/4 v6, 0x1

    .line 3091
    iget-object v3, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 3092
    .local v3, r:Landroid/graphics/Rect;
    iget v4, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3093
    iget v4, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3094
    iget v4, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3095
    iget v4, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3098
    iget v4, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    packed-switch v4, :pswitch_data_0

    .line 3107
    iget-object v1, p0, Lcom/android/calendar/DayView;->mAcceptedOrTentativeEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 3110
    .local v1, eventBoxDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3111
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3113
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3116
    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-ne v4, p1, :cond_1

    .line 3117
    const/4 v2, 0x0

    .line 3118
    .local v2, paintIt:Z
    const/4 v0, 0x0

    .line 3119
    .local v0, color:I
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-ne v4, v6, :cond_2

    .line 3121
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3123
    sget v0, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3124
    const/4 v2, 0x1

    .line 3137
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 3138
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3139
    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3144
    .end local v0           #color:I
    .end local v2           #paintIt:Z
    :cond_1
    iget v4, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_V_OFFSET:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3145
    iget v4, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_H_OFFSET:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3146
    iget v4, v3, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3147
    iget v4, v3, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/android/calendar/DayView;->CALENDAR_COLOR_SQUARE_SIZE:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3148
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3149
    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3152
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3153
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3154
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3155
    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3156
    iget v4, p1, Lcom/android/calendar/Event;->color:I

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 3157
    invoke-virtual {p2, v3, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 3160
    iget v4, p1, Lcom/android/calendar/Event;->top:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_TOP_MARGIN:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3161
    iget v4, p1, Lcom/android/calendar/Event;->bottom:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_BOTTOM_MARGIN:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3162
    iget v4, p1, Lcom/android/calendar/Event;->left:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_LEFT_MARGIN:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3163
    iget v4, p1, Lcom/android/calendar/Event;->right:F

    float-to-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->EVENT_RECT_RIGHT_MARGIN:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3164
    return-object v3

    .line 3101
    .end local v1           #eventBoxDrawable:Landroid/graphics/drawable/Drawable;
    :pswitch_0
    iget-object v1, p0, Lcom/android/calendar/DayView;->mUnconfirmedOrDeclinedEventBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 3102
    .restart local v1       #eventBoxDrawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 3125
    .restart local v0       #color:I
    .restart local v2       #paintIt:Z
    :cond_2
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 3127
    iput-object p1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 3129
    sget v0, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3130
    const/4 v2, 0x1

    goto :goto_1

    .line 3131
    :cond_3
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 3133
    sget v0, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 3134
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 3098
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V
    .locals 9
    .parameter "eventLayout"
    .parameter "rect"
    .parameter "canvas"
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 3189
    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    sub-int v5, v6, v7

    .line 3190
    .local v5, width:I
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int v0, v6, v7

    .line 3193
    .local v0, height:I
    if-eqz p1, :cond_0

    sget v6, Lcom/android/calendar/DayView;->MIN_CELL_WIDTH_FOR_TEXT:I

    if-ge v5, v6, :cond_1

    .line 3227
    :cond_0
    :goto_0
    return-void

    .line 3197
    :cond_1
    const/4 v4, 0x0

    .line 3198
    .local v4, totalLineHeight:I
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    .line 3199
    .local v3, lineCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 3200
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v2

    .line 3201
    .local v2, lineBottom:I
    if-gt v2, v0, :cond_2

    .line 3202
    move v4, v2

    .line 3199
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3208
    .end local v2           #lineBottom:I
    :cond_2
    if-eqz v4, :cond_0

    iget v6, p2, Landroid/graphics/Rect;->top:I

    if-gt v6, p5, :cond_0

    iget v6, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    if-lt v6, p4, :cond_0

    .line 3213
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 3214
    iget v6, p2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {p3, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3215
    iput v8, p2, Landroid/graphics/Rect;->left:I

    .line 3216
    iput v5, p2, Landroid/graphics/Rect;->right:I

    .line 3217
    iput v8, p2, Landroid/graphics/Rect;->top:I

    .line 3218
    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 3224
    invoke-virtual {p3, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3225
    invoke-virtual {p1, p3}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3226
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 28
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object v15, v0

    .line 2744
    .local v15, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mCellWidth:I

    move v9, v0

    .line 2745
    .local v9, cellWidth:I
    sget v23, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 2748
    .local v23, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectionRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    .line 2749
    .local v26, selectionArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move v6, v0

    add-int/lit8 v7, v23, 0x1

    mul-int/2addr v6, v7

    add-int v6, v6, p3

    move v0, v6

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2750
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    add-int v6, v6, v23

    move v0, v6

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2751
    move/from16 v0, p2

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2752
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    add-int/2addr v6, v9

    move v0, v6

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 2755
    .local v24, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 2756
    .local v25, numEvents:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    move-object v5, v0

    .line 2758
    .local v5, geometry:Lcom/android/calendar/EventGeometry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    move v7, v0

    add-int/2addr v6, v7

    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    move v7, v0

    sub-int v27, v6, v7

    .line 2759
    .local v27, viewEndY:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move v0, v13

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 2760
    move-object/from16 v0, v24

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/calendar/Event;

    .local v10, event:Lcom/android/calendar/Event;
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 2761
    invoke-virtual/range {v5 .. v10}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2759
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2766
    :cond_1
    iget v6, v10, Lcom/android/calendar/Event;->bottom:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move v7, v0

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    iget v6, v10, Lcom/android/calendar/Event;->top:F

    move/from16 v0, v27

    int-to-float v0, v0

    move v7, v0

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 2770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v6, v0

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v6, v0

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    move v6, v0

    if-eqz v6, :cond_2

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2775
    :cond_2
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v4, v15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/DayView;->drawEventRect(Lcom/android/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v16

    .line 2776
    .local v16, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->setupTextRect(Landroid/graphics/Rect;)V

    .line 2779
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move v0, v6

    move/from16 v1, v27

    if-gt v0, v1, :cond_0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move v7, v0

    if-lt v6, v7, :cond_0

    .line 2782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mLayouts:[Landroid/text/StaticLayout;

    move-object v12, v0

    move-object/from16 v11, p0

    move-object v14, v10

    invoke-direct/range {v11 .. v16}, Lcom/android/calendar/DayView;->getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;

    move-result-object v18

    .line 2784
    .local v18, layout:Landroid/text/StaticLayout;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move v6, v0

    add-int/lit8 v21, v6, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewStartY:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mViewHeight:I

    move v7, v0

    add-int/2addr v6, v7

    sget v7, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    move v7, v0

    sub-int v22, v6, v7

    move-object/from16 v17, p0

    move-object/from16 v19, v16

    move-object/from16 v20, p4

    invoke-direct/range {v17 .. v22}, Lcom/android/calendar/DayView;->drawEventText(Landroid/text/StaticLayout;Landroid/graphics/Rect;Landroid/graphics/Canvas;II)V

    goto/16 :goto_1

    .line 2789
    .end local v10           #event:Lcom/android/calendar/Event;
    .end local v16           #r:Landroid/graphics/Rect;
    .end local v18           #layout:Landroid/text/StaticLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    move v6, v0

    if-eqz v6, :cond_4

    .line 2790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDispatchAccessibilityEventRunnable:Lcom/android/calendar/DayView$AccessibilityRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v7, v0

    if-nez v7, :cond_6

    const/4 v7, 0x4

    :goto_2
    iput v7, v6, Lcom/android/calendar/DayView$AccessibilityRunnable;->mEventType:I

    .line 2793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDispatchAccessibilityEventRunnable:Lcom/android/calendar/DayView$AccessibilityRunnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->post(Ljava/lang/Runnable;)Z

    .line 2796
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v6, v0

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v6, v0

    if-nez v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    move v6, v0

    if-eqz v6, :cond_5

    .line 2798
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->computeNeighbors()V

    .line 2800
    :cond_5
    return-void

    .line 2790
    :cond_6
    const/16 v7, 0x40

    goto :goto_2
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2250
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    .line 2253
    sget v1, Lcom/android/calendar/DayView;->mCalendarGridLineHorizontalColor:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2254
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2256
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2257
    iget v1, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 2258
    const/4 v2, 0x0

    .line 2259
    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    .line 2260
    const/high16 v4, 0x40a0

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2261
    const/4 v4, 0x0

    .line 2262
    const/4 v5, 0x0

    move v11, v5

    move v5, v2

    move v2, v11

    :goto_0
    const/16 v6, 0x18

    if-gt v2, v6, :cond_0

    .line 2263
    iget-object v6, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v7, v4, 0x1

    sget v8, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v8, v6, v4

    .line 2264
    iget-object v4, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v7, 0x1

    aput v5, v4, v7

    .line 2265
    iget-object v4, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v7, v6, 0x1

    aput v1, v4, v6

    .line 2266
    iget-object v4, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v7, 0x1

    aput v5, v4, v7

    .line 2267
    add-float v4, v5, v3

    .line 2262
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v6

    goto :goto_0

    .line 2269
    :cond_0
    sget v2, Lcom/android/calendar/DayView;->mCalendarGridLineVerticalColor:I

    sget v5, Lcom/android/calendar/DayView;->mCalendarGridLineHorizontalColor:I

    if-eq v2, v5, :cond_5

    .line 2270
    iget-object v2, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5, v4, p3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2271
    const/4 v2, 0x0

    .line 2272
    sget v4, Lcom/android/calendar/DayView;->mCalendarGridLineVerticalColor:I

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2277
    :goto_1
    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x18

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    .line 2278
    iget v5, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    .line 2279
    iget v6, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v6, v6

    .line 2280
    const/4 v7, 0x0

    move v11, v7

    move v7, v2

    move v2, v11

    :goto_2
    iget v8, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v2, v8, :cond_1

    .line 2281
    add-float/2addr v6, v5

    .line 2282
    iget-object v8, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v9, v7, 0x1

    aput v6, v8, v7

    .line 2283
    iget-object v7, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v8, v9, 0x1

    const/4 v10, 0x0

    aput v10, v7, v9

    .line 2284
    iget-object v7, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v9, v8, 0x1

    aput v6, v7, v8

    .line 2285
    iget-object v7, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v8, v9, 0x1

    aput v4, v7, v9

    .line 2280
    add-int/lit8 v2, v2, 0x1

    move v7, v8

    goto :goto_2

    .line 2287
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v6, 0x0

    invoke-virtual {p2, v2, v6, v7, p3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2290
    sget v2, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2291
    const/high16 v2, 0x3f80

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2292
    const/4 v2, 0x0

    .line 2293
    const/4 v6, 0x0

    .line 2294
    const/4 v7, 0x0

    move v11, v7

    move v7, v2

    move v2, v11

    :goto_3
    const/16 v8, 0x18

    if-gt v2, v8, :cond_2

    .line 2295
    iget-object v8, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v9, v6, 0x1

    sget v10, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    aput v10, v8, v6

    .line 2296
    iget-object v6, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v8, v9, 0x1

    aput v7, v6, v9

    .line 2297
    iget-object v6, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v9, v8, 0x1

    aput v1, v6, v8

    .line 2298
    iget-object v6, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v8, v9, 0x1

    aput v7, v6, v9

    .line 2299
    add-float v6, v7, v3

    .line 2294
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    move v6, v8

    goto :goto_3

    .line 2301
    :cond_2
    sget v1, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    sget v2, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    if-eq v1, v2, :cond_4

    .line 2302
    iget-object v1, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v6, p3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2303
    const/4 v1, 0x0

    .line 2304
    sget v2, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2308
    :goto_4
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    int-to-float v2, v2

    .line 2309
    const/4 v3, 0x0

    move v11, v3

    move v3, v1

    move v1, v11

    :goto_5
    iget v6, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v1, v6, :cond_3

    .line 2310
    add-float/2addr v2, v5

    .line 2311
    iget-object v6, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v7, v3, 0x1

    aput v2, v6, v3

    .line 2312
    iget-object v3, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v7, 0x1

    const/4 v8, 0x0

    aput v8, v3, v7

    .line 2313
    iget-object v3, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v7, v6, 0x1

    aput v2, v3, v6

    .line 2314
    iget-object v3, p0, Lcom/android/calendar/DayView;->mLines:[F

    add-int/lit8 v6, v7, 0x1

    aput v4, v3, v7

    .line 2309
    add-int/lit8 v1, v1, 0x1

    move v3, v6

    goto :goto_5

    .line 2316
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/DayView;->mLines:[F

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v3, p3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 2319
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2320
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2321
    return-void

    :cond_4
    move v1, v6

    goto :goto_4

    :cond_5
    move v2, v4

    goto/16 :goto_1
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2166
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-nez v4, :cond_0

    .line 2168
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v0, v4, v5

    .line 2169
    .local v0, daynum:I
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v5, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 2170
    iget v4, p1, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 2171
    iget v4, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iget v5, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 2172
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 2176
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/calendar/DayView;->saveSelectionPosition(FFFF)V

    .line 2179
    sget v4, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2180
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 2181
    iget v4, p1, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 2182
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2185
    .end local v0           #daynum:I
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 2187
    iget v4, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    add-int/lit8 v4, v4, 0x1

    sget v5, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    add-int v3, v4, v5

    .line 2189
    .local v3, y:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_1

    .line 2190
    iget-object v4, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 2191
    .local v2, time:Ljava/lang/String;
    sget v4, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p2, v2, v4, v5, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2192
    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2194
    .end local v2           #time:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private drawScrollLine(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 1974
    iget v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    mul-int/2addr v1, v2

    add-int v6, v0, v1

    .line 1975
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v7, v0, v8

    .line 1977
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1978
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1980
    sget v0, Lcom/android/calendar/DayView;->mCalendarGridLineHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1981
    const/high16 v0, 0x40a0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1982
    sget v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1984
    sget v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1985
    const/high16 v0, 0x3f80

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1986
    sget v1, Lcom/android/calendar/DayView;->GRID_LINE_LEFT_MARGIN:F

    int-to-float v2, v7

    int-to-float v3, v6

    int-to-float v4, v7

    move-object v0, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1987
    invoke-virtual {p3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1988
    return-void
.end method

.method private drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/android/calendar/DayView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3174
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 3177
    if-le v1, p2, :cond_0

    .line 3178
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3182
    :cond_0
    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1958
    invoke-direct {p0, p3}, Lcom/android/calendar/DayView;->setupHourTextPaint(Landroid/graphics/Paint;)V

    .line 1959
    iget-object v0, p0, Lcom/android/calendar/DayView;->mAllDayString:Ljava/lang/String;

    sget v1, Lcom/android/calendar/DayView;->HOURS_LEFT_MARGIN:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v3, Lcom/android/calendar/DayView;->HOURS_TOP_MARGIN:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1961
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v0, v1, :cond_0

    .line 1963
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mUseExpandIcon:Z

    if-eqz v0, :cond_1

    .line 1964
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1965
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1967
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1968
    iget-object v0, p0, Lcom/android/calendar/DayView;->mCollapseAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private findSelectedEvent(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xa

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 4094
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4095
    iget v4, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 4096
    iget-object v6, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    .line 4097
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 4098
    iget v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    mul-int/2addr v2, v5

    add-int/2addr v2, v0

    .line 4100
    iput-object v12, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4102
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4103
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    if-eqz v0, :cond_7

    .line 4105
    const v0, 0x461c4000

    .line 4107
    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v1, v1

    .line 4108
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sget v4, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v2, v4

    .line 4109
    iget v4, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    .line 4110
    iget v5, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v8, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-le v5, v8, :cond_0

    .line 4112
    add-int/lit8 v4, v4, -0x1

    :cond_0
    move-object v5, v12

    move v8, v0

    .line 4114
    :goto_0
    if-ge v3, v7, :cond_12

    .line 4115
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 4116
    invoke-virtual {v0}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v9

    if-eqz v9, :cond_11

    sget-boolean v9, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v9, :cond_1

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v9

    if-lt v9, v4, :cond_1

    move-object v0, v5

    move v5, v8

    .line 4114
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v8, v5

    move-object v5, v0

    goto :goto_0

    .line 4122
    :cond_1
    iget v9, v0, Lcom/android/calendar/Event;->startDay:I

    iget v10, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-gt v9, v10, :cond_11

    iget v9, v0, Lcom/android/calendar/Event;->endDay:I

    iget v10, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-lt v9, v10, :cond_11

    .line 4123
    sget-boolean v9, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v9

    int-to-float v9, v9

    .line 4125
    :goto_2
    div-float v9, v1, v9

    .line 4126
    sget v10, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v10, v10

    cmpl-float v10, v9, v10

    if-lez v10, :cond_2

    .line 4127
    sget v9, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    int-to-float v9, v9

    .line 4129
    :cond_2
    int-to-float v10, v2

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    add-float/2addr v10, v11

    .line 4130
    add-float/2addr v9, v10

    .line 4131
    int-to-float v11, p2

    cmpg-float v11, v10, v11

    if-gez v11, :cond_5

    int-to-float v11, p2

    cmpl-float v11, v9, v11

    if-lez v11, :cond_5

    .line 4134
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4151
    :goto_3
    iput-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4223
    :cond_3
    :goto_4
    return-void

    .line 4123
    :cond_4
    iget v9, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    int-to-float v9, v9

    goto :goto_2

    .line 4139
    :cond_5
    int-to-float v11, p2

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_6

    .line 4140
    int-to-float v9, p2

    sub-float v9, v10, v9

    .line 4144
    :goto_5
    cmpg-float v10, v9, v8

    if-gez v10, :cond_11

    move v5, v9

    .line 4146
    goto :goto_1

    .line 4142
    :cond_6
    int-to-float v10, p2

    sub-float v9, v10, v9

    goto :goto_5

    .line 4156
    :cond_7
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v5, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int/2addr v0, v5

    add-int v8, p2, v0

    .line 4159
    iget-object v9, p0, Lcom/android/calendar/DayView;->mRect:Landroid/graphics/Rect;

    .line 4160
    sub-int v0, p1, v10

    iput v0, v9, Landroid/graphics/Rect;->left:I

    .line 4161
    add-int/lit8 v0, p1, 0xa

    iput v0, v9, Landroid/graphics/Rect;->right:I

    .line 4162
    sub-int v0, v8, v10

    iput v0, v9, Landroid/graphics/Rect;->top:I

    .line 4163
    add-int/lit8 v0, v8, 0xa

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    .line 4165
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    move v10, v3

    .line 4167
    :goto_6
    if-ge v10, v7, :cond_a

    .line 4168
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/Event;

    .line 4170
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventGeometry;->computeEventRect(IIIILcom/android/calendar/Event;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 4167
    :cond_8
    :goto_7
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto :goto_6

    .line 4176
    :cond_9
    invoke-virtual {v0, v5, v9}, Lcom/android/calendar/EventGeometry;->eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4177
    iget-object v11, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 4183
    :cond_a
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4184
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4186
    iget v1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    move v4, v1

    move-object v5, v12

    .line 4187
    :goto_8
    if-ge v3, v2, :cond_b

    .line 4188
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 4189
    int-to-float v6, p1

    int-to-float v7, v8

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/calendar/EventGeometry;->pointToEvent(FFLcom/android/calendar/Event;)F

    move-result v6

    .line 4190
    cmpg-float v7, v6, v4

    if-gez v7, :cond_10

    move-object v4, v1

    move v1, v6

    .line 4187
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    move v4, v1

    goto :goto_8

    .line 4195
    :cond_b
    iput-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 4201
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    .line 4202
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v1, v1, Lcom/android/calendar/Event;->endDay:I

    .line 4203
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ge v2, v0, :cond_d

    .line 4204
    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4209
    :cond_c
    :goto_a
    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v2, v2, Lcom/android/calendar/Event;->startTime:I

    div-int/lit8 v2, v2, 0x3c

    .line 4211
    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->startTime:I

    iget-object v4, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v4, v4, Lcom/android/calendar/Event;->endTime:I

    if-ge v3, v4, :cond_e

    .line 4212
    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->endTime:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    .line 4217
    :goto_b
    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-ge v4, v2, :cond_f

    iget v4, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v4, v0, :cond_f

    .line 4218
    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto/16 :goto_4

    .line 4205
    :cond_d
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-le v2, v1, :cond_c

    .line 4206
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    goto :goto_a

    .line 4214
    :cond_e
    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget v3, v3, Lcom/android/calendar/Event;->endTime:I

    div-int/lit8 v3, v3, 0x3c

    goto :goto_b

    .line 4219
    :cond_f
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    if-le v0, v3, :cond_3

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    if-ne v0, v1, :cond_3

    .line 4220
    iput v3, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto/16 :goto_4

    :cond_10
    move v1, v4

    move-object v4, v5

    goto :goto_9

    :cond_11
    move-object v0, v5

    move v5, v8

    goto/16 :goto_1

    :cond_12
    move-object v0, v5

    goto/16 :goto_3
.end method

.method private getAllDayAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 3406
    iget v0, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v1

    .line 3408
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3411
    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3412
    :goto_0
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_1

    .line 3416
    :goto_1
    const-string v2, "animateDayHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3418
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3420
    new-instance v1, Lcom/android/calendar/DayView$6;

    invoke-direct {v1, p0}, Lcom/android/calendar/DayView$6;-><init>(Lcom/android/calendar/DayView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3432
    return-object v0

    .line 3411
    :cond_0
    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    goto :goto_0

    .line 3412
    :cond_1
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1
.end method

.method private getAllDayEventAnimator()Landroid/animation/ObjectAnimator;
    .locals 5

    .prologue
    .line 3382
    iget v0, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v0, v1

    .line 3384
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3387
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int/2addr v0, v1

    .line 3388
    iget v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3389
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v2, :cond_0

    .line 3392
    :goto_0
    if-ne v1, v0, :cond_1

    .line 3393
    const/4 v0, 0x0

    .line 3400
    :goto_1
    return-object v0

    .line 3389
    :cond_0
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v0, v0

    goto :goto_0

    .line 3397
    :cond_1
    const-string v2, "animateDayEventHeight"

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v1, 0x1

    aput v0, v3, v1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3399
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 2376
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2377
    .local v0, box:Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2378
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2379
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2380
    .local v1, daynum:I
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iget v3, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2381
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2382
    return-object v0
.end method

.method private static getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 3980
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3985
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/android/calendar/Event;->id:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "calendar_id"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3991
    if-nez v1, :cond_0

    move v0, v10

    .line 4029
    :goto_0
    return v0

    .line 3995
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 3996
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 3997
    goto :goto_0

    .line 4000
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4001
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4002
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4004
    sget-object v5, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 4005
    const-string v1, "_id=%d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4006
    sget-object v6, Lcom/android/calendar/DayView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    move-object v4, v0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4009
    if-eqz v0, :cond_5

    .line 4010
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4011
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4012
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4013
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 4016
    :goto_1
    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_2

    move v0, v10

    .line 4017
    goto :goto_0

    .line 4020
    :cond_2
    iget-boolean v1, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    if-eqz v1, :cond_3

    move v0, v12

    .line 4021
    goto :goto_0

    .line 4024
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v12

    .line 4026
    goto :goto_0

    :cond_4
    move v0, v11

    .line 4029
    goto :goto_0

    :cond_5
    move-object v0, v3

    move v1, v10

    goto :goto_1
.end method

.method private getEventLayout([Landroid/text/StaticLayout;ILcom/android/calendar/Event;Landroid/graphics/Paint;Landroid/graphics/Rect;)Landroid/text/StaticLayout;
    .locals 14
    .parameter "layouts"
    .parameter "i"
    .parameter "event"
    .parameter "paint"
    .parameter "r"

    .prologue
    .line 2424
    if-ltz p2, :cond_0

    array-length v4, p1

    move/from16 v0, p2

    move v1, v4

    if-lt v0, v1, :cond_1

    .line 2425
    :cond_0
    const/4 v4, 0x0

    .line 2448
    :goto_0
    return-object v4

    .line 2428
    :cond_1
    aget-object v2, p1, p2

    .line 2432
    .local v2, layout:Landroid/text/StaticLayout;
    if-eqz v2, :cond_2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 2433
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-direct {p0, v4, v5}, Lcom/android/calendar/DayView;->drawTextSanitizer(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2435
    .local v3, text:Ljava/lang/String;
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 2436
    sget v4, Lcom/android/calendar/DayView;->mDeclinedEventTextColor:I

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2442
    :goto_1
    new-instance v2, Landroid/text/StaticLayout;

    .end local v2           #layout:Landroid/text/StaticLayout;
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Landroid/text/TextPaint;

    move-object v0, v6

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v7

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 2445
    .restart local v2       #layout:Landroid/text/StaticLayout;
    aput-object v2, p1, p2

    .end local v3           #text:Ljava/lang/String;
    :cond_3
    move-object v4, v2

    .line 2448
    goto :goto_0

    .line 2438
    .restart local v3       #text:Ljava/lang/String;
    :cond_4
    sget v4, Lcom/android/calendar/DayView;->mEventTextColor:I

    move-object/from16 v0, p4

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method

.method private incrementSkipCount([III)V
    .locals 2
    .parameter "counts"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 2636
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    array-length v1, p1

    if-le p3, v1, :cond_1

    .line 2642
    :cond_0
    return-void

    .line 2639
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    if-gt v0, p3, :cond_0

    .line 2640
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 2639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xe

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 626
    invoke-virtual {p0, v7}, Lcom/android/calendar/DayView;->setFocusable(Z)V

    .line 630
    invoke-virtual {p0, v7}, Lcom/android/calendar/DayView;->setFocusableInTouchMode(Z)V

    .line 631
    invoke-virtual {p0, v7}, Lcom/android/calendar/DayView;->setClickable(Z)V

    .line 632
    invoke-virtual {p0, p0}, Lcom/android/calendar/DayView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 634
    invoke-static {p1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 636
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 638
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 640
    iget-object v2, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    const-wide/32 v3, 0x493e0

    const-wide/32 v5, 0x493e0

    rem-long v5, v0, v5

    sub-long/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/calendar/DayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 642
    iget-object v2, p0, Lcom/android/calendar/DayView;->mCurrentTime:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mTodayJulianDay:I

    .line 644
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mWeek_saturdayColor:I

    .line 645
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mWeek_sundayColor:I

    .line 646
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarDateBannerTextColor:I

    .line 648
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarAmPmLabel:I

    .line 652
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridAreaSelected:I

    .line 653
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineHorizontalColor:I

    .line 654
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineVerticalColor:I

    .line 655
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerHorizontalColor:I

    .line 656
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarGridLineInnerVerticalColor:I

    .line 658
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    .line 660
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mPressedColor:I

    .line 661
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mEventTextColor:I

    .line 662
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/calendar/DayView;->mDeclinedEventTextColor:I

    .line 663
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/high16 v1, -0x100

    or-int/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->mMoreEventsTextColor:I

    .line 665
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_FONT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 666
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 667
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 669
    iget-object v0, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 671
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 672
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 673
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 675
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPaint:Landroid/graphics/Paint;

    .line 676
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 680
    new-array v1, v10, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    .line 683
    new-array v1, v10, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    move v1, v7

    .line 685
    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    .line 686
    sub-int v2, v1, v7

    .line 688
    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    const/16 v4, 0x14

    invoke-static {v1, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 689
    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x7

    iget-object v5, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v3, v4

    .line 691
    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v4, 0x1e

    invoke-static {v1, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 694
    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    const/16 v4, 0x32

    invoke-static {v1, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 698
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x7

    iget-object v5, p0, Lcom/android/calendar/DayView;->mDayStrs2Letter:[Ljava/lang/String;

    aget-object v2, v5, v2

    aput-object v2, v3, v4

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    :cond_1
    sget v1, Lcom/android/calendar/DayView;->DATE_HEADER_FONT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 704
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 705
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, " 28"

    aput-object v2, v1, v8

    const-string v2, " 30"

    aput-object v2, v1, v7

    .line 706
    invoke-direct {p0, v8, v1, v0}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 707
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_FONT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 708
    iget v1, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    iget-object v2, p0, Lcom/android/calendar/DayView;->mDayStrs:[Ljava/lang/String;

    invoke-direct {p0, v8, v2, v0}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mDateStrWidth:I

    .line 710
    sget v1, Lcom/android/calendar/DayView;->HOURS_FONT_SIZE:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 711
    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 712
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->handleOnResume()V

    .line 714
    invoke-static {v8}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    .line 715
    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    .line 716
    new-array v1, v9, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/DayView;->mAmString:Ljava/lang/String;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/calendar/DayView;->mPmString:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 717
    sget v2, Lcom/android/calendar/DayView;->AMPM_FONT_SIZE:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 718
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    invoke-direct {p0, v2, v1, v0}, Lcom/android/calendar/DayView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->HOURS_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 719
    sget v0, Lcom/android/calendar/DayView;->MIN_HOURS_WIDTH:I

    iget v1, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 722
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 723
    const v1, 0x7f04000d

    invoke-virtual {v0, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    .line 724
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 727
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    .line 728
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 729
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 730
    const v1, 0x103000b

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 731
    new-array v1, v7, [I

    const v2, 0x1010054

    aput v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 733
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 737
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    invoke-virtual {p0, p0}, Lcom/android/calendar/DayView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 741
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 743
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 745
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    .line 746
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    .line 752
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x19

    .line 754
    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/calendar/DayView;->mLines:[F

    .line 755
    return-void
.end method

.method private initFirstHour()V
    .locals 3

    .prologue
    const/16 v2, 0x18

    .line 1653
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1654
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-gez v0, :cond_1

    .line 1655
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1659
    :cond_0
    :goto_0
    return-void

    .line 1656
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    if-le v0, v2, :cond_0

    .line 1657
    iget v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    sub-int v0, v2, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    goto :goto_0
.end method

.method private initNextView(I)Z
    .locals 7
    .parameter "deltaX"

    .prologue
    .line 3652
    iget-object v3, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/DayView;

    .line 3653
    .local v2, view:Lcom/android/calendar/DayView;
    iget-object v0, v2, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    .line 3654
    .local v0, date:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3656
    if-lez p1, :cond_0

    .line 3657
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3658
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3659
    const/4 v1, 0x0

    .line 3665
    .local v1, switchForward:Z
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3666
    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 3667
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/calendar/DayView;->layout(IIII)V

    .line 3668
    invoke-virtual {v2}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 3669
    return v1

    .line 3661
    .end local v1           #switchForward:Z
    :cond_0
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3662
    iget v3, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    iget v4, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 3663
    const/4 v1, 0x1

    .restart local v1       #switchForward:Z
    goto :goto_0
.end method

.method private initView(Lcom/android/calendar/DayView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 1174
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v0, p1, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1175
    iget-object v0, p1, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1176
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1177
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 1178
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1179
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1180
    invoke-virtual {p1}, Lcom/android/calendar/DayView;->initAllDayHeights()V

    .line 1182
    iput-object v2, p1, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1183
    iput-object v2, p1, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1184
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    iput v0, p1, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 1185
    iget-object v0, p1, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1186
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1194
    :goto_0
    invoke-direct {p1}, Lcom/android/calendar/DayView;->recalc()V

    .line 1195
    return-void

    .line 1188
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_0
.end method

.method private recalc()V
    .locals 4

    .prologue
    .line 998
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 999
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {p0, v2}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    .line 1002
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1003
    .local v0, start:J
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    .line 1004
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    .line 1006
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mMonthLength:I

    .line 1007
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstVisibleDate:I

    .line 1008
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    iput v2, p0, Lcom/android/calendar/DayView;->mFirstVisibleDayOfWeek:I

    .line 1009
    return-void
.end method

.method private remeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1046
    sget v0, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v0, v0

    .line 1047
    div-int/lit8 v1, p2, 0x6

    div-int/2addr v1, v0

    .line 1048
    if-le v1, v5, :cond_1

    move v1, v5

    .line 1053
    :cond_0
    :goto_0
    mul-int/2addr v0, v1

    sput v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    .line 1055
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    move v0, v3

    .line 1060
    :goto_1
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ge v0, v1, :cond_2

    .line 1061
    iget-object v1, p0, Lcom/android/calendar/DayView;->mEarliestStartHour:[I

    const/16 v2, 0x19

    aput v2, v1, v0

    .line 1062
    iget-object v1, p0, Lcom/android/calendar/DayView;->mHasAllDayEvent:[Z

    aput-boolean v3, v1, v0

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1050
    :cond_1
    if-ge v1, v2, :cond_0

    move v1, v2

    .line 1051
    goto :goto_0

    .line 1065
    :cond_2
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    .line 1068
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x18

    sput v1, Lcom/android/calendar/DayView;->mMinCellHeight:I

    .line 1069
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v1, v2, :cond_3

    .line 1070
    sget v1, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v1, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 1074
    :cond_3
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1076
    if-lez v0, :cond_e

    .line 1077
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int v1, p2, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int/2addr v1, v2

    .line 1080
    if-ne v0, v4, :cond_a

    .line 1081
    sget v0, Lcom/android/calendar/DayView;->SINGLE_ALLDAY_HEIGHT:I

    .line 1108
    :cond_4
    :goto_2
    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v1, v0

    sget v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    .line 1112
    :goto_3
    iput v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    .line 1114
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    .line 1117
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    sget v1, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_LEFT_MARGIN:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1118
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1120
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sget v2, Lcom/android/calendar/DayView;->EXPAND_ALL_DAY_BOTTOM_MARGIN:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1121
    iget-object v0, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mExpandAllDayRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/calendar/DayView;->mExpandAlldayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1124
    iget v0, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mNumHours:I

    .line 1125
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setHourHeight(F)V

    .line 1127
    sget v0, Lcom/android/calendar/DayView;->MIN_EVENT_HEIGHT:F

    const v1, 0x476a6000

    mul-float/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    .line 1129
    iget-object v2, p0, Lcom/android/calendar/DayView;->mEvents:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/android/calendar/Event;->computePositions(Ljava/util/ArrayList;J)V

    .line 1132
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x18

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 1133
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 1134
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mViewStartY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxViewStartY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_5
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v0, v1, :cond_6

    .line 1138
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1139
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 1142
    :cond_6
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1143
    invoke-direct {p0}, Lcom/android/calendar/DayView;->initFirstHour()V

    .line 1144
    iput v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1151
    :cond_7
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_8

    .line 1152
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 1154
    :cond_8
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 1156
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    .line 1158
    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v1, :cond_9

    iget-wide v1, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v3, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v3, v3, Lcom/android/calendar/Event;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_9

    .line 1159
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1161
    :cond_9
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v2, 0x14

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1163
    return-void

    .line 1082
    :cond_a
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v0, v2, :cond_b

    .line 1085
    sget v1, Lcom/android/calendar/DayView;->MAX_HEIGHT_OF_ONE_ALLDAY_EVENT:I

    mul-int/2addr v0, v1

    .line 1086
    sget v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v1, :cond_4

    .line 1087
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    goto/16 :goto_2

    .line 1092
    :cond_b
    iget v2, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    if-eqz v2, :cond_c

    .line 1096
    iget v0, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    sget v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_2

    .line 1099
    :cond_c
    int-to-float v0, v0

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1101
    sget-boolean v2, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-nez v2, :cond_d

    sget v2, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    if-le v0, v2, :cond_d

    .line 1102
    sget v0, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    goto/16 :goto_2

    .line 1103
    :cond_d
    if-le v0, v1, :cond_4

    move v0, v1

    .line 1104
    goto/16 :goto_2

    .line 1110
    :cond_e
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v0, v3

    goto/16 :goto_3
.end method

.method private resetSelectedHour()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1639
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1640
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1641
    iput-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1642
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1643
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1644
    :cond_1
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v2, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_0

    .line 1645
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumHours:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1646
    iput-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1647
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1648
    iput-boolean v3, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_0
.end method

.method private saveSelectionPosition(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2369
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2370
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2371
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2372
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2373
    return-void
.end method

.method private setSelectionFromPosition(II)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4042
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    if-ge p1, v2, :cond_0

    .line 4043
    iget p1, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    .line 4046
    :cond_0
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    div-int v1, v2, v3

    .line 4047
    .local v1, day:I
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-lt v1, v2, :cond_1

    .line 4048
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int v1, v2, v5

    .line 4050
    :cond_1
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    add-int/2addr v1, v2

    .line 4051
    iput v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 4053
    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    if-ge p2, v2, :cond_2

    move v2, v6

    .line 4090
    :goto_0
    return v2

    .line 4057
    :cond_2
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4059
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    if-ge p2, v2, :cond_3

    .line 4060
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 4074
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->findSelectedEvent(II)V

    move v2, v5

    .line 4090
    goto :goto_0

    .line 4063
    :cond_3
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    sub-int v0, p2, v2

    .line 4065
    .local v0, adjustedY:I
    iget v2, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    if-ge v0, v2, :cond_4

    .line 4066
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 4071
    :goto_2
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    goto :goto_1

    .line 4068
    :cond_4
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int v3, v0, v3

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    goto :goto_2
.end method

.method private setupAllDayTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2403
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 2404
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2405
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2417
    :cond_1
    :goto_0
    return-void

    .line 2409
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 2410
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2411
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2413
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2414
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2415
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private setupHourTextPaint(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 2197
    sget v0, Lcom/android/calendar/DayView;->mCalendarHourLabelColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2198
    sget v0, Lcom/android/calendar/DayView;->HOURS_FONT_SIZE:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2199
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2200
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2201
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2202
    return-void
.end method

.method private setupTextRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 2386
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 2387
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2388
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2400
    :cond_1
    :goto_0
    return-void

    .line 2392
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 2393
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2394
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_BOTTOM_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2396
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    sget v2, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 2397
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2398
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sget v1, Lcom/android/calendar/DayView;->EVENT_TEXT_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method private switchViews(ZFFF)Landroid/view/View;
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1558
    sub-float v4, p3, p2

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mAnimationDistance:F

    .line 1559
    sget-boolean v4, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1560
    sget-object v4, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchViews("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") O:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Dist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mAnimationDistance:F

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v4, v4, p3

    .line 1564
    const/high16 v5, 0x3f80

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    .line 1565
    const/high16 v4, 0x3f80

    .line 1570
    :cond_1
    if-eqz p1, :cond_2

    .line 1571
    const/high16 v5, 0x3f80

    sub-float/2addr v5, v4

    .line 1572
    const/4 v6, 0x0

    .line 1573
    neg-float v4, v4

    .line 1574
    const/high16 v7, -0x4080

    move v14, v7

    move v15, v4

    move v8, v6

    move v6, v5

    .line 1582
    :goto_0
    new-instance v16, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object v4, v0

    iget-object v4, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v4

    move-object/from16 v0, v16

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1584
    if-eqz p1, :cond_3

    .line 1585
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v5, v0

    add-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1589
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 1593
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v4, v0

    const/4 v5, 0x7

    if-ne v4, v5, :cond_4

    .line 1594
    new-instance v4, Landroid/text/format/Time;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1595
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->adjustToBeginningOfWeek(Landroid/text/format/Time;)V

    move-object/from16 v17, v4

    .line 1598
    :goto_2
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1599
    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v5, v0

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    add-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v18

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1603
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1609
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v7, v15

    move v9, v14

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1615
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, p3, v6

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DayView;->calculateDuration(FFF)J

    move-result-wide v6

    .line 1616
    invoke-virtual {v4, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    move-object v8, v0

    invoke-virtual {v4, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mHScrollInterpolator:Lcom/android/calendar/DayView$ScrollInterpolator;

    move-object v8, v0

    invoke-virtual {v5, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1619
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1620
    new-instance v6, Lcom/android/calendar/DayView$GotoBroadcaster;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/DayView$GotoBroadcaster;-><init>(Lcom/android/calendar/DayView;Landroid/text/format/Time;Landroid/text/format/Time;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v6, v0

    invoke-virtual {v6, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/DayView;

    .line 1625
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/DayView;->cleanup()V

    .line 1626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 1627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/DayView;

    .line 1628
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/DayView;->setSelected(Landroid/text/format/Time;Z)V

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->requestFocus()Z

    .line 1630
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->reloadEvents()V

    .line 1631
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->updateTitle()V

    .line 1633
    return-object p0

    .line 1576
    :cond_2
    const/high16 v5, 0x3f80

    sub-float v5, v4, v5

    .line 1577
    const/4 v6, 0x0

    .line 1579
    const/high16 v7, 0x3f80

    move v14, v7

    move v15, v4

    move v8, v6

    move v6, v5

    goto/16 :goto_0

    .line 1587
    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v5, v0

    sub-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_1

    :cond_4
    move-object/from16 v17, v16

    goto/16 :goto_2
.end method

.method private switchViews(Z)V
    .locals 28
    .parameter "trackBallSelection"

    .prologue
    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v27, v0

    .line 1207
    .local v27, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1208
    const-wide/16 v3, -0x1

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 1214
    if-eqz p1, :cond_2

    .line 1215
    if-nez v27, :cond_1

    .line 1217
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v9

    .line 1218
    .local v9, startMillis:J
    const-wide/32 v3, 0x36ee80

    add-long v11, v9, v3

    .line 1219
    .local v11, endMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v3, v0

    const-wide/16 v5, 0x1

    const-wide/16 v7, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 1254
    .end local v9           #startMillis:J
    .end local v11           #endMillis:J
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v13, v0

    const-wide/16 v15, 0x2

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v25

    move-object/from16 v14, p0

    invoke-virtual/range {v13 .. v26}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1231
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v13, v0

    const-wide/16 v15, 0x2

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v25

    move-object/from16 v14, p0

    invoke-virtual/range {v13 .. v26}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1241
    :cond_3
    if-nez v27, :cond_4

    .line 1243
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v9

    .line 1244
    .restart local v9       #startMillis:J
    const-wide/32 v3, 0x36ee80

    add-long v11, v9, v3

    .line 1246
    .restart local v11       #endMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v3, v0

    const-wide/16 v5, 0x1

    const-wide/16 v7, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v16}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto :goto_0

    .line 1249
    .end local v9           #startMillis:J
    .end local v11           #endMillis:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v13, v0

    const-wide/16 v15, 0x2

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v21, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v25

    move-object/from16 v14, p0

    invoke-virtual/range {v13 .. v26}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    goto/16 :goto_0
.end method

.method private updateEventDetails()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 3257
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3259
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3305
    :cond_1
    :goto_0
    return-void

    .line 3262
    :cond_2
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v2, v2, Lcom/android/calendar/Event;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3266
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 3269
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3271
    iget-object v6, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 3272
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3273
    iget-object v1, v6, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3275
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3276
    iget-boolean v1, v6, Lcom/android/calendar/Event;->hasAlarm:Z

    if-eqz v1, :cond_4

    move v1, v7

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3278
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3279
    iget-boolean v1, v6, Lcom/android/calendar/Event;->isRepeating:Z

    if-eqz v1, :cond_5

    move v1, v7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3282
    iget-boolean v0, v6, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v0, :cond_6

    .line 3283
    const v0, 0x82012

    .line 3290
    :goto_3
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3291
    or-int/lit16 v0, v0, 0x80

    move v5, v0

    .line 3293
    :goto_4
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-wide v1, v6, Lcom/android/calendar/Event;->startMillis:J

    iget-wide v3, v6, Lcom/android/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    .line 3295
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v2, 0x7f0e0026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3296
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3298
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3299
    iget-object v1, v6, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 3300
    if-eqz v1, :cond_7

    move v2, v8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3301
    if-nez v1, :cond_3

    iget-object v1, v6, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3303
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3304
    iget-object v0, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/calendar/DayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    move v1, v8

    .line 3276
    goto :goto_1

    :cond_5
    move v1, v8

    .line 3279
    goto :goto_2

    .line 3286
    :cond_6
    const v0, 0x81413

    goto :goto_3

    :cond_7
    move v2, v7

    .line 3300
    goto :goto_5

    :cond_8
    move v5, v0

    goto :goto_4
.end method


# virtual methods
.method protected addChipOutline([FIII)I
    .locals 2
    .parameter "lines"
    .parameter "count"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2661
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, count:I
    int-to-float v1, p3

    aput v1, p1, p2

    .line 2662
    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v1, p4

    aput v1, p1, v0

    .line 2663
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    aput v1, p1, p2

    .line 2664
    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v1, p4

    aput v1, p1, v0

    .line 2666
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    aput v1, p1, p2

    .line 2667
    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v1, p4

    aput v1, p1, v0

    .line 2668
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, p3

    int-to-float v1, v1

    aput v1, p1, p2

    .line 2669
    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, p4

    int-to-float v1, v1

    aput v1, p1, v0

    .line 2671
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v1, p3

    aput v1, p1, p2

    .line 2672
    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    int-to-float v1, p4

    aput v1, p1, v0

    .line 2673
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v1, p3

    aput v1, p1, p2

    .line 2674
    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    aput v1, p1, v0

    .line 2676
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    int-to-float v1, p3

    aput v1, p1, p2

    .line 2677
    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, p4

    int-to-float v1, v1

    aput v1, p1, v0

    .line 2678
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #count:I
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    aput v1, p1, p2

    .line 2679
    add-int/lit8 p2, v0, 0x1

    .end local v0           #count:I
    .restart local p2
    sget v1, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, p4

    int-to-float v1, v1

    aput v1, p1, v0

    .line 2681
    return p2
.end method

.method public cleanup()V
    .locals 4

    .prologue
    .line 4256
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 4257
    iget-object v1, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4259
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 4260
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4261
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 4262
    iget-object v1, p0, Lcom/android/calendar/DayView;->mDismissPopup:Lcom/android/calendar/DayView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4263
    iget-object v1, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4266
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const-string v2, "preferences_default_cell_height"

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4270
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 4271
    return-void
.end method

.method clearCachedEvents()V
    .locals 2

    .prologue
    .line 1728
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 1729
    return-void
.end method

.method public compareToVisibleTimeRange(Landroid/text/format/Time;)I
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 953
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    .line 954
    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    .line 955
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->second:I

    .line 957
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v7, v3, Landroid/text/format/Time;->hour:I

    .line 958
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v7, v3, Landroid/text/format/Time;->minute:I

    .line 959
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v7, v3, Landroid/text/format/Time;->second:I

    .line 961
    sget-boolean v3, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 962
    sget-object v3, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v5}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    sget-object v3, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Diff  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v3}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    .line 968
    if-lez v3, :cond_2

    .line 970
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    iget v5, p0, Lcom/android/calendar/DayView;->mNumDays:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 971
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 972
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-static {p1, v3}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    .line 974
    sget-boolean v4, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    iget v6, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 977
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v4, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 978
    if-gez v3, :cond_4

    move v3, v7

    .line 987
    :cond_2
    :goto_0
    sget-boolean v4, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Diff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v0, v4, Landroid/text/format/Time;->hour:I

    .line 990
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 991
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iput v2, v0, Landroid/text/format/Time;->second:I

    .line 992
    return v3

    .line 981
    :cond_4
    if-nez v3, :cond_2

    move v3, v8

    .line 983
    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1457
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    move v0, v10

    .line 1499
    :goto_0
    return v0

    .line 1461
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v2, :cond_3

    const-string v2, "%A %H"

    :goto_1
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1463
    const-string v0, ". "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1465
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    const v3, 0x7f0a008c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    .line 1468
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1496
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1497
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1498
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    move v0, v9

    .line 1499
    goto :goto_0

    .line 1461
    :cond_3
    const-string v2, "%A %I%p"

    goto :goto_1

    .line 1472
    :sswitch_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v9

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 1473
    if-le v2, v9, :cond_4

    .line 1474
    sget-object v5, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1475
    sget-object v5, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    iget-object v6, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    add-int/lit8 v8, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v8

    .line 1478
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    goto :goto_3

    .line 1483
    :sswitch_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    if-eqz v0, :cond_2

    .line 1484
    if-le v2, v9, :cond_5

    .line 1485
    sget-object v0, Lcom/android/calendar/DayView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1486
    sget-object v0, Lcom/android/calendar/DayView;->mFormatter:Ljava/util/Formatter;

    iget-object v3, p0, Lcom/android/calendar/DayView;->mEventCountTemplate:Ljava/lang/String;

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1488
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-direct {p0, v1, v0}, Lcom/android/calendar/DayView;->appendEventAccessibilityString(Ljava/lang/StringBuilder;Lcom/android/calendar/Event;)V

    goto/16 :goto_2

    .line 1468
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method protected drawMoreAlldayEvents(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f00

    .line 2646
    iget v0, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    iget v1, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, p3

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->EVENT_ALL_DAY_TEXT_LEFT_MARGIN:I

    add-int/2addr v0, v1

    .line 2647
    sget v1, Lcom/android/calendar/DayView;->MAX_UNEXPANDED_ALLDAY_HEIGHT:I

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v1, v2

    .line 2649
    const/16 v2, 0x10

    new-array v2, v2, [F

    .line 2650
    invoke-virtual {p0, v2, v5, v0, v1}, Lcom/android/calendar/DayView;->addChipOutline([FIII)I

    .line 2651
    invoke-virtual {p1, v2, p4}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 2652
    iget-object v2, p0, Lcom/android/calendar/DayView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 2653
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    add-int/2addr v1, v3

    .line 2654
    sget v3, Lcom/android/calendar/DayView;->EVENT_SQUARE_WIDTH:I

    sget v4, Lcom/android/calendar/DayView;->EVENT_LINE_PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 2655
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2656
    return-void
.end method

.method getFirstVisibleHour()I
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    return v0
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 791
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 792
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 793
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 798
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 799
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 780
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 781
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 782
    iget v1, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 787
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleOnResume()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    .line 770
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/calendar/DayView;->mHourStrs:[Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstDayOfWeek:I

    .line 772
    return-void

    .line 770
    :cond_0
    sget-object v0, Lcom/android/calendar/CalendarData;->s12HoursNoAmPm:[Ljava/lang/String;

    goto :goto_0
.end method

.method public initAllDayHeights()V
    .locals 3

    .prologue
    .line 3366
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxUnexpandedAlldayEventCount:I

    if-gt v1, v2, :cond_0

    .line 3377
    :goto_0
    return-void

    .line 3369
    :cond_0
    sget-boolean v1, Lcom/android/calendar/DayView;->mShowAllAllDayEvents:Z

    if-eqz v1, :cond_1

    .line 3370
    iget v1, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    sget v2, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/calendar/DayView;->MIN_HOURS_HEIGHT:I

    sub-int v0, v1, v2

    .line 3371
    .local v0, maxADHeight:I
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3373
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxAlldayEvents:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_0

    .line 3375
    .end local v0           #maxADHeight:I
    :cond_1
    sget v1, Lcom/android/calendar/DayView;->MIN_UNEXPANDED_ALLDAY_EVENT_HEIGHT:F

    float-to-int v1, v1

    iput v1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 764
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 766
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x6e

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3836
    iget v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eq v0, v8, :cond_0

    .line 3837
    iput v8, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 3838
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3841
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 3842
    const/16 v5, 0x1403

    .line 3845
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 3846
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 3848
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3849
    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-ne v1, v7, :cond_4

    .line 3854
    if-lt v0, v7, :cond_3

    .line 3855
    const/4 v0, 0x5

    const v1, 0x7f0a0012

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3856
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3857
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3859
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v0

    .line 3860
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3861
    const/4 v1, 0x7

    const v2, 0x7f0a0014

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 3862
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3863
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3864
    const/16 v2, 0x65

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3867
    :cond_1
    if-lt v0, v7, :cond_2

    .line 3868
    const/16 v0, 0x8

    const v1, 0x7f0a0015

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3869
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3870
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3873
    :cond_2
    const v0, 0x7f0a0013

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3874
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3875
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3876
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3921
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3922
    return-void

    .line 3880
    :cond_3
    const v0, 0x7f0a0013

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3881
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3882
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3883
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0

    .line 3890
    :cond_4
    if-lt v0, v7, :cond_6

    .line 3891
    const/4 v0, 0x5

    const v1, 0x7f0a0012

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3892
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3893
    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3895
    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->getEventAccessLevel(Landroid/content/Context;Lcom/android/calendar/Event;)I

    move-result v0

    .line 3896
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3897
    const/4 v1, 0x7

    const v2, 0x7f0a0014

    invoke-interface {p1, v6, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 3898
    iget-object v2, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3899
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3900
    const/16 v2, 0x65

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3903
    :cond_5
    if-lt v0, v7, :cond_6

    .line 3904
    const/16 v0, 0x8

    const v1, 0x7f0a0015

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3905
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3906
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3910
    :cond_6
    const v0, 0x7f0a0013

    invoke-interface {p1, v6, v9, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3911
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3912
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3913
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3915
    const v0, 0x7f0a000d

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3916
    iget-object v1, p0, Lcom/android/calendar/DayView;->mContextMenuHandler:Lcom/android/calendar/DayView$ContextMenuHandler;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3917
    const v1, 0x108003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3918
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 4282
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 4283
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4284
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 1877
    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    if-eqz v4, :cond_0

    .line 1878
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getHeight()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1879
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 1881
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1883
    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    neg-int v4, v4

    sget v5, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 1885
    .local v3, yTranslate:F
    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1887
    iget-object v0, p0, Lcom/android/calendar/DayView;->mDestRect:Landroid/graphics/Rect;

    .line 1888
    .local v0, dest:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/calendar/DayView;->mFirstCell:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1889
    iget v4, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1890
    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1891
    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1892
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1893
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1895
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->doDraw(Landroid/graphics/Canvas;)V

    .line 1897
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1899
    iget v4, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_3

    .line 1901
    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v4, :cond_2

    .line 1902
    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v2, v4

    .line 1909
    .local v2, xTranslate:F
    :goto_0
    neg-float v4, v3

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1910
    iget-object v4, p0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/DayView;

    .line 1913
    .local v1, nextView:Lcom/android/calendar/DayView;
    iput v6, v1, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 1915
    invoke-virtual {v1, p1}, Lcom/android/calendar/DayView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1917
    neg-float v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1926
    .end local v1           #nextView:Lcom/android/calendar/DayView;
    .end local v2           #xTranslate:F
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 1927
    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    if-eqz v4, :cond_1

    .line 1928
    invoke-direct {p0}, Lcom/android/calendar/DayView;->updateEventDetails()V

    .line 1929
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 1931
    :cond_1
    iput-boolean v6, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1932
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1933
    return-void

    .line 1904
    :cond_2
    iget v4, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    neg-int v4, v4

    int-to-float v2, v4

    .restart local v2       #xTranslate:F
    goto :goto_0

    .line 1922
    .end local v2           #xTranslate:F
    :cond_3
    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v4, v4

    neg-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 23
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionMode:I

    move v3, v0

    if-nez v3, :cond_2

    .line 1301
    const/16 v3, 0x42

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x16

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x15

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x13

    move/from16 v0, p1

    move v1, v3

    if-eq v0, v1, :cond_0

    const/16 v3, 0x14

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_1

    .line 1306
    :cond_0
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1308
    const/4 v3, 0x1

    .line 1442
    :goto_0
    return v3

    .line 1309
    :cond_1
    const/16 v3, 0x17

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 1312
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1314
    const/4 v3, 0x1

    goto :goto_0

    .line 1318
    :cond_2
    const/4 v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1319
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1321
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move/from16 v21, v0

    .line 1323
    .local v21, selectionDay:I
    sparse-switch p1, :sswitch_data_0

    .line 1404
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 1326
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object/from16 v20, v0

    .line 1327
    .local v20, selectedEvent:Lcom/android/calendar/Event;
    if-nez v20, :cond_3

    .line 1328
    const/4 v3, 0x0

    goto :goto_0

    .line 1330
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mPopup:Landroid/widget/PopupWindow;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1331
    const-wide/16 v10, -0x1

    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1333
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide v4, v0

    .line 1334
    .local v4, begin:J
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide v6, v0

    .line 1335
    .local v6, end:J
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide v8, v0

    .line 1336
    .local v8, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    move-object v3, v0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 1337
    const/4 v3, 0x1

    goto :goto_0

    .line 1339
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v8           #id:J
    .end local v20           #selectedEvent:Lcom/android/calendar/Event;
    :sswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->switchViews(Z)V

    .line 1340
    const/4 v3, 0x1

    goto :goto_0

    .line 1342
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1344
    const/4 v3, 0x1

    goto :goto_0

    .line 1346
    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 1348
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_5

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/Event;->nextLeft:Lcom/android/calendar/Event;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1351
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-nez v3, :cond_6

    .line 1352
    const-wide/16 v10, -0x1

    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1353
    add-int/lit8 v21, v21, -0x1

    .line 1355
    :cond_6
    const/16 v19, 0x1

    .line 1407
    .local v19, redraw:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mLastJulianDay:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    if-le v0, v1, :cond_10

    .line 1408
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/calendar/DayView;

    .line 1409
    .local v22, view:Lcom/android/calendar/DayView;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object v14, v0

    .line 1410
    .local v14, date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object v3, v0

    invoke-virtual {v14, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mFirstJulianDay:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    if-ge v0, v1, :cond_f

    .line 1412
    iget v3, v14, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v4, v0

    sub-int/2addr v3, v4

    iput v3, v14, Landroid/text/format/Time;->monthDay:I

    .line 1416
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1417
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 1419
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/calendar/DayView;->initView(Lcom/android/calendar/DayView;)V

    .line 1421
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v14}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1422
    .local v6, end:Landroid/text/format/Time;
    iget v3, v6, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v6, Landroid/text/format/Time;->monthDay:I

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v10, v0

    const-wide/16 v12, 0x20

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object v15, v6

    invoke-virtual/range {v10 .. v18}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1424
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1359
    .end local v6           #end:Landroid/text/format/Time;
    .end local v14           #date:Landroid/text/format/Time;
    .end local v19           #redraw:Z
    .end local v22           #view:Lcom/android/calendar/DayView;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/Event;->nextRight:Lcom/android/calendar/Event;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1362
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-nez v3, :cond_9

    .line 1363
    const-wide/16 v10, -0x1

    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1364
    add-int/lit8 v21, v21, 0x1

    .line 1366
    :cond_9
    const/16 v19, 0x1

    .line 1367
    .restart local v19       #redraw:Z
    goto/16 :goto_1

    .line 1370
    .end local v19           #redraw:Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_a

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/Event;->nextUp:Lcom/android/calendar/Event;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1373
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-nez v3, :cond_b

    .line 1374
    const-wide/16 v10, -0x1

    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1375
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v3, v0

    if-nez v3, :cond_b

    .line 1376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1377
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1379
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1382
    :cond_b
    const/16 v19, 0x1

    .line 1383
    .restart local v19       #redraw:Z
    goto/16 :goto_1

    .line 1386
    .end local v19           #redraw:Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-eqz v3, :cond_c

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/Event;->nextDown:Lcom/android/calendar/Event;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1389
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    move-object v3, v0

    if-nez v3, :cond_d

    .line 1390
    const-wide/16 v10, -0x1

    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/DayView;->mLastPopupEventID:J

    .line 1391
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    move v3, v0

    if-eqz v3, :cond_e

    .line 1392
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DayView;->mSelectionAllday:Z

    .line 1400
    :cond_d
    :goto_3
    const/16 v19, 0x1

    .line 1401
    .restart local v19       #redraw:Z
    goto/16 :goto_1

    .line 1394
    .end local v19           #redraw:Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 1395
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/DayView;->adjustHourSelection()V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1397
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    goto :goto_3

    .line 1414
    .restart local v14       #date:Landroid/text/format/Time;
    .restart local v19       #redraw:Z
    .restart local v22       #view:Lcom/android/calendar/DayView;
    :cond_f
    iget v3, v14, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mNumDays:I

    move v4, v0

    add-int/2addr v3, v4

    iput v3, v14, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_2

    .line 1426
    .end local v14           #date:Landroid/text/format/Time;
    .end local v22           #view:Lcom/android/calendar/DayView;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionDay:I

    move v3, v0

    move v0, v3

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    .line 1427
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    move-object v3, v0

    invoke-direct {v14, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1428
    .restart local v14       #date:Landroid/text/format/Time;
    move-object v0, v14

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1429
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/DayView;->mSelectionHour:I

    move v3, v0

    iput v3, v14, Landroid/text/format/Time;->hour:I

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    move-object v10, v0

    const-wide/16 v12, 0x20

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object v15, v14

    invoke-virtual/range {v10 .. v18}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1432
    .end local v14           #date:Landroid/text/format/Time;
    :cond_11
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1434
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 1435
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/DayView;->mUpdateToast:Z

    .line 1437
    if-eqz v19, :cond_12

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1439
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1442
    :cond_12
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 1323
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1258
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 1259
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1261
    .local v0, duration:J
    packed-switch p1, :pswitch_data_0

    .line 1295
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1263
    :pswitch_0
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-eqz v2, :cond_0

    .line 1268
    iget v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    if-ne v2, v6, :cond_1

    .line 1273
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1274
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    goto :goto_0

    .line 1279
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1280
    invoke-direct {p0, v6}, Lcom/android/calendar/DayView;->switchViews(Z)V

    goto :goto_0

    .line 1282
    :cond_2
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 1283
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 1284
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->performLongClick()Z

    goto :goto_0

    .line 1261
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .parameter "v"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v10, -0x1

    .line 4354
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x1

    invoke-virtual {p0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-object v1, p0

    move v11, v10

    move-wide v12, v4

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 4356
    const/4 v0, 0x1

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 3693
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 3695
    iget v1, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 3697
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->mMinCellHeight:I

    if-ge v1, v2, :cond_3

    .line 3700
    sget v1, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 3701
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 3702
    sget v0, Lcom/android/calendar/DayView;->mMinCellHeight:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 3709
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sub-int/2addr v0, v1

    .line 3710
    iget v1, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3711
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x18

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 3713
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 3714
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 3715
    sget-object v2, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mGestureCenterHour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tViewStartHour: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tmViewStartY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\tmCellHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " SpanY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    :cond_1
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    if-gez v1, :cond_4

    .line 3721
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3722
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 3729
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 3731
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3732
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3733
    return v5

    .line 3703
    :cond_3
    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    sget v2, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    if-le v1, v2, :cond_0

    .line 3704
    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 3705
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    sput v0, Lcom/android/calendar/DayView;->mCellHeight:I

    .line 3706
    sget v0, Lcom/android/calendar/DayView;->MAX_CELL_HEIGHT:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    goto/16 :goto_0

    .line 3724
    :cond_4
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v1, v2, :cond_2

    .line 3725
    iget v1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    iput v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 3726
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 4
    .parameter

    .prologue
    .line 3674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 3675
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3676
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    .line 3678
    sget v0, Lcom/android/calendar/DayView;->MIN_Y_SPAN:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 3679
    sget v0, Lcom/android/calendar/DayView;->mCellHeight:I

    iput v0, p0, Lcom/android/calendar/DayView;->mCellHeightBeforeScaleGesture:I

    .line 3681
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3682
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    int-to-float v0, v0

    sget v1, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3683
    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGestureCenterHour:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/calendar/DayView;->mGestureCenterHour:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\tViewStartHour: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tmViewStartY:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tmCellHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/calendar/DayView;->mCellHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 3738
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    iput v0, p0, Lcom/android/calendar/DayView;->mScrollStartY:I

    .line 3739
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollY:F

    .line 3740
    iput v1, p0, Lcom/android/calendar/DayView;->mInitialScrollX:F

    .line 3741
    iput v1, p0, Lcom/android/calendar/DayView;->mStartingSpanY:F

    .line 3742
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1025
    iput p1, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    .line 1026
    iput p2, p0, Lcom/android/calendar/DayView;->mViewHeight:I

    .line 1027
    iget v2, p0, Lcom/android/calendar/DayView;->mHoursWidth:I

    sub-int v0, p1, v2

    .line 1028
    .local v0, gridAreaWidth:I
    iget v2, p0, Lcom/android/calendar/DayView;->mNumDays:I

    mul-int/lit8 v2, v2, 0x1

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/calendar/DayView;->mNumDays:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/android/calendar/DayView;->mCellWidth:I

    .line 1031
    div-int/lit8 v2, p1, 0x7

    sput v2, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    .line 1033
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1034
    .local v1, p:Landroid/graphics/Paint;
    sget v2, Lcom/android/calendar/DayView;->HOURS_FONT_SIZE:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1035
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/calendar/DayView;->mHoursTextHeight:I

    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/DayView;->remeasure(II)V

    .line 1037
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3746
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3748
    iget v1, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_0

    .line 3749
    iget-object v1, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3750
    iget-object v1, p0, Lcom/android/calendar/DayView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    .line 3826
    :goto_0
    return v0

    .line 3755
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 3822
    sget-boolean v1, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not MotionEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    .line 3824
    goto :goto_0

    .line 3757
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 3758
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    :cond_2
    iget v0, p0, Lcom/android/calendar/DayView;->mAlldayHeight:I

    sget v1, Lcom/android/calendar/DayView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/calendar/DayView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v0, v1

    .line 3760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_3

    .line 3761
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    .line 3765
    :goto_1
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    .line 3766
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v4

    .line 3767
    goto :goto_0

    .line 3763
    :cond_3
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mTouchStartedInAlldayArea:Z

    goto :goto_1

    .line 3770
    :pswitch_1
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v4

    .line 3772
    goto :goto_0

    .line 3775
    :pswitch_2
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    :cond_5
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mStartingScroll:Z

    .line 3777
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3778
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    if-nez v0, :cond_6

    .line 3779
    iput-boolean v4, p0, Lcom/android/calendar/DayView;->mHandleActionUp:Z

    move v0, v4

    .line 3780
    goto/16 :goto_0

    .line 3782
    :cond_6
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mOnFlingCalled:Z

    if-eqz v0, :cond_7

    move v0, v4

    .line 3783
    goto/16 :goto_0

    .line 3785
    :cond_7
    iget v0, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_c

    .line 3786
    iput v5, p0, Lcom/android/calendar/DayView;->mTouchMode:I

    .line 3787
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/android/calendar/DayView;->mHorizontalSnapBackThreshold:I

    if-le v0, v1, :cond_a

    .line 3789
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "- horizontal scroll: switch views"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    :cond_8
    iget v0, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    if-lez v0, :cond_9

    move v0, v4

    :goto_2
    iget v1, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/calendar/DayView;->mViewWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/DayView;->switchViews(ZFFF)Landroid/view/View;

    .line 3791
    iput v5, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    move v0, v4

    .line 3792
    goto/16 :goto_0

    :cond_9
    move v0, v5

    .line 3790
    goto :goto_2

    .line 3797
    :cond_a
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "- horizontal scroll: snap back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    :cond_b
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 3799
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3800
    iput v5, p0, Lcom/android/calendar/DayView;->mViewStartX:I

    .line 3806
    :cond_c
    iget-boolean v0, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    if-eqz v0, :cond_d

    .line 3807
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 3808
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    .line 3809
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    :cond_d
    move v0, v4

    .line 3811
    goto/16 :goto_0

    .line 3815
    :pswitch_3
    sget-boolean v0, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    const-string v1, "ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/DayView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3817
    iput-boolean v5, p0, Lcom/android/calendar/DayView;->mScrolling:Z

    .line 3818
    invoke-direct {p0}, Lcom/android/calendar/DayView;->resetSelectedHour()V

    move v0, v4

    .line 3819
    goto/16 :goto_0

    .line 3826
    :cond_f
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 3755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method reloadEvents()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1745
    iget-object v0, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1747
    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 1748
    iput-object v1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 1749
    iget-object v0, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1752
    new-instance v7, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/DayView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1753
    .local v7, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1754
    iput v5, v7, Landroid/text/format/Time;->hour:I

    .line 1755
    iput v5, v7, Landroid/text/format/Time;->minute:I

    .line 1756
    iput v5, v7, Landroid/text/format/Time;->second:I

    .line 1757
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 1760
    .local v3, millis:J
    iget-wide v0, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    .line 1806
    :goto_0
    return-void

    .line 1763
    :cond_0
    iput-wide v3, p0, Lcom/android/calendar/DayView;->mLastReloadMillis:J

    .line 1767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1768
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/DayView;->mEventLoader:Lcom/android/calendar/EventLoader;

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    new-instance v5, Lcom/android/calendar/DayView$5;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/DayView$5;-><init>(Lcom/android/calendar/DayView;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/calendar/DayView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public restartCurrentTimeUpdates()V
    .locals 1

    .prologue
    .line 4277
    iget-object v0, p0, Lcom/android/calendar/DayView;->mUpdateCurrentTime:Lcom/android/calendar/DayView$UpdateCurrentTime;

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayView;->post(Ljava/lang/Runnable;)Z

    .line 4278
    return-void
.end method

.method public setAnimateDayEventHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 3450
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayEventHeight:I

    .line 3451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3452
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3453
    return-void
.end method

.method public setAnimateDayHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 3443
    iput p1, p0, Lcom/android/calendar/DayView;->mAnimateDayHeight:I

    .line 3444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 3445
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3446
    return-void
.end method

.method setFirstVisibleHour(I)V
    .locals 1
    .parameter "firstHour"

    .prologue
    .line 816
    iput p1, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    .line 817
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    .line 818
    return-void
.end method

.method public setMoreAllDayEventsTextAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 3437
    sput p1, Lcom/android/calendar/DayView;->mMoreAlldayEventsTextAlpha:I

    .line 3438
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 3439
    return-void
.end method

.method public setSelected(Landroid/text/format/Time;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x2

    const/high16 v9, -0x8000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 821
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 822
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionHour:I

    .line 823
    iput-object v1, p0, Lcom/android/calendar/DayView;->mSelectedEvent:Lcom/android/calendar/Event;

    .line 824
    iput-object v1, p0, Lcom/android/calendar/DayView;->mPrevSelectedEvent:Lcom/android/calendar/Event;

    .line 825
    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 826
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/DayView;->mSelectionDay:I

    .line 827
    iget-object v2, p0, Lcom/android/calendar/DayView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 828
    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mComputeSelectedEvents:Z

    .line 832
    if-nez p2, :cond_9

    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9

    .line 835
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    if-ge v2, v3, :cond_3

    .line 837
    iget-object v2, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    move v3, v2

    move v2, v7

    .line 853
    :goto_0
    sget-boolean v4, Lcom/android/calendar/DayView;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 854
    sget-object v4, Lcom/android/calendar/DayView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Go "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " 1st "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "CH "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " lh "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " gh "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ymax "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_0
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le v3, v2, :cond_4

    .line 860
    iget v2, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 866
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/DayView;->recalc()V

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 870
    const-wide/16 v5, 0x2710

    sub-long v5, v3, v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_5

    cmp-long v0, v0, v3

    if-gez v0, :cond_5

    move v0, v8

    .line 871
    :goto_2
    if-nez v0, :cond_1

    if-eqz p2, :cond_6

    :cond_1
    move v0, v7

    :goto_3
    iput v0, p0, Lcom/android/calendar/DayView;->mSelectionMode:I

    .line 872
    iput-boolean v8, p0, Lcom/android/calendar/DayView;->mRemeasure:Z

    .line 873
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 875
    if-eq v2, v9, :cond_2

    .line 876
    new-instance v0, Lcom/android/calendar/DayView$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView$3;-><init>(Lcom/android/calendar/DayView;)V

    .line 886
    new-array v1, v10, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v7

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 892
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 893
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 894
    iget-object v1, p0, Lcom/android/calendar/DayView;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 897
    :cond_2
    return-void

    .line 839
    :cond_3
    iget v2, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHourOffset:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    div-int/2addr v2, v3

    iget v3, p0, Lcom/android/calendar/DayView;->mFirstHour:I

    add-int/2addr v2, v3

    .line 842
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    if-lt v3, v2, :cond_8

    .line 848
    iget-object v3, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    int-to-float v4, v4

    const/high16 v5, 0x4270

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sget v4, Lcom/android/calendar/DayView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/android/calendar/DayView;->mGridAreaHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    goto/16 :goto_0

    .line 861
    :cond_4
    if-gez v3, :cond_7

    if-eq v3, v9, :cond_7

    move v2, v7

    .line 862
    goto/16 :goto_1

    :cond_5
    move v0, v7

    .line 870
    goto :goto_2

    :cond_6
    move v0, v10

    .line 871
    goto :goto_3

    :cond_7
    move v2, v3

    goto/16 :goto_1

    :cond_8
    move v3, v9

    goto/16 :goto_0

    :cond_9
    move v2, v9

    goto/16 :goto_1
.end method

.method public setViewStartY(I)V
    .locals 1
    .parameter "viewStartY"

    .prologue
    .line 900
    iget v0, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    if-le p1, v0, :cond_0

    .line 901
    iget p1, p0, Lcom/android/calendar/DayView;->mMaxViewStartY:I

    .line 904
    :cond_0
    iput p1, p0, Lcom/android/calendar/DayView;->mViewStartY:I

    .line 906
    invoke-direct {p0}, Lcom/android/calendar/DayView;->computeFirstHour()V

    .line 907
    invoke-virtual {p0}, Lcom/android/calendar/DayView;->invalidate()V

    .line 908
    return-void
.end method

.method public updateTitle()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 923
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 924
    .local v4, start:Landroid/text/format/Time;
    invoke-virtual {v4, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 925
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 926
    .local v5, end:Landroid/text/format/Time;
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, p0, Lcom/android/calendar/DayView;->mNumDays:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 928
    iget v0, v5, Landroid/text/format/Time;->minute:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v5, Landroid/text/format/Time;->minute:I

    .line 929
    invoke-virtual {v5, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 931
    const-wide/16 v10, 0x14

    .line 932
    .local v10, formatFlags:J
    iget v0, p0, Lcom/android/calendar/DayView;->mNumDays:I

    if-eq v0, v2, :cond_0

    .line 934
    const-wide/16 v0, 0x20

    or-long/2addr v10, v0

    .line 937
    iget v0, v4, Landroid/text/format/Time;->month:I

    iget v1, v5, Landroid/text/format/Time;->month:I

    if-eq v0, v1, :cond_0

    .line 938
    const-wide/32 v0, 0x10000

    or-long/2addr v10, v0

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v12, v6

    move-object v13, v6

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 944
    return-void
.end method
