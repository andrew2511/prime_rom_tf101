.class public Lcom/android/videoeditor/widgets/PreviewSurfaceView;
.super Landroid/view/SurfaceView;
.source "PreviewSurfaceView.java"


# instance fields
.field private mSimpleGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/PreviewSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public setGestureListener(Landroid/view/GestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/videoeditor/widgets/PreviewSurfaceView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    .line 57
    return-void
.end method
