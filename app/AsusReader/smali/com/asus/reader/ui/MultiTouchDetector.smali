.class public Lcom/asus/reader/ui/MultiTouchDetector;
.super Ljava/lang/Object;
.source "MultiTouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/MultiTouchDetector$1;,
        Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;,
        Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;
    }
.end annotation


# static fields
.field private static final TAP_TIMEOUT:I


# instance fields
.field private mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

.field private mLastX1:F

.field private mLastX2:F

.field private mLastY1:F

.field private mLastY2:F

.field private mListener:Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;

.field private mNowEvent:Landroid/view/MotionEvent;

.field private mState:I

.field private mTouchSlopSquare:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/asus/reader/ui/MultiTouchDetector;->TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mListener:Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;

    .line 39
    new-instance v2, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;-><init>(Lcom/asus/reader/ui/MultiTouchDetector;Lcom/asus/reader/ui/MultiTouchDetector$1;)V

    iput-object v2, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    .line 40
    const/4 v2, 0x0

    iput v2, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    .line 41
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 42
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 43
    .local v1, touchSlop:I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mTouchSlopSquare:I

    .line 44
    return-void
.end method

.method static synthetic access$102(Lcom/asus/reader/ui/MultiTouchDetector;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    return p1
.end method

.method static synthetic access$200(Lcom/asus/reader/ui/MultiTouchDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/asus/reader/ui/MultiTouchDetector;->dispatchTwoPointsLongPress()V

    return-void
.end method

.method private dispatchTwoPointsLongPress()V
    .locals 5

    .prologue
    .line 140
    iget v0, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY1:F

    iget v1, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY2:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mListener:Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;

    iget v1, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastX2:F

    iget v2, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY2:F

    iget v3, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastX1:F

    iget v4, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY1:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;->onTwoPointsLongPress(FFFF)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mListener:Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;

    iget v1, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastX1:F

    iget v2, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY1:F

    iget v3, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastX2:F

    iget v4, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY2:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;->onTwoPointsLongPress(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "e"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 49
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 64
    .local v4, pointerCount:I
    sparse-switch v0, :sswitch_data_0

    .line 136
    :cond_0
    :goto_0
    const/4 v9, 0x0

    :goto_1
    return v9

    .line 66
    :sswitch_0
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    if-nez v9, :cond_0

    .line 67
    const/4 v9, 0x1

    iput v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    .line 68
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastX1:F

    .line 69
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY1:F

    .line 70
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x65

    const-wide/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11, v12}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 74
    :sswitch_1
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 75
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->removeMessages(I)V

    .line 76
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->removeMessages(I)V

    .line 77
    const/4 v9, 0x2

    iput v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    .line 78
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    iput-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mNowEvent:Landroid/view/MotionEvent;

    .line 79
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastX2:F

    .line 80
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY2:F

    .line 81
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x65

    sget v11, Lcom/asus/reader/ui/MultiTouchDetector;->TAP_TIMEOUT:I

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x66

    sget v11, Lcom/asus/reader/ui/MultiTouchDetector;->TAP_TIMEOUT:I

    add-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    const/4 v9, 0x1

    goto :goto_1

    .line 90
    :sswitch_2
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 91
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastX1:F

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v1, v9

    .line 92
    .local v1, deltaX:I
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY1:F

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v2, v9

    .line 93
    .local v2, deltaY:I
    mul-int v9, v1, v1

    mul-int v10, v2, v2

    add-int v3, v9, v10

    .line 94
    .local v3, distance:I
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mTouchSlopSquare:I

    if-le v3, v9, :cond_1

    .line 96
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->removeMessages(I)V

    .line 98
    :cond_1
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastX2:F

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v1, v9

    .line 99
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mLastY2:F

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v2, v9

    .line 100
    mul-int v9, v1, v1

    mul-int v10, v2, v2

    add-int v3, v9, v10

    .line 101
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mTouchSlopSquare:I

    if-le v3, v9, :cond_2

    .line 103
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->removeMessages(I)V

    .line 105
    :cond_2
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 110
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    .end local v3           #distance:I
    :sswitch_3
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 111
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->removeMessages(I)V

    .line 112
    const/4 v9, 0x3

    iput v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    .line 113
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x65

    const-wide/16 v11, 0xc8

    invoke-virtual {v9, v10, v11, v12}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 116
    :cond_3
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 119
    :sswitch_4
    iget v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    .line 120
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->removeMessages(I)V

    .line 121
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mNowEvent:Landroid/view/MotionEvent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 122
    .local v5, x1:F
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mNowEvent:Landroid/view/MotionEvent;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 123
    .local v7, y1:F
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mNowEvent:Landroid/view/MotionEvent;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 124
    .local v6, x2:F
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mNowEvent:Landroid/view/MotionEvent;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 125
    .local v8, y2:F
    const/4 v9, 0x0

    iput v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mState:I

    .line 126
    cmpl-float v9, v7, v8

    if-lez v9, :cond_4

    .line 127
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mListener:Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;

    invoke-interface {v9, v6, v8, v5, v7}, Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;->onTwoPointTap(FFFF)V

    .line 131
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 129
    :cond_4
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mListener:Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;

    invoke-interface {v9, v5, v7, v6, v8}, Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;->onTwoPointTap(FFFF)V

    goto :goto_2

    .line 133
    .end local v5           #x1:F
    .end local v6           #x2:F
    .end local v7           #y1:F
    .end local v8           #y2:F
    :cond_5
    iget-object v9, p0, Lcom/asus/reader/ui/MultiTouchDetector;->mHandler:Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/asus/reader/ui/MultiTouchDetector$GestureHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x6 -> :sswitch_3
        0x105 -> :sswitch_1
        0x106 -> :sswitch_3
    .end sparse-switch
.end method
