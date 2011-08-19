.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
.super Landroid/widget/FrameLayout;
.source "TabletStatusBarView.java"


# instance fields
.field private final MAX_PANELS:I

.field private mHandler:Landroid/os/Handler;

.field private final mIgnoreChildren:[Landroid/view/View;

.field private final mPanels:[Landroid/view/View;

.field private final mPos:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x5

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->MAX_PANELS:I

    .line 31
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    .line 32
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x5

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->MAX_PANELS:I

    .line 31
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    .line 32
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    .line 41
    return-void
.end method

.method private eventInside(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 80
    .local v5, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 82
    .local v6, y:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPos:[I

    .line 83
    .local v2, p:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 85
    aget v1, v2, v9

    .line 86
    .local v1, l:I
    aget v4, v2, v10

    .line 87
    .local v4, t:I
    aget v7, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int v3, v7, v8

    .line 88
    .local v3, r:I
    aget v7, v2, v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 90
    .local v0, b:I
    if-lt v5, v1, :cond_0

    if-ge v5, v3, :cond_0

    if-lt v6, v4, :cond_0

    if-ge v6, v0, :cond_0

    move v7, v10

    :goto_0
    return v7

    :cond_0
    move v7, v9

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x411

    const/16 v3, 0x3fd

    const/16 v2, 0x3e9

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->eventInside(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 74
    .end local v0           #i:I
    :goto_1
    return v1

    .line 58
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0           #i:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method public setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "index"
    .parameter "ignore"
    .parameter "panel"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mIgnoreChildren:[Landroid/view/View;

    aput-object p2, v0, p1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->mPanels:[Landroid/view/View;

    aput-object p3, v0, p1

    .line 100
    return-void
.end method
