.class Lcom/android/launcher2/ApplicationInfoDropTarget$2;
.super Ljava/lang/Object;
.source "ApplicationInfoDropTarget.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/ApplicationInfoDropTarget;->onDragEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/ApplicationInfoDropTarget;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ApplicationInfoDropTarget;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/launcher2/ApplicationInfoDropTarget$2;->this$0:Lcom/android/launcher2/ApplicationInfoDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onEndOrCancel()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfoDropTarget$2;->this$0:Lcom/android/launcher2/ApplicationInfoDropTarget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ApplicationInfoDropTarget;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/android/launcher2/ApplicationInfoDropTarget$2;->this$0:Lcom/android/launcher2/ApplicationInfoDropTarget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/ApplicationInfoDropTarget;->access$002(Lcom/android/launcher2/ApplicationInfoDropTarget;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 158
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/launcher2/ApplicationInfoDropTarget$2;->onEndOrCancel()V

    .line 154
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/launcher2/ApplicationInfoDropTarget$2;->onEndOrCancel()V

    .line 151
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 148
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 147
    return-void
.end method
