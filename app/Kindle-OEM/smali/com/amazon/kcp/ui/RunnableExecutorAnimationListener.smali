.class public Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;
.super Ljava/lang/Object;
.source "RunnableExecutorAnimationListener.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private onFinishRunnable:Ljava/lang/Runnable;

.field private onRepeatRunnable:Ljava/lang/Runnable;

.field private onStartRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "onStartRunnable"
    .parameter "onRepeatRunnable"
    .parameter "onFinishRunnable"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onStartRunnable:Ljava/lang/Runnable;

    .line 32
    iput-object p2, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onRepeatRunnable:Ljava/lang/Runnable;

    .line 33
    iput-object p3, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onFinishRunnable:Ljava/lang/Runnable;

    .line 34
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onFinishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onRepeatRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onRepeatRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;->onStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 43
    :cond_0
    return-void
.end method
