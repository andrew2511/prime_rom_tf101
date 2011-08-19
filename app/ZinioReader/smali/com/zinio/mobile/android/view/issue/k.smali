.class final Lcom/zinio/mobile/android/view/issue/k;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field private a:Z

.field private synthetic b:Lcom/zinio/mobile/android/view/issue/TextModeLayout;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/issue/TextModeLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/k;->b:Lcom/zinio/mobile/android/view/issue/TextModeLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/k;->a:Z

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/k;->a:Z

    .line 88
    return v0
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/k;->a:Z

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/k;->b:Lcom/zinio/mobile/android/view/issue/TextModeLayout;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->a(Lcom/zinio/mobile/android/view/issue/TextModeLayout;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/k;->b:Lcom/zinio/mobile/android/view/issue/TextModeLayout;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->b(Lcom/zinio/mobile/android/view/issue/TextModeLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/k;->b:Lcom/zinio/mobile/android/view/issue/TextModeLayout;

    invoke-static {v2}, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->a(Lcom/zinio/mobile/android/view/issue/TextModeLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/k;->b:Lcom/zinio/mobile/android/view/issue/TextModeLayout;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/IssueTextModeActivity;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/IssueTextModeActivity;->b()V

    .line 77
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    iput-boolean v3, p0, Lcom/zinio/mobile/android/view/issue/k;->a:Z

    move v0, v3

    .line 82
    goto :goto_0
.end method
