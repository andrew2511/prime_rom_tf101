.class Lcom/android/videoeditor/widgets/OverlayView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OverlayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/widgets/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/widgets/OverlayView;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/widgets/OverlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 79
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayView;->access$000(Lcom/android/videoeditor/widgets/OverlayView;)Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayView;->access$000(Lcom/android/videoeditor/widgets/OverlayView;)Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-interface {v0, v1, p1}, Lcom/android/videoeditor/widgets/ItemMoveGestureListener;->onLongPress(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 85
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayView;->access$100(Lcom/android/videoeditor/widgets/OverlayView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayView;->access$000(Lcom/android/videoeditor/widgets/OverlayView;)Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-interface {v0, v1, p1}, Lcom/android/videoeditor/widgets/ItemMoveGestureListener;->onMoveBegin(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-static {v0, v2}, Lcom/android/videoeditor/widgets/OverlayView;->access$202(Lcom/android/videoeditor/widgets/OverlayView;Z)Z

    .line 89
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayView;->invalidate()V

    .line 91
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/videoeditor/widgets/OverlayView;->access$302(Lcom/android/videoeditor/widgets/OverlayView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 92
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/OverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayView;->access$000(Lcom/android/videoeditor/widgets/OverlayView;)Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    invoke-static {v0}, Lcom/android/videoeditor/widgets/OverlayView;->access$000(Lcom/android/videoeditor/widgets/OverlayView;)Lcom/android/videoeditor/widgets/ItemMoveGestureListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videoeditor/widgets/OverlayView$1;->this$0:Lcom/android/videoeditor/widgets/OverlayView;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/android/videoeditor/widgets/ItemMoveGestureListener;->onSingleTapConfirmed(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
