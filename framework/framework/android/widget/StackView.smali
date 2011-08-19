.class public Landroid/widget/StackView;
.super Landroid/widget/AdapterViewAnimator;
.source "StackView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/StackView$HolographicHelper;,
        Landroid/widget/StackView$LayoutParams;,
        Landroid/widget/StackView$StackSlider;,
        Landroid/widget/StackView$StackFrame;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0x190

.field private static final FADE_IN_ANIMATION_DURATION:I = 0x320

.field private static final FRAME_PADDING:I = 0x4

.field private static final GESTURE_NONE:I = 0x0

.field private static final GESTURE_SLIDE_DOWN:I = 0x2

.field private static final GESTURE_SLIDE_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static final ITEMS_SLIDE_DOWN:I = 0x1

.field private static final ITEMS_SLIDE_UP:I = 0x0

.field private static final MINIMUM_ANIMATION_DURATION:I = 0x32

.field private static final MIN_TIME_BETWEEN_INTERACTION_AND_AUTOADVANCE:I = 0x1388

.field private static MIN_TIME_BETWEEN_SCROLLS:J = 0x0L

.field private static final NUM_ACTIVE_VIEWS:I = 0x5

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.0f

.field private static final PERSPECTIVE_SHIFT_FACTOR_X:F = 0.1f

.field private static final PERSPECTIVE_SHIFT_FACTOR_Y:F = 0.1f

.field private static final SLIDE_UP_RATIO:F = 0.7f

.field private static final STACK_RELAYOUT_DURATION:I = 0x64

.field private static final SWIPE_THRESHOLD_RATIO:F = 0.2f

.field private static sHolographicHelper:Landroid/widget/StackView$HolographicHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mClickFeedback:Landroid/widget/ImageView;

.field private mClickFeedbackIsValid:Z

.field private mFirstLayoutHappened:Z

.field private mFramePadding:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mInitialX:F

.field private mInitialY:F

.field private mLastInteractionTime:J

.field private mLastScrollTime:J

.field private mMaximumVelocity:I

.field private mNewPerspectiveShiftX:F

.field private mNewPerspectiveShiftY:F

.field private mPerspectiveShiftX:F

.field private mPerspectiveShiftY:F

.field private mSlideAmount:I

.field private mStackMode:I

.field private mStackSlider:Landroid/widget/StackView$StackSlider;

.field private mSwipeGestureType:I

.field private mSwipeThreshold:I

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTransitionIsSetup:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mYVelocity:I

.field private final stackInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 118
    const-wide/16 v0, 0x64

    sput-wide v0, Landroid/widget/StackView;->MIN_TIME_BETWEEN_SCROLLS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, "StackView"

    iput-object v0, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    .line 127
    iput v1, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 128
    iput v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 134
    iput-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 139
    iput-boolean v1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 141
    iput-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 150
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string v0, "StackView"

    iput-object v0, p0, Landroid/widget/StackView;->TAG:Ljava/lang/String;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    .line 127
    iput v1, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 128
    iput v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 134
    iput-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 139
    iput-boolean v1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 141
    iput-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    .line 155
    invoke-direct {p0}, Landroid/widget/StackView;->initStackView()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Landroid/widget/StackView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/StackView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/StackView;->mStackMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/StackView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    return v0
.end method

.method private beginGestureIfNeeded(F)V
    .registers 14
    .parameter "deltaY"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 659
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    if-le v7, v8, :cond_20

    iget v7, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v7, :cond_20

    .line 660
    const/4 v7, 0x0

    cmpg-float v7, p1, v7

    if-gez v7, :cond_21

    move v5, v9

    .line 661
    .local v5, swipeGestureType:I
    :goto_16
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelLongPress()V

    .line 662
    invoke-virtual {p0, v9}, Landroid/widget/StackView;->requestDisallowInterceptTouchEvent(Z)V

    .line 664
    iget-object v7, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v7, :cond_23

    .line 704
    .end local v5           #swipeGestureType:I
    :cond_20
    :goto_20
    return-void

    :cond_21
    move v5, v11

    .line 660
    goto :goto_16

    .line 665
    .restart local v5       #swipeGestureType:I
    :cond_23
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v1

    .line 668
    .local v1, adapterCount:I
    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v7, :cond_73

    .line 669
    if-ne v5, v11, :cond_71

    move v0, v10

    .line 674
    .local v0, activeIndex:I
    :goto_2e
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_79

    if-ne v1, v9, :cond_79

    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v7, :cond_3a

    if-eq v5, v9, :cond_40

    :cond_3a
    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v7, v9, :cond_79

    if-ne v5, v11, :cond_79

    :cond_40
    move v3, v9

    .line 677
    .local v3, endOfStack:Z
    :goto_41
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_7b

    if-ne v1, v9, :cond_7b

    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v7, v9, :cond_4d

    if-eq v5, v9, :cond_53

    :cond_4d
    iget v7, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v7, :cond_7b

    if-ne v5, v11, :cond_7b

    :cond_53
    move v2, v9

    .line 682
    .local v2, beginningOfStack:Z
    :goto_54
    iget-boolean v7, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-eqz v7, :cond_7d

    if-nez v2, :cond_7d

    if-nez v3, :cond_7d

    .line 683
    const/4 v4, 0x0

    .line 693
    .local v4, stackMode:I
    :goto_5d
    if-nez v4, :cond_96

    move v7, v9

    :goto_60
    iput-boolean v7, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 695
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 696
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_20

    .line 698
    invoke-direct {p0, v6, v4}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 701
    iput v5, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 702
    invoke-virtual {p0}, Landroid/widget/StackView;->cancelHandleClick()V

    goto :goto_20

    .end local v0           #activeIndex:I
    .end local v2           #beginningOfStack:Z
    .end local v3           #endOfStack:Z
    .end local v4           #stackMode:I
    .end local v6           #v:Landroid/view/View;
    :cond_71
    move v0, v9

    .line 669
    goto :goto_2e

    .line 671
    :cond_73
    if-ne v5, v11, :cond_77

    move v0, v9

    .restart local v0       #activeIndex:I
    :goto_76
    goto :goto_2e

    .end local v0           #activeIndex:I
    :cond_77
    move v0, v10

    goto :goto_76

    .restart local v0       #activeIndex:I
    :cond_79
    move v3, v10

    .line 674
    goto :goto_41

    .restart local v3       #endOfStack:Z
    :cond_7b
    move v2, v10

    .line 677
    goto :goto_54

    .line 684
    .restart local v2       #beginningOfStack:Z
    :cond_7d
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v0

    const/4 v8, -0x1

    if-eq v7, v8, :cond_85

    if-eqz v2, :cond_89

    .line 685
    :cond_85
    add-int/lit8 v0, v0, 0x1

    .line 686
    const/4 v4, 0x1

    .restart local v4       #stackMode:I
    goto :goto_5d

    .line 687
    .end local v4           #stackMode:I
    :cond_89
    iget v7, p0, Landroid/widget/StackView;->mCurrentWindowStartUnbounded:I

    add-int/2addr v7, v0

    sub-int v8, v1, v9

    if-eq v7, v8, :cond_92

    if-eqz v3, :cond_94

    .line 688
    :cond_92
    const/4 v4, 0x2

    .restart local v4       #stackMode:I
    goto :goto_5d

    .line 690
    .end local v4           #stackMode:I
    :cond_94
    const/4 v4, 0x0

    .restart local v4       #stackMode:I
    goto :goto_5d

    :cond_96
    move v7, v10

    .line 693
    goto :goto_60
