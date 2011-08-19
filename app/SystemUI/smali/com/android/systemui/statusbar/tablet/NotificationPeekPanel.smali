.class public Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;
.super Landroid/widget/RelativeLayout;
.source "NotificationPeekPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# instance fields
.field mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public isInContentArea(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getPaddingLeft()I

    move-result v1

    .line 40
    .local v1, l:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 41
    .local v2, r:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getPaddingTop()I

    move-result v3

    .line 42
    .local v3, t:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 43
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->resetNotificationPeekFadeTimer()V

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 48
    return-void
.end method
