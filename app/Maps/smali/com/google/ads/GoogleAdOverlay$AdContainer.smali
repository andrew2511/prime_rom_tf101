.class Lcom/google/ads/GoogleAdOverlay$AdContainer;
.super Landroid/widget/FrameLayout;
.source "GoogleAdOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/GoogleAdOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/GoogleAdOverlay;


# direct methods
.method public constructor <init>(Lcom/google/ads/GoogleAdOverlay;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/ads/GoogleAdOverlay$AdContainer;->this$0:Lcom/google/ads/GoogleAdOverlay;

    .line 67
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/ads/GoogleAdOverlay$AdContainer;->this$0:Lcom/google/ads/GoogleAdOverlay;

    invoke-static {v0}, Lcom/google/ads/GoogleAdOverlay;->access$100(Lcom/google/ads/GoogleAdOverlay;)V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 73
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 75
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/GoogleAdOverlay$AdContainer;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/GoogleAdOverlay$AdContainer;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/google/ads/GoogleAdOverlay$AdContainer;->this$0:Lcom/google/ads/GoogleAdOverlay;

    invoke-static {v2, v0, v1}, Lcom/google/ads/GoogleAdOverlay;->access$000(Lcom/google/ads/GoogleAdOverlay;II)V

    move v2, v4

    .line 83
    :goto_0
    return v2

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 80
    iget-object v2, p0, Lcom/google/ads/GoogleAdOverlay$AdContainer;->this$0:Lcom/google/ads/GoogleAdOverlay;

    invoke-static {v2, v0, v1}, Lcom/google/ads/GoogleAdOverlay;->access$000(Lcom/google/ads/GoogleAdOverlay;II)V

    move v2, v4

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method
