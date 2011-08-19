.class Lcom/android/videoeditor/VideoEditorActivity$6;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/videoeditor/VideoEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/videoeditor/VideoEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/videoeditor/VideoEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 453
    :goto_0
    return v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v0

    float-to-int v1, p3

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->fling(I)V

    .line 453
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$300(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;->access$400(Lcom/android/videoeditor/VideoEditorActivity$PreviewThread;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 467
    :goto_0
    return v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/VideoEditorActivity$6;->this$0:Lcom/android/videoeditor/VideoEditorActivity;

    invoke-static {v0}, Lcom/android/videoeditor/VideoEditorActivity;->access$100(Lcom/android/videoeditor/VideoEditorActivity;)Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    move-result-object v0

    float-to-int v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->scrollBy(II)V

    .line 467
    const/4 v0, 0x1

    goto :goto_0
.end method
