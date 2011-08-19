.class Lcom/android/launcher2/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragView;

.field final synthetic val$offsetX:I

.field final synthetic val$offsetY:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iput p2, p0, Lcom/android/launcher2/DragView$1;->val$offsetX:I

    iput p3, p0, Lcom/android/launcher2/DragView$1;->val$offsetY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 102
    .local v3, value:F
    iget v4, p0, Lcom/android/launcher2/DragView$1;->val$offsetX:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {v5}, Lcom/android/launcher2/DragView;->access$000(Lcom/android/launcher2/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 103
    .local v0, deltaX:I
    iget v4, p0, Lcom/android/launcher2/DragView$1;->val$offsetY:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    iget-object v5, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {v5}, Lcom/android/launcher2/DragView;->access$100(Lcom/android/launcher2/DragView;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 105
    .local v1, deltaY:I
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    int-to-float v5, v0

    invoke-static {v4, v5}, Lcom/android/launcher2/DragView;->access$016(Lcom/android/launcher2/DragView;F)F

    .line 106
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/android/launcher2/DragView;->access$116(Lcom/android/launcher2/DragView;F)F

    .line 108
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Lcom/android/launcher2/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {v4}, Lcom/android/launcher2/DragView;->access$200(Lcom/android/launcher2/DragView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 112
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v4, v0

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 113
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 114
    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {v4}, Lcom/android/launcher2/DragView;->access$300(Lcom/android/launcher2/DragView;)Landroid/view/WindowManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
