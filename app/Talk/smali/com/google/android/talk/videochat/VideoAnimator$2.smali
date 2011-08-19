.class Lcom/google/android/talk/videochat/VideoAnimator$2;
.super Ljava/lang/Object;
.source "VideoAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoAnimator;-><init>(Landroid/content/Context;ZLcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoAnimator;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoAnimator$2;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 201
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator$2;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->access$002(Lcom/google/android/talk/videochat/VideoAnimator;Z)Z

    .line 196
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator$2;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->access$100(Lcom/google/android/talk/videochat/VideoAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator$2;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->access$200(Lcom/google/android/talk/videochat/VideoAnimator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 198
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoAnimator$2;->this$0:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->access$002(Lcom/google/android/talk/videochat/VideoAnimator;Z)Z

    .line 200
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 202
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 203
    return-void
.end method