.end method

.method private handlePointerUp(Landroid/view/MotionEvent;)V
    .registers 15
    .parameter "ev"

    .prologue
    .line 812
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 813
    .local v6, pointerIndex:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 814
    .local v4, newY:F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v9, v4, v9

    float-to-int v1, v9

    .line 815
    .local v1, deltaY:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    .line 817
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_2e

    .line 818
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 819
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/StackView;->mYVelocity:I

    .line 822
    :cond_2e
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_3a

    .line 823
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 824
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 827
    :cond_3a
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    if-le v1, v9, :cond_63

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_63

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_63

    .line 831
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 834
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_5f

    .line 835
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 839
    :goto_53
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    .line 892
    :cond_58
    :goto_58
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 893
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 894
    return-void

    .line 837
    :cond_5f
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_53

    .line 840
    :cond_63
    iget v9, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    neg-int v9, v9

    if-ge v1, v9, :cond_87

    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_87

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-nez v9, :cond_87

    .line 844
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    .line 847
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-nez v9, :cond_83

    .line 848
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    .line 853
    :goto_7d
    iget-object v9, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->bringToFront()V

    goto :goto_58

    .line 850
    :cond_83
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    goto :goto_7d

    .line 854
    :cond_87
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f4

    .line 857
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e6

    const/high16 v9, 0x3f80

    move v3, v9

    .line 858
    .local v3, finalYProgress:F
    :goto_94
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    if-eqz v9, :cond_9e

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_e9

    .line 859
    :cond_9e
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 864
    .local v2, duration:I
    :goto_a8
    new-instance v0, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 865
    .local v0, animationSlider:Landroid/widget/StackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 866
    .local v8, snapBackY:Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 867
    .local v7, snapBackX:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 869
    .local v5, pa:Landroid/animation/ObjectAnimator;
    int-to-long v9, v2

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 870
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 871
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_58

    .line 857
    .end local v0           #animationSlider:Landroid/widget/StackView$StackSlider;
    .end local v2           #duration:I
    .end local v3           #finalYProgress:F
    .end local v5           #pa:Landroid/animation/ObjectAnimator;
    .end local v7           #snapBackX:Landroid/animation/PropertyValuesHolder;
    .end local v8           #snapBackY:Landroid/animation/PropertyValuesHolder;
    :cond_e6
    const/4 v9, 0x0

    move v3, v9

    goto :goto_94

    .line 861
    .restart local v3       #finalYProgress:F
    :cond_e9
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2       #duration:I
    goto :goto_a8

    .line 872
    .end local v2           #duration:I
    .end local v3           #finalYProgress:F
    :cond_f4
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_58

    .line 874
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14b

    const/4 v9, 0x0

    move v3, v9

    .line 876
    .restart local v3       #finalYProgress:F
    :goto_100
    iget v9, p0, Landroid/widget/StackView;->mStackMode:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10b

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    iget v9, v9, Landroid/widget/StackView$StackSlider;->mMode:I

    if-eqz v9, :cond_14f

    .line 877
    :cond_10b
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 882
    .restart local v2       #duration:I
    :goto_115
    new-instance v0, Landroid/widget/StackView$StackSlider;

    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-direct {v0, p0, v9}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 883
    .restart local v0       #animationSlider:Landroid/widget/StackView$StackSlider;
    const-string v9, "YProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v3, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 885
    .restart local v8       #snapBackY:Landroid/animation/PropertyValuesHolder;
    const-string v9, "XProgress"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 886
    .restart local v7       #snapBackX:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 888
    .restart local v5       #pa:Landroid/animation/ObjectAnimator;
    int-to-long v9, v2

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 889
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_58

    .line 874
    .end local v0           #animationSlider:Landroid/widget/StackView$StackSlider;
    .end local v2           #duration:I
    .end local v3           #finalYProgress:F
    .end local v5           #pa:Landroid/animation/ObjectAnimator;
    .end local v7           #snapBackX:Landroid/animation/PropertyValuesHolder;
    .end local v8           #snapBackY:Landroid/animation/PropertyValuesHolder;
    :cond_14b
    const/high16 v9, 0x3f80

    move v3, v9

    goto :goto_100

    .line 879
    .restart local v3       #finalYProgress:F
    :cond_14f
    iget-object v9, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v9}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .restart local v2       #duration:I
    goto :goto_115
.end method

