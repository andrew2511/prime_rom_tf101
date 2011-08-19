.class Lcom/android/launcher2/Launcher$15;
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

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2787
    iput-object p1, p0, Lcom/android/launcher2/Launcher$15;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$15;->val$toView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/high16 v4, 0x3f80

    .line 2789
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2790
    .local v1, b:F
    sub-float v0, v4, v1

    .line 2792
    .local v0, a:F
    iget-object v2, p0, Lcom/android/launcher2/Launcher$15;->val$toView:Landroid/view/View;

    const/4 v3, 0x0

    mul-float/2addr v3, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setFastAlpha(F)V

    .line 2793
    return-void
.end method
