.class final Lcom/zinio/mobile/android/view/issue/m;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/issue/TextModeView;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/issue/TextModeView;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/m;->a:Lcom/zinio/mobile/android/view/issue/TextModeView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/m;->a:Lcom/zinio/mobile/android/view/issue/TextModeView;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/TextModeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fe5559b3d07c84bL

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/m;->a:Lcom/zinio/mobile/android/view/issue/TextModeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/TextModeView;->pageDown(Z)Z

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 76
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/m;->a:Lcom/zinio/mobile/android/view/issue/TextModeView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/m;->a:Lcom/zinio/mobile/android/view/issue/TextModeView;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/issue/TextModeView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/TextModeView;->showContextMenuForChild(Landroid/view/View;)Z

    .line 78
    return-void
.end method