.method private initStackView()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 159
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v6}, Landroid/widget/StackView;->configureViewAnimator(II)V

    .line 160
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->setStaticTransformationsEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 162
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mTouchSlop:I

    .line 163
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/widget/StackView;->mMaximumVelocity:I

    .line 164
    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 166
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    .line 167
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object v2, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 170
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/StackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    .line 171
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/StackView$LayoutParams;

    iget-object v4, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-direct {v3, p0, v4}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    invoke-virtual {p0, v2, v5, v3}, Landroid/widget/StackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 173
    iget-object v2, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    new-instance v2, Landroid/widget/StackView$StackSlider;

    invoke-direct {v2, p0}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;)V

    iput-object v2, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    .line 177
    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    if-nez v2, :cond_80

    .line 178
    new-instance v2, Landroid/widget/StackView$HolographicHelper;

    iget-object v3, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/StackView$HolographicHelper;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    .line 180
    :cond_80
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setClipChildren(Z)V

    .line 181
    invoke-virtual {p0, v7}, Landroid/widget/StackView;->setClipToPadding(Z)V

    .line 186
    iput v6, p0, Landroid/widget/StackView;->mStackMode:I

    .line 189
    iput v5, p0, Landroid/widget/StackView;->mWhichChild:I

    .line 193
    iget-object v2, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 194
    .local v1, density:F
    const/high16 v2, 0x4080

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/StackView;->mFramePadding:I

    .line 195
    return-void
.end method

.method private measureChildren()V
    .registers 14

    .prologue
    .line 1134
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v5

    .line 1136
    .local v5, count:I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v10

    .line 1137
    .local v10, measuredWidth:I
    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v9

    .line 1139
    .local v9, measuredHeight:I
    int-to-float v11, v10

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/StackView;->mPaddingLeft:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/StackView;->mPaddingRight:I

    sub-int v4, v11, v12

    .line 1141
    .local v4, childWidth:I
    int-to-float v11, v9

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v12, p0, Landroid/widget/StackView;->mPaddingTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/StackView;->mPaddingBottom:I

    sub-int v1, v11, v12

    .line 1144
    .local v1, childHeight:I
    const/4 v8, 0x0

    .line 1145
    .local v8, maxWidth:I
    const/4 v7, 0x0

    .line 1147
    .local v7, maxHeight:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2f
    if-ge v6, v5, :cond_5d

    .line 1148
    invoke-virtual {p0, v6}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1149
    .local v0, child:Landroid/view/View;
    const/high16 v11, -0x8000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/high16 v12, -0x8000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1152
    iget-object v11, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_5a

    iget-object v11, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    if-eq v0, v11, :cond_5a

    .line 1153
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1154
    .local v3, childMeasuredWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1155
    .local v2, childMeasuredHeight:I
    if-le v3, v8, :cond_57

    .line 1156
    move v8, v3

    .line 1158
    :cond_57
    if-le v2, v7, :cond_5a

    .line 1159
    move v7, v2

    .line 1147
    .end local v2           #childMeasuredHeight:I
    .end local v3           #childMeasuredWidth:I
    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1164
    .end local v0           #child:Landroid/view/View;
    :cond_5d
    const v11, 0x3dcccccd

    int-to-float v12, v10

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1165
    const v11, 0x3dcccccd

    int-to-float v12, v9

    mul-float/2addr v11, v12

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1168
    if-lez v8, :cond_76

    if-lez v5, :cond_76

    if-ge v8, v4, :cond_76

    .line 1169
    sub-int v11, v10, v8

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    .line 1172
    :cond_76
    if-lez v7, :cond_81

    if-lez v5, :cond_81

    if-ge v7, v1, :cond_81

    .line 1173
    sub-int v11, v9, v7

    int-to-float v11, v11

    iput v11, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    .line 1175
    :cond_81
    return-void
.end method

