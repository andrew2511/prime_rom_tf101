.class Lcom/android/gallery3d/app/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 450
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2, p3}, Lcom/android/gallery3d/app/VideoView;->access$1002(Lcom/android/gallery3d/app/VideoView;I)I

    .line 451
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2, p4}, Lcom/android/gallery3d/app/VideoView;->access$1102(Lcom/android/gallery3d/app/VideoView;I)I

    .line 452
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1200(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    move v1, v5

    .line 453
    .local v1, isValidState:Z
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$000(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    if-ne v2, p3, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$100(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    if-ne v2, p4, :cond_4

    move v0, v5

    .line 454
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$700(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 455
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$900(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v3}, Lcom/android/gallery3d/app/VideoView;->access$900(Lcom/android/gallery3d/app/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/VideoView;->seekTo(I)V

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoView;->start()V

    .line 459
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MediaController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MediaController;->hide()V

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MediaController;->show()V

    .line 467
    :cond_2
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_3
    move v1, v4

    .line 452
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_4
    move v0, v4

    .line 453
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0, p1}, Lcom/android/gallery3d/app/VideoView;->access$1902(Lcom/android/gallery3d/app/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 472
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0}, Lcom/android/gallery3d/app/VideoView;->access$2000(Lcom/android/gallery3d/app/VideoView;)V

    .line 473
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/VideoView;->access$1902(Lcom/android/gallery3d/app/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 479
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v0}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/app/MediaController;->hide()V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/VideoView$6;->this$0:Lcom/android/gallery3d/app/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/VideoView;->access$2100(Lcom/android/gallery3d/app/VideoView;Z)V

    .line 481
    return-void
.end method
