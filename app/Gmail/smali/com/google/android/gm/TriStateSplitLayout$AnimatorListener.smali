.class abstract Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;
.super Ljava/lang/Object;
.source "TriStateSplitLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/TriStateSplitLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/TriStateSplitLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/TriStateSplitLayout;Lcom/google/android/gm/TriStateSplitLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 957
    invoke-direct {p0, p1}, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 962
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling animation (this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->access$802(Lcom/google/android/gm/TriStateSplitLayout;Z)Z

    .line 969
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->access$902(Lcom/google/android/gm/TriStateSplitLayout;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 970
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->this$0:Lcom/google/android/gm/TriStateSplitLayout;

    invoke-static {v0}, Lcom/google/android/gm/TriStateSplitLayout;->access$1000(Lcom/google/android/gm/TriStateSplitLayout;)V

    .line 971
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;->onFinish()V

    .line 972
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 959
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 958
    return-void
.end method

.method public abstract onFinish()V
.end method