.method private onLayout()V
    .registers 4

    .prologue
    .line 564
    iget-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    if-nez v1, :cond_a

    .line 565
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/StackView;->mFirstLayoutHappened:Z

    .line 566
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 569
    :cond_a
    const v1, 0x3f333333

    invoke-virtual {p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 570
    .local v0, newSlideAmount:I
    iget v1, p0, Landroid/widget/StackView;->mSlideAmount:I

    if-eq v1, v0, :cond_28

    .line 571
    iput v0, p0, Landroid/widget/StackView;->mSlideAmount:I

    .line 572
    const v1, 0x3e4ccccd

    int-to-float v2, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/StackView;->mSwipeThreshold:I

    .line 575
    :cond_28
    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3c

    iget v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    iget v2, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_47

    .line 578
    :cond_3c
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftY:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    .line 579
    iget v1, p0, Landroid/widget/StackView;->mNewPerspectiveShiftX:F

    iput v1, p0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    .line 580
    invoke-direct {p0}, Landroid/widget/StackView;->updateChildTransforms()V

    .line 582
    :cond_47
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 16
    .parameter "ev"

    .prologue
    .line 768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 769
    .local v0, activePointerIndex:I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 770
    .local v5, pointerId:I
    iget v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v5, v9, :cond_19

    .line 772
    iget v9, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1a

    const/4 v9, 0x0

    move v1, v9

    .line 774
    .local v1, activeViewIndex:I
    :goto_13
    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v6

    .line 775
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_1d

    .line 809
    .end local v1           #activeViewIndex:I
    .end local v6           #v:Landroid/view/View;
    :cond_19
    :goto_19
    return-void

    .line 772
    :cond_1a
    const/4 v9, 0x1

    move v1, v9

    goto :goto_13

    .line 781
    .restart local v1       #activeViewIndex:I
    .restart local v6       #v:Landroid/view/View;
    :cond_1d
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-ge v2, v9, :cond_7c

    .line 782
    if-eq v2, v0, :cond_79

    .line 784
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 785
    .local v7, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 787
    .local v8, y:F
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 788
    iget-object v9, p0, Landroid/widget/StackView;->mTouchRect:Landroid/graphics/Rect;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 789
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 790
    .local v3, oldX:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 793
    .local v4, oldY:F
    iget v9, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v10, v8, v4

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialY:F

    .line 794
    iget v9, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v10, v7, v3

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/StackView;->mInitialX:F

    .line 796
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 797
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_19

    .line 798
    iget-object v9, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_19

    .line 781
    .end local v3           #oldX:F
    .end local v4           #oldY:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 807
    :cond_7c
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_19
.end method

.method private pacedScroll(Z)V
    .registers 8
    .parameter "up"

    .prologue
    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/StackView;->mLastScrollTime:J

    sub-long v0, v2, v4

    .line 606
    .local v0, timeSinceLastScroll:J
    sget-wide v2, Landroid/widget/StackView;->MIN_TIME_BETWEEN_SCROLLS:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    .line 607
    if-eqz p1, :cond_1a

    .line 608
    invoke-virtual {p0}, Landroid/widget/StackView;->showPrevious()V

    .line 612
    :goto_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/StackView;->mLastScrollTime:J

    .line 614
    :cond_19
    return-void

    .line 610
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_13
.end method

.method private setupStackSlider(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "mode"

    .prologue
    .line 358
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p2}, Landroid/widget/StackView$StackSlider;->setMode(I)V

    .line 359
    if-eqz p1, :cond_3e

    .line 360
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    invoke-virtual {v1, p1}, Landroid/widget/StackView$HolographicHelper;->createOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 362
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 363
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 364
    iget-object v0, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 365
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    .line 366
    iget-object v0, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v0, p1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :cond_3e
    return-void
.end method

.method private transformViewAtIndex(ILandroid/view/View;Z)V
    .registers 25
    .parameter "index"
    .parameter "view"
    .parameter "animate"

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mPerspectiveShiftY:F

    move v4, v0

    .line 306
    .local v4, maxPerspectiveShiftY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mPerspectiveShiftX:F

    move v3, v0

    .line 308
    .local v3, maxPerspectiveShiftX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mStackMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_132

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v18, v0

    sub-int v18, v18, p1

    const/16 v19, 0x1

    sub-int p1, v18, v19

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_36

    add-int/lit8 p1, p1, -0x1

    .line 316
    :cond_36
    :goto_36
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f80

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mMaxNumActiveViews:I

    move/from16 v19, v0

    const/16 v20, 0x2

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v8, v18, v19

    .line 318
    .local v8, r:F
    const/high16 v18, 0x3f80

    const/16 v19, 0x0

    const/high16 v20, 0x3f80

    sub-float v20, v20, v8

    mul-float v19, v19, v20

    sub-float v9, v18, v19

    .line 320
    .local v9, scale:F
    mul-float v7, v8, v4

    .line 321
    .local v7, perspectiveTranslationY:F
    const/high16 v18, 0x3f80

    sub-float v18, v9, v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f666666

    mul-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    mul-float v13, v18, v19

    .line 323
    .local v13, scaleShiftCorrectionY:F
    add-float v15, v7, v13

    .line 325
    .local v15, transY:F
    const/high16 v18, 0x3f80

    sub-float v18, v18, v8

    mul-float v6, v18, v3

    .line 326
    .local v6, perspectiveTranslationX:F
    const/high16 v18, 0x3f80

    sub-float v18, v18, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3f666666

    mul-float v19, v19, v20

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    mul-float v12, v18, v19

    .line 328
    .local v12, scaleShiftCorrectionX:F
    add-float v14, v6, v12

    .line 332
    .local v14, transX:F
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v18, v0

    if-eqz v18, :cond_a8

    .line 333
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v3, v0

    .end local v3           #maxPerspectiveShiftX:F
    invoke-virtual {v3}, Landroid/widget/StackView$StackFrame;->cancelTransformAnimator()Z

    .line 336
    :cond_a8
    if-eqz p3, :cond_13a

    .line 337
    const-string/jumbo v18, "translationX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v14, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 338
    .local v16, translationX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "translationY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v15, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 339
    .local v17, translationY:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "scaleX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v9, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 340
    .local v10, scalePropX:Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "scaleY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v9, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 342
    .local v11, scalePropY:Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    const/16 v19, 0x2

    aput-object v17, v18, v19

    const/16 v19, 0x3

    aput-object v16, v18, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 344
    .local v5, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v18, 0x64

    move-object v0, v5

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 345
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/widget/StackView$StackFrame;

    move/from16 v18, v0

    if-eqz v18, :cond_12e

    .line 346
    check-cast p2, Landroid/widget/StackView$StackFrame;

    .end local p2
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackFrame;->setTransformAnimator(Landroid/animation/ObjectAnimator;)V

    .line 348
    :cond_12e
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 355
    .end local v5           #oa:Landroid/animation/ObjectAnimator;
    .end local v10           #scalePropX:Landroid/animation/PropertyValuesHolder;
    .end local v11           #scalePropY:Landroid/animation/PropertyValuesHolder;
    .end local v16           #translationX:Landroid/animation/PropertyValuesHolder;
    .end local v17           #translationY:Landroid/animation/PropertyValuesHolder;
    :goto_131
    return-void

    .line 312
    .end local v6           #perspectiveTranslationX:F
    .end local v7           #perspectiveTranslationY:F
    .end local v8           #r:F
    .end local v9           #scale:F
    .end local v12           #scaleShiftCorrectionX:F
    .end local v13           #scaleShiftCorrectionY:F
    .end local v14           #transX:F
    .end local v15           #transY:F
    .restart local v3       #maxPerspectiveShiftX:F
    .restart local p2
    :cond_132
    add-int/lit8 p1, p1, -0x1

    .line 313
    if-gez p1, :cond_36

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_36

    .line 350
    .end local v3           #maxPerspectiveShiftX:F
    .restart local v6       #perspectiveTranslationX:F
    .restart local v7       #perspectiveTranslationY:F
    .restart local v8       #r:F
    .restart local v9       #scale:F
    .restart local v12       #scaleShiftCorrectionX:F
    .restart local v13       #scaleShiftCorrectionY:F
    .restart local v14       #transX:F
    .restart local v15       #transY:F
    :cond_13a
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 351
    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 352
    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 353
    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_131
.end method

.method private updateChildTransforms()V
    .registers 4

    .prologue
    .line 456
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v2

    if-ge v0, v2, :cond_14

    .line 457
    invoke-virtual {p0, v0}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v1

    .line 458
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_11

    .line 459
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 456
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    .end local v1           #v:Landroid/view/View;
    :cond_14
    return-void
.end method


# virtual methods
.method public advance()V
    .registers 8

    .prologue
    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/widget/StackView;->mLastInteractionTime:J

    sub-long v1, v3, v5

    .line 1123
    .local v1, timeSinceLastInteraction:J
    iget-object v3, p0, Landroid/widget/StackView;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_d

    .line 1131
    :cond_c
    :goto_c
    return-void

    .line 1124
    :cond_d
    invoke-virtual {p0}, Landroid/widget/StackView;->getCount()I

    move-result v0

    .line 1125
    .local v0, adapterCount:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_18

    iget-boolean v3, p0, Landroid/widget/StackView;->mLoopViews:Z

    if-nez v3, :cond_c

    .line 1127
    :cond_18
    iget v3, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-nez v3, :cond_c

    const-wide/16 v3, 0x1388

    cmp-long v3, v1, v3

    if-lez v3, :cond_c

    .line 1129
    invoke-virtual {p0}, Landroid/widget/StackView;->showNext()V

    goto :goto_c
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3
    .parameter "child"
    .parameter "relativeIndex"

    .prologue
    .line 530
    return-void
.end method

.method bridge synthetic createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/StackView;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/widget/StackView$LayoutParams;
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 1088
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1089
    .local v1, currentLp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/widget/StackView$LayoutParams;

    if-eqz v3, :cond_19

    .line 1090
    move-object v0, v1

    check-cast v0, Landroid/widget/StackView$LayoutParams;

    move-object v2, v0

    .line 1091
    .local v2, lp:Landroid/widget/StackView$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 1092
    invoke-virtual {v2, v4}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 1093
    iput v4, v2, Landroid/widget/StackView$LayoutParams;->width:I

    .line 1094
    iput v4, v2, Landroid/widget/StackView$LayoutParams;->width:I

    move-object v3, v2

    .line 1097
    .end local v2           #lp:Landroid/widget/StackView$LayoutParams;
    :goto_18
    return-object v3

    :cond_19
    new-instance v3, Landroid/widget/StackView$LayoutParams;

    invoke-direct {v3, p0, p1}, Landroid/widget/StackView$LayoutParams;-><init>(Landroid/widget/StackView;Landroid/view/View;)V

    goto :goto_18
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 534
    const/4 v3, 0x0

    .line 536
    .local v3, expandClipRegion:Z
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 537
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v1

    .line 538
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    if-ge v4, v1, :cond_44

    .line 539
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 541
    .local v5, lp:Landroid/widget/StackView$LayoutParams;
    iget v6, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    if-nez v6, :cond_1f

    iget v6, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    if-eqz v6, :cond_2e

    :cond_1f
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2e

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_31

    .line 543
    :cond_2e
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->resetInvalidateRect()V

    .line 545
    :cond_31
    invoke-virtual {v5}, Landroid/widget/StackView$LayoutParams;->getInvalidateRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 546
    .local v2, childInvalidateRect:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_41

    .line 547
    const/4 v3, 0x1

    .line 548
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 538
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 553
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childInvalidateRect:Landroid/graphics/Rect;
    .end local v5           #lp:Landroid/widget/StackView$LayoutParams;
    :cond_44
    if-eqz v3, :cond_58

    .line 554
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 555
    iget-object v6, p0, Landroid/widget/StackView;->stackInvalidateRect:Landroid/graphics/Rect;

    sget-object v7, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 556
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 561
    :goto_57
    return-void

    .line 559
    :cond_58
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_57
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .registers 6

    .prologue
    .line 521
    new-instance v0, Landroid/widget/StackView$StackFrame;

    iget-object v1, p0, Landroid/widget/StackView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/StackView$StackFrame;-><init>(Landroid/content/Context;)V

    .line 522
    .local v0, fl:Landroid/widget/StackView$StackFrame;
    iget v1, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v2, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v3, p0, Landroid/widget/StackView;->mFramePadding:I

    iget v4, p0, Landroid/widget/StackView;->mFramePadding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/StackView$StackFrame;->setPadding(IIII)V

    .line 523
    return-object v0
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 451
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 453
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_11

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_30

    .line 600
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_15
    return v1

    .line 589
    :pswitch_16
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 590
    .local v0, vscroll:F
    cmpg-float v1, v0, v3

    if-gez v1, :cond_26

    .line 591
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/StackView;->pacedScroll(Z)V

    move v1, v2

    .line 592
    goto :goto_15

    .line 593
    :cond_26
    cmpl-float v1, v0, v3

    if-lez v1, :cond_11

    .line 594
    invoke-direct {p0, v2}, Landroid/widget/StackView;->pacedScroll(Z)V

    move v1, v2

    .line 595
    goto :goto_15

    .line 587
    nop

    :pswitch_data_30
    .packed-switch 0x8
        :pswitch_16
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 622
    .local v0, action:I
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_50

    .line 655
    :cond_b
    :goto_b
    :pswitch_b
    iget v4, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v4, :cond_4e

    const/4 v4, 0x1

    :goto_10
    return v4

    .line 624
    :pswitch_11
    iget v4, p0, Landroid/widget/StackView;->mActivePointerId:I

    if-ne v4, v5, :cond_b

    .line 625
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Landroid/widget/StackView;->mInitialX:F

    .line 626
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroid/widget/StackView;->mInitialY:F

    .line 627
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/StackView;->mActivePointerId:I

    goto :goto_b

    .line 632
    :pswitch_28
    iget v4, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 633
    .local v3, pointerIndex:I
    if-ne v3, v5, :cond_39

    .line 635
    const-string v4, "StackView"

    const-string v5, "Error: No data for our primary pointer."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 636
    goto :goto_10

    .line 638
    :cond_39
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 639
    .local v2, newY:F
    iget v4, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v1, v2, v4

    .line 641
    .local v1, deltaY:F
    invoke-direct {p0, v1}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    goto :goto_b

    .line 645
    .end local v1           #deltaY:F
    .end local v2           #newY:F
    .end local v3           #pointerIndex:I
    :pswitch_45
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 650
    :pswitch_49
    iput v5, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 651
    iput v6, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_b

    :cond_4e
    move v4, v6

    .line 655
    goto :goto_10

    .line 622
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_11
        :pswitch_49
        :pswitch_28
        :pswitch_49
        :pswitch_b
        :pswitch_b
        :pswitch_45
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1102
    invoke-virtual {p0}, Landroid/widget/StackView;->checkForAndHandleDataChanged()V

    .line 1104
    invoke-virtual {p0}, Landroid/widget/StackView;->getChildCount()I

    move-result v2

    .line 1105
    .local v2, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, v2, :cond_3a

    .line 1106
    invoke-virtual {p0, v4}, Landroid/widget/StackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1108
    .local v0, child:Landroid/view/View;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v6, v7

    .line 1109
    .local v3, childRight:I
    iget v6, p0, Landroid/widget/StackView;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v1, v6, v7

    .line 1110
    .local v1, childBottom:I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/StackView$LayoutParams;

    .line 1112
    .local v5, lp:Landroid/widget/StackView$LayoutParams;
    iget v6, p0, Landroid/widget/StackView;->mPaddingLeft:I

    iget v7, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/StackView;->mPaddingTop:I

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/StackView$LayoutParams;->horizontalOffset:I

    add-int/2addr v8, v3

    iget v9, v5, Landroid/widget/StackView$LayoutParams;->verticalOffset:I

    add-int/2addr v9, v1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 1105
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1116
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childBottom:I
    .end local v3           #childRight:I
    .end local v5           #lp:Landroid/widget/StackView$LayoutParams;
    :cond_3a
    invoke-direct {p0}, Landroid/widget/StackView;->onLayout()V

    .line 1117
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 1180
    .local v8, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 1181
    .local v5, heightSpecSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1182
    .local v7, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 1184
    .local v4, heightSpecMode:I
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_55

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_55

    const/4 v9, 0x1

    move v2, v9

    .line 1188
    .local v2, haveChildRefSize:Z
    :goto_1c
    const v1, 0x3f8e38e4

    .line 1189
    .local v1, factorY:F
    if-nez v4, :cond_5b

    .line 1190
    if-eqz v2, :cond_58

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int/2addr v9, v10

    move v5, v9

    .line 1208
    :cond_35
    :goto_35
    const v0, 0x3f8e38e4

    .line 1209
    .local v0, factorX:F
    if-nez v7, :cond_80

    .line 1210
    if-eqz v2, :cond_7d

    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v0

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int/2addr v9, v10

    move v8, v9

    .line 1225
    :cond_4e
    :goto_4e
    invoke-virtual {p0, v8, v5}, Landroid/widget/StackView;->setMeasuredDimension(II)V

    .line 1226
    invoke-direct {p0}, Landroid/widget/StackView;->measureChildren()V

    .line 1227
    return-void

    .line 1184
    .end local v0           #factorX:F
    .end local v1           #factorY:F
    .end local v2           #haveChildRefSize:Z
    :cond_55
    const/4 v9, 0x0

    move v2, v9

    goto :goto_1c

    .line 1190
    .restart local v1       #factorY:F
    .restart local v2       #haveChildRefSize:Z
    :cond_58
    const/4 v9, 0x0

    move v5, v9

    goto :goto_35

    .line 1193
    :cond_5b
    const/high16 v9, -0x8000

    if-ne v4, v9, :cond_35

    .line 1194
    if-eqz v2, :cond_7b

    .line 1195
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f80

    add-float/2addr v10, v1

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, p0, Landroid/widget/StackView;->mPaddingTop:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingBottom:I

    add-int v3, v9, v10

    .line 1197
    .local v3, height:I
    if-gt v3, v5, :cond_77

    .line 1198
    move v5, v3

    goto :goto_35

    .line 1200
    :cond_77
    const/high16 v9, 0x100

    or-int/2addr v5, v9

    goto :goto_35

    .line 1204
    .end local v3           #height:I
    :cond_7b
    const/4 v5, 0x0

    goto :goto_35

    .line 1210
    .restart local v0       #factorX:F
    :cond_7d
    const/4 v9, 0x0

    move v8, v9

    goto :goto_4e

    .line 1213
    :cond_80
    const/high16 v9, -0x8000

    if-ne v4, v9, :cond_4e

    .line 1214
    if-eqz v2, :cond_97

    .line 1215
    iget v9, p0, Landroid/widget/StackView;->mReferenceChildWidth:I

    iget v10, p0, Landroid/widget/StackView;->mPaddingLeft:I

    add-int/2addr v9, v10

    iget v10, p0, Landroid/widget/StackView;->mPaddingRight:I

    add-int v6, v9, v10

    .line 1216
    .local v6, width:I
    if-gt v6, v8, :cond_93

    .line 1217
    move v8, v6

    goto :goto_4e

    .line 1219
    :cond_93
    const/high16 v9, 0x100

    or-int/2addr v8, v9

    goto :goto_4e

    .line 1222
    .end local v6           #width:I
    :cond_97
    const/4 v8, 0x0

    goto :goto_4e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    .line 711
    invoke-super {p0, p1}, Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 714
    .local v0, action:I
    iget v8, p0, Landroid/widget/StackView;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 715
    .local v5, pointerIndex:I
    if-ne v5, v9, :cond_1d

    .line 717
    const-string v8, "StackView"

    const-string v9, "Error: No data for our primary pointer."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v12

    .line 764
    :goto_1c
    return v8

    .line 721
    :cond_1d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 722
    .local v4, newY:F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 723
    .local v3, newX:F
    iget v8, p0, Landroid/widget/StackView;->mInitialY:F

    sub-float v2, v4, v8

    .line 724
    .local v2, deltaY:F
    iget v8, p0, Landroid/widget/StackView;->mInitialX:F

    sub-float v1, v3, v8

    .line 725
    .local v1, deltaX:F
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_37

    .line 726
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 728
    :cond_37
    iget-object v8, p0, Landroid/widget/StackView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 730
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_a0

    :cond_41
    :goto_41
    :pswitch_41
    move v8, v11

    .line 764
    goto :goto_1c

    .line 732
    :pswitch_43
    invoke-direct {p0, v2}, Landroid/widget/StackView;->beginGestureIfNeeded(F)V

    .line 734
    iget v8, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    div-float v7, v1, v8

    .line 735
    .local v7, rx:F
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_71

    .line 736
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    sub-float v8, v2, v8

    iget v9, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v6, v8, v10

    .line 737
    .local v6, r:F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v8, v11, :cond_63

    sub-float v6, v10, v6

    .line 738
    :cond_63
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    sub-float v9, v10, v6

    invoke-virtual {v8, v9}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 739
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    move v8, v11

    .line 740
    goto :goto_1c

    .line 741
    .end local v6           #r:F
    :cond_71
    iget v8, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-ne v8, v11, :cond_41

    .line 742
    iget v8, p0, Landroid/widget/StackView;->mTouchSlop:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    add-float/2addr v8, v2

    neg-float v8, v8

    iget v9, p0, Landroid/widget/StackView;->mSlideAmount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float v6, v8, v10

    .line 743
    .restart local v6       #r:F
    iget v8, p0, Landroid/widget/StackView;->mStackMode:I

    if-ne v8, v11, :cond_87

    sub-float v6, v10, v6

    .line 744
    :cond_87
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v6}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 745
    iget-object v8, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v8, v7}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    move v8, v11

    .line 746
    goto :goto_1c

    .line 751
    .end local v6           #r:F
    .end local v7           #rx:F
    :pswitch_93
    invoke-direct {p0, p1}, Landroid/widget/StackView;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_41

    .line 755
    :pswitch_97
    invoke-direct {p0, p1}, Landroid/widget/StackView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_41

    .line 759
    :pswitch_9b
    iput v9, p0, Landroid/widget/StackView;->mActivePointerId:I

    .line 760
    iput v12, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    goto :goto_41

    .line 730
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_93
        :pswitch_43
        :pswitch_9b
        :pswitch_41
        :pswitch_41
        :pswitch_97
    .end packed-switch
