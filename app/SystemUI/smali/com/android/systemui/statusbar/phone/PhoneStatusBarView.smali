.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.super Landroid/widget/FrameLayout;
.source "PhoneStatusBarView.java"


# instance fields
.field mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

.field mButtonBounds:Landroid/graphics/Rect;

.field mCapturingEvents:Z

.field mDate:Landroid/view/View;

.field mEndAlpha:I

.field mEndTime:J

.field mNightMode:Z

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mStartAlpha:I

.field mStatusIcons:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    .line 48
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    .line 56
    return-void
.end method

.method private getDateSize(Landroid/view/ViewGroup;II)I
    .locals 6
    .parameter "g"
    .parameter "w"
    .parameter "offset"

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 167
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 168
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 169
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v2, v5, p3

    .line 170
    .local v2, l:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v3, v5, p3

    .line 171
    .local v3, r:I
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    move v5, v3

    .line 175
    .end local v2           #l:I
    .end local v3           #r:I
    .end local v4           #v:Landroid/view/View;
    :goto_1
    return v5

    .line 167
    .restart local v2       #l:I
    .restart local v3       #r:I
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v2           #l:I
    .end local v3           #r:I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private getViewOffset(Landroid/view/View;)I
    .locals 6
    .parameter "v"

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, offset:I
    :goto_0
    if-eq p1, p0, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 156
    .local v2, p:Landroid/view/ViewParent;
    instance-of v3, p1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 157
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a child of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    .end local v2           #p:Landroid/view/ViewParent;
    :cond_1
    return v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v0

    .line 139
    .local v0, alpha:I
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 142
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    if-eq v0, v1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 145
    :cond_1
    return-void
.end method

.method getCurAlpha()I
    .locals 7

    .prologue
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 92
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 93
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 95
    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x190

    div-long/2addr v3, v5

    long-to-int v3, v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBarViewAttached()V

    .line 74
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 81
    .local v0, nightMode:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eq v1, v0, :cond_0

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getCurAlpha()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStartAlpha:I

    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNightMode:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x80

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndAlpha:I

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x190

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mEndTime:J

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->invalidate()V

    .line 88
    :cond_0
    return-void

    .end local v0           #nightMode:Z
    :cond_1
    move v0, v3

    .line 79
    goto :goto_0

    .restart local v0       #nightMode:Z
    :cond_2
    move v1, v3

    .line 84
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 62
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 63
    const v0, 0x7f0b0016

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mButtonBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    move v0, v3

    .line 203
    :goto_0
    return v0

    .line 202
    :cond_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 107
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 110
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 113
    .local v3, oldDateRight:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v4, v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 115
    .local v1, newDateRight:I
    if-gez v1, :cond_0

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v2

    .line 117
    .local v2, offset:I
    if-ge v3, v2, :cond_2

    .line 118
    move v1, v3

    .line 126
    .end local v2           #offset:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getPaddingRight()I

    move-result v4

    sub-int v0, p4, v4

    .line 127
    .local v0, max:I
    if-le v1, v0, :cond_1

    .line 128
    move v1, v0

    .line 131
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/view/View;->layout(IIII)V

    .line 132
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBackground:Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/statusbar/policy/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 133
    return-void

    .line 120
    .end local v0           #max:I
    .restart local v2       #offset:I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 121
    if-gez v1, :cond_0

    .line 122
    move v1, p4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 103
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mCapturingEvents:Z

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 191
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
