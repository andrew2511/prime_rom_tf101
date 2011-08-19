.class Lcom/google/android/music/TransitionableViewWrapper$2;
.super Ljava/lang/Object;
.source "TransitionableViewWrapper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TransitionableViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TransitionableViewWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/music/TransitionableViewWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/music/TransitionableViewWrapper$2;->this$0:Lcom/google/android/music/TransitionableViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/music/TransitionableViewWrapper$2;->this$0:Lcom/google/android/music/TransitionableViewWrapper;

    invoke-static {v0}, Lcom/google/android/music/TransitionableViewWrapper;->access$000(Lcom/google/android/music/TransitionableViewWrapper;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 36
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 34
    return-void
.end method