.end method

.method public showNext()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 378
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_6

    .line 388
    :goto_5
    return-void

    .line 379
    :cond_6
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_1f

    .line 380
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1f

    .line 382
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 383
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 384
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 387
    .end local v0           #v:Landroid/view/View;
    :cond_1f
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    goto :goto_5
.end method

.method showOnly(IZ)V
    .registers 10
    .parameter "childIndex"
    .parameter "animate"

    .prologue
    const/4 v6, 0x0

    .line 410
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 413
    iget v0, p0, Landroid/widget/StackView;->mCurrentWindowEnd:I

    .local v0, i:I
    :goto_6
    iget v4, p0, Landroid/widget/StackView;->mCurrentWindowStart:I

    if-lt v0, v4, :cond_36

    .line 414
    invoke-virtual {p0}, Landroid/widget/StackView;->getWindowSize()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/widget/StackView;->modulo(II)I

    move-result v1

    .line 415
    .local v1, index:I
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterViewAnimator$ViewAndIndex;

    .line 416
    .local v3, vi:Landroid/widget/AdapterViewAnimator$ViewAndIndex;
    if-eqz v3, :cond_33

    .line 417
    iget-object v4, p0, Landroid/widget/StackView;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterViewAnimator$ViewAndIndex;

    iget-object v2, v4, Landroid/widget/AdapterViewAnimator$ViewAndIndex;->view:Landroid/view/View;

    .line 418
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 413
    .end local v2           #v:Landroid/view/View;
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 421
    .end local v1           #index:I
    .end local v3           #vi:Landroid/widget/AdapterViewAnimator$ViewAndIndex;
    :cond_36
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    if-eqz v4, :cond_3f

    .line 422
    iget-object v4, p0, Landroid/widget/StackView;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->bringToFront()V

    .line 424
    :cond_3f
    iput-boolean v6, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    .line 425
    iput-boolean v6, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 426
    return-void
