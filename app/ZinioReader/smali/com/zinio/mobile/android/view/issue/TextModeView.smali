.class public Lcom/zinio/mobile/android/view/issue/TextModeView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Landroid/webkit/WebView;->onFinishInflate()V

    .line 49
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/TextModeView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/zinio/mobile/android/view/issue/m;

    invoke-direct {v2, p0}, Lcom/zinio/mobile/android/view/issue/m;-><init>(Lcom/zinio/mobile/android/view/issue/TextModeView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/TextModeView;->a:Landroid/view/GestureDetector;

    .line 50
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 133
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/TextModeView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 134
    const/4 v0, 0x1

    return v0
.end method
