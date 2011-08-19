.class Lcom/android/gallery3d/ui/GLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field protected mActive:Z

.field final synthetic this$0:Lcom/android/gallery3d/ui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/GLRootView;)V
    .locals 1
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/GLRootView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/android/gallery3d/ui/GLRootView;)V

    return-void
.end method

.method private runInternal()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$100(Lcom/android/gallery3d/ui/GLRootView;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 380
    :goto_0
    return v1

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;

    .line 377
    .local v0, listener:Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/GLRootView;->access$300(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/android/gallery3d/ui/GLRoot;Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLRootView;->access$400(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 386
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->runInternal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 387
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/GLRootView;->access$400(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 391
    return-void

    .line 389
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->this$0:Lcom/android/gallery3d/ui/GLRootView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/GLRootView;->access$400(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