.end method

.method public showPrevious()V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 396
    iget v1, p0, Landroid/widget/StackView;->mSwipeGestureType:I

    if-eqz v1, :cond_6

    .line 406
    :goto_5
    return-void

    .line 397
    :cond_6
    iget-boolean v1, p0, Landroid/widget/StackView;->mTransitionIsSetup:Z

    if-nez v1, :cond_20

    .line 398
    invoke-virtual {p0, v2}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_20

    .line 400
    invoke-direct {p0, v0, v2}, Landroid/widget/StackView;->setupStackSlider(Landroid/view/View;I)V

    .line 401
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 402
    iget-object v1, p0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    .line 405
    .end local v0           #v:Landroid/view/View;
    :cond_20
    invoke-super {p0}, Landroid/widget/AdapterViewAnimator;->showPrevious()V

    goto :goto_5
.end method

.method showTapFeedback(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/widget/StackView;->updateClickFeedback()V

    .line 444
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 446
    invoke-virtual {p0}, Landroid/widget/StackView;->invalidate()V

    .line 447
    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .registers 24
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "view"
    .parameter "animate"

    .prologue
    .line 201
    const/4 v4, 0x0

    .line 202
    .local v4, alphaOa:Landroid/animation/ObjectAnimator;
    const/4 v8, 0x0

    .line 204
    .local v8, oldAlphaOa:Landroid/animation/ObjectAnimator;
    if-nez p4, :cond_21

    .line 205
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 206
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/StackView$LayoutParams;

    .line 208
    .local v7, lp:Landroid/widget/StackView$LayoutParams;
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 209
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    .line 212
    .end local v7           #lp:Landroid/widget/StackView$LayoutParams;
    :cond_21
    const/4 v15, -0x1

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_af

    invoke-virtual/range {p0 .. p0}, Landroid/widget/StackView;->getNumActiveViews()I

    move-result v15

    const/16 v16, 0x1

    sub-int v15, v15, v16

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_af

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v15

    const/high16 v16, 0x3f80

    cmpl-float v15, v15, v16

    if-nez v15, :cond_45

    .line 215
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 217
    :cond_45
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 218
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/StackView$StackFrame;->cancelAlphaAnimator()Z

    .line 221
    if-eqz p4, :cond_a6

    .line 222
    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v18

    aput v18, v16, v17

    const/16 v17, 0x1

    const/high16 v18, 0x3f80

    aput v18, v16, v17

    move-object/from16 v0, p3

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 223
    const-wide/16 v15, 0x320

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/StackView$StackFrame;->setAlphaAnimator(Landroid/animation/ObjectAnimator;)V

    .line 225
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 299
    :cond_94
    :goto_94
    const/4 v15, -0x1

    move/from16 v0, p2

    move v1, v15

    if-eq v0, v1, :cond_a5

    .line 300
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/StackView;->transformViewAtIndex(ILandroid/view/View;Z)V

    .line 302
    :cond_a5
    return-void

    .line 227
    :cond_a6
    const/high16 v15, 0x3f80

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_94

    .line 229
    :cond_af
    if-nez p1, :cond_150

    const/4 v15, 0x1

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_150

    .line 231
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 232
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mYVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/StackView$StackSlider;->getDurationForNeutralPosition(F)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 235
    .local v6, duration:I
    new-instance v5, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object v15, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 236
    .local v5, animationSlider:Landroid/widget/StackView$StackSlider;
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 238
    if-eqz p4, :cond_146

    .line 239
    const-string v15, "YProgress"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 240
    .local v11, slideInY:Landroid/animation/PropertyValuesHolder;
    const-string v15, "XProgress"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    .line 241
    .local v10, slideInX:Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x2

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v11, v15, v16

    invoke-static {v5, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 243
    .local v9, slideIn:Landroid/animation/ObjectAnimator;
    int-to-long v15, v6

    move-object v0, v9

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 244
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    .end local v5           #animationSlider:Landroid/widget/StackView$StackSlider;
    invoke-virtual {v5, v9}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 246
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_94

    .line 248
    .end local v9           #slideIn:Landroid/animation/ObjectAnimator;
    .end local v10           #slideInX:Landroid/animation/PropertyValuesHolder;
    .end local v11           #slideInY:Landroid/animation/PropertyValuesHolder;
    .restart local v5       #animationSlider:Landroid/widget/StackView$StackSlider;
    :cond_146
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 249
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_94

    .line 251
    .end local v5           #animationSlider:Landroid/widget/StackView$StackSlider;
    .end local v6           #duration:I
    :cond_150
    const/4 v15, 0x1

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_1eb

    if-nez p2, :cond_1eb

    .line 253
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/StackView$StackFrame;->cancelSliderAnimator()Z

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/StackView;->mYVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/StackView$StackSlider;->getDurationForOffscreenPosition(F)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 256
    .restart local v6       #duration:I
    new-instance v5, Landroid/widget/StackView$StackSlider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/StackView;->mStackSlider:Landroid/widget/StackView$StackSlider;

    move-object v15, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Landroid/widget/StackView$StackSlider;-><init>(Landroid/widget/StackView;Landroid/widget/StackView$StackSlider;)V

    .line 257
    .restart local v5       #animationSlider:Landroid/widget/StackView$StackSlider;
    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/StackView$StackSlider;->setView(Landroid/view/View;)V

    .line 258
    if-eqz p4, :cond_1e0

    .line 259
    const-string v15, "YProgress"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f80

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 260
    .local v14, slideOutY:Landroid/animation/PropertyValuesHolder;
    const-string v15, "XProgress"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 261
    .local v13, slideOutX:Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x2

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    aput-object v14, v15, v16

    invoke-static {v5, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 263
    .local v12, slideOut:Landroid/animation/ObjectAnimator;
    int-to-long v15, v6

    move-object v0, v12

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 264
    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v12, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    .end local v5           #animationSlider:Landroid/widget/StackView$StackSlider;
    invoke-virtual {v5, v12}, Landroid/widget/StackView$StackFrame;->setSliderAnimator(Landroid/animation/ObjectAnimator;)V

    .line 266
    invoke-virtual {v12}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_94

    .line 268
    .end local v12           #slideOut:Landroid/animation/ObjectAnimator;
    .end local v13           #slideOutX:Landroid/animation/PropertyValuesHolder;
    .end local v14           #slideOutY:Landroid/animation/PropertyValuesHolder;
    .restart local v5       #animationSlider:Landroid/widget/StackView$StackSlider;
    :cond_1e0
    const/high16 v15, 0x3f80

    invoke-virtual {v5, v15}, Landroid/widget/StackView$StackSlider;->setYProgress(F)V

    .line 269
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/StackView$StackSlider;->setXProgress(F)V

    goto/16 :goto_94

    .line 271
    .end local v5           #animationSlider:Landroid/widget/StackView$StackSlider;
    .end local v6           #duration:I
    :cond_1eb
    if-nez p2, :cond_1fd

    .line 273
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 274
    const/4 v15, 0x4

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_94

    .line 275
    :cond_1fd
    if-eqz p1, :cond_205

    const/4 v15, 0x1

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_231

    :cond_205
    const/4 v15, 0x1

    move/from16 v0, p2

    move v1, v15

    if-le v0, v1, :cond_231

    .line 276
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    const/high16 v15, 0x3f80

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 278
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationX(F)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/StackView$LayoutParams;

    .line 280
    .restart local v7       #lp:Landroid/widget/StackView$LayoutParams;
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/StackView$LayoutParams;->setVerticalOffset(I)V

    .line 281
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/StackView$LayoutParams;->setHorizontalOffset(I)V

    goto/16 :goto_94

    .line 282
    .end local v7           #lp:Landroid/widget/StackView$LayoutParams;
    :cond_231
    const/4 v15, -0x1

    move/from16 v0, p1

    move v1, v15

    if-ne v0, v1, :cond_248

    .line 283
    const/high16 v15, 0x3f80

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 284
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_94

    .line 285
    :cond_248
    const/4 v15, -0x1

    move/from16 v0, p2

    move v1, v15

    if-ne v0, v1, :cond_94

    .line 287
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/StackView$StackFrame;->cancelAlphaAnimator()Z

    .line 288
    if-eqz p4, :cond_28d

    .line 289
    const-string v15, "alpha"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v18

    aput v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x0

    aput v18, v16, v17

    move-object/from16 v0, p3

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 290
    const-wide/16 v15, 0x64

    move-object v0, v4

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 291
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/StackView$StackFrame;

    move-object v5, v0

    invoke-virtual {v5, v4}, Landroid/widget/StackView$StackFrame;->setAlphaAnimator(Landroid/animation/ObjectAnimator;)V

    .line 292
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_94

    .line 294
    :cond_28d
    const/4 v15, 0x0

    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_94
.end method

.method updateClickFeedback()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 429
    iget-boolean v1, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    if-nez v1, :cond_2a

    .line 430
    invoke-virtual {p0, v3}, Landroid/widget/StackView;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    .line 431
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_28

    .line 432
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/StackView;->sHolographicHelper:Landroid/widget/StackView$HolographicHelper;

    invoke-virtual {v2, v0, v3}, Landroid/widget/StackView$HolographicHelper;->createOutline(Landroid/view/View;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 435
    iget-object v1, p0, Landroid/widget/StackView;->mClickFeedback:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 437
    :cond_28
    iput-boolean v3, p0, Landroid/widget/StackView;->mClickFeedbackIsValid:Z

    .line 439
    .end local v0           #v:Landroid/view/View;
    :cond_2a
    return-void
.end method
