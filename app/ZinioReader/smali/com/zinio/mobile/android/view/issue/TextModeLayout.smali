.class public Lcom/zinio/mobile/android/view/issue/TextModeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x36

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->b:I

    .line 35
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/zinio/mobile/android/view/issue/k;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/issue/k;-><init>(Lcom/zinio/mobile/android/view/issue/TextModeLayout;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->a:Landroid/view/GestureDetector;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/issue/TextModeLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->b:I

    return v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/issue/TextModeLayout;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->c:I

    return v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 48
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 57
    iput p2, p0, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->c:I

    .line 58
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/TextModeLayout;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 42
    const/4 v0, 0x1

    return v0
.end method
