.class Landroid/view/SurfaceView$4;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 12
    .parameter "dirty"

    .prologue
    .line 756
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v6, v6, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v6, :cond_3c

    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v6, :cond_3c

    .line 763
    if-nez p1, :cond_34

    .line 764
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    if-nez v6, :cond_25

    .line 765
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    .line 767
    :cond_25
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 768
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object p1, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    .line 772
    :cond_34
    :try_start_34
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_48

    move-result-object v0

    .line 779
    :cond_3c
    :goto_3c
    if-eqz v0, :cond_52

    .line 780
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    move-object v6, v0

    .line 799
    :goto_47
    return-object v6

    .line 773
    :catch_48
    move-exception v6

    move-object v1, v6

    .line 774
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SurfaceHolder"

    const-string v7, "Exception locking surface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 787
    .end local v1           #e:Ljava/lang/Exception;
    :cond_52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 788
    .local v4, now:J
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-wide v6, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v8, 0x64

    add-long v2, v6, v8

    .line 789
    .local v2, nextTime:J
    cmp-long v6, v2, v4

    if-lez v6, :cond_6b

    .line 791
    sub-long v6, v2, v4

    :try_start_64
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_78

    .line 794
    :goto_67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 796
    :cond_6b
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput-wide v4, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 797
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 799
    const/4 v6, 0x0

    goto :goto_47

    .line 792
    :catch_78
    move-exception v6

    goto :goto_67
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 692
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 695
    :try_start_5
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 696
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_16
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .registers 2

    .prologue
    .line 688
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .parameter "dirty"

    .prologue
    .line 752
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 702
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 703
    :try_start_5
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 704
    monitor-exit v0

    .line 705
    return-void

    .line 704
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setFixedSize(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 708
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_c

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_19

    .line 709
    :cond_c
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 710
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 711
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 713
    :cond_19
    return-void
.end method

.method public setFormat(I)V
    .registers 4
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 726
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 727
    const/4 p1, 0x4

    .line 729
    :cond_5
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 730
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_14

    .line 731
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #calls: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    .line 733
    :cond_14
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 5
    .parameter "screenOn"

    .prologue
    const/4 v2, 0x1

    .line 742
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 743
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_16

    move v1, v2

    :goto_c
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 744
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 745
    return-void

    .line 743
    :cond_16
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setSizeFromLayout()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 716
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v2, :cond_1a

    .line 717
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 718
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 720
    :cond_1a
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 739
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 803
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 804
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 805
    return-void
.end method
