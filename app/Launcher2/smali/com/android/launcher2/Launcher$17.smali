.class Lcom/android/launcher2/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->cameraZoomIn(Lcom/android/launcher2/Launcher$State;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$oldScaleX:F

.field final synthetic val$oldScaleY:F

.field final synthetic val$scaleFactor:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;FFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2897
    iput-object p1, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$17;->val$fromView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher2/Launcher$17;->val$oldScaleX:F

    iput p4, p0, Lcom/android/launcher2/Launcher$17;->val$scaleFactor:F

    iput p5, p0, Lcom/android/launcher2/Launcher$17;->val$oldScaleY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 2899
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2900
    .local v1, b:F
    const/high16 v2, 0x3f80

    sub-float v0, v2, v1

    .line 2901
    .local v0, a:F
    iget-object v2, p0, Lcom/android/launcher2/Launcher$17;->val$fromView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->fastInvalidate()V

    .line 2902
    iget-object v2, p0, Lcom/android/launcher2/Launcher$17;->val$fromView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher2/Launcher$17;->val$oldScaleX:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/Launcher$17;->val$scaleFactor:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setFastScaleX(F)V

    .line 2903
    iget-object v2, p0, Lcom/android/launcher2/Launcher$17;->val$fromView:Landroid/view/View;

    iget v3, p0, Lcom/android/launcher2/Launcher$17;->val$oldScaleY:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/android/launcher2/Launcher$17;->val$scaleFactor:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setFastScaleY(F)V

    .line 2904
    return-void
.end method
