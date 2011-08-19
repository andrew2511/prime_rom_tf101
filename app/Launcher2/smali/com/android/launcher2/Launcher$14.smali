.class Lcom/android/launcher2/Launcher$14;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->cameraZoomOut(Lcom/android/launcher2/Launcher$State;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$scale:F

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2773
    iput-object p1, p0, Lcom/android/launcher2/Launcher$14;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$14;->val$toView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher2/Launcher$14;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/high16 v5, 0x3f80

    .line 2775
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2776
    .local v1, b:F
    sub-float v0, v5, v1

    .line 2777
    .local v0, a:F
    iget-object v2, p0, Lcom/android/launcher2/Launcher$14;->val$toView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->fastInvalidate()V

    .line 2778
    iget-object v2, p0, Lcom/android/launcher2/Launcher$14;->val$toView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher2/Launcher$14;->val$scale:F

    mul-float/2addr v3, v0

    mul-float v4, v1, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setFastScaleX(F)V

    .line 2779
    iget-object v2, p0, Lcom/android/launcher2/Launcher$14;->val$toView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher2/Launcher$14;->val$scale:F

    mul-float/2addr v3, v0

    mul-float v4, v1, v5

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setFastScaleY(F)V

    .line 2780
    return-void
.end method
