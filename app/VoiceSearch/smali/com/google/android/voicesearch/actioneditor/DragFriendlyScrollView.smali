.class public Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;
.super Landroid/widget/ScrollView;
.source "DragFriendlyScrollView.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_SCROLL_ANGLE:F = 0.34906584f

.field private static final MAX_SELECT_ANGLE:F = 1.0471976f

.field private static final MIN_MOVE_DISTANCE:F = 4900.0f

.field private static final MIN_SCROLL_SPEED:F = 21025.0f

.field private static final SCROLL_MODE_NON_SCROLLING:I = 0x2

.field private static final SCROLL_MODE_SCROLLING:I = 0x1

.field private static final SCROLL_MODE_UNDETECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DragFriendlyScrollView"


# instance fields
.field private mDragStartX:F

.field private mDragStartY:F

.field private mEventStartTime:J

.field private mScrollMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private updateScrollMode(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x45992000

    .line 114
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mDragStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 120
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mDragStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 121
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mEventStartTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    .line 124
    div-float v3, v2, v3

    .line 125
    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 126
    const v1, 0x3fc90fdb

    sub-float/2addr v1, v0

    .line 128
    const v4, 0x3eb2b8c2

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    cmpl-float v0, v2, v7

    if-lez v0, :cond_2

    const v0, 0x46a44200

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    .line 132
    const-string v0, "DragFriendlyScrollView"

    const-string v1, "touch move  - scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    goto :goto_0

    .line 134
    :cond_2
    const v0, 0x3f860a92

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    cmpl-float v0, v2, v7

    if-lez v0, :cond_0

    .line 137
    const-string v0, "DragFriendlyScrollView"

    const-string v1, "touch move  - selecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mDragStartX:F

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mDragStartY:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mEventStartTime:J

    .line 83
    iput v3, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    move v0, v3

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->updateScrollMode(Landroid/view/MotionEvent;)V

    .line 93
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    if-eqz v1, :cond_2

    .line 94
    iget v1, p0, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->mScrollMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move v0, v3

    .line 105
    goto :goto_0

    :cond_2
    move v0, v3

    .line 110
    goto :goto_0
.end method
