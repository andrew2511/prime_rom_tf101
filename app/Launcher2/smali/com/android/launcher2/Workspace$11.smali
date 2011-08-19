.class Lcom/android/launcher2/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->animateViewIntoPosition(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$dx:I

.field final synthetic val$dy:I

.field final synthetic val$fromX:I

.field final synthetic val$fromY:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/View;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2260
    iput-object p1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$11;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher2/Workspace$11;->val$fromX:I

    iput p4, p0, Lcom/android/launcher2/Workspace$11;->val$dx:I

    iput p5, p0, Lcom/android/launcher2/Workspace$11;->val$fromY:I

    iput p6, p0, Lcom/android/launcher2/Workspace$11;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .parameter "animation"

    .prologue
    const/high16 v9, 0x3f00

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2262
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2264
    .local v0, percent:F
    iget-object v1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v3

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v4

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/launcher2/Workspace$11;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v5

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/launcher2/Workspace$11;->val$view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/Workspace;->invalidate(IIII)V

    .line 2267
    iget-object v1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/Workspace$11;->val$fromX:I

    iget v3, p0, Lcom/android/launcher2/Workspace$11;->val$dx:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v9

    float-to-int v3, v3

    add-int/2addr v2, v3

    aput v2, v1, v7

    .line 2268
    iget-object v1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/Workspace$11;->val$fromY:I

    iget v3, p0, Lcom/android/launcher2/Workspace$11;->val$dy:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v9

    float-to-int v3, v3

    add-int/2addr v2, v3

    aput v2, v1, v8

    .line 2269
    iget-object v1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v3

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v4

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/launcher2/Workspace$11;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;)[I

    move-result-object v5

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/launcher2/Workspace$11;->val$view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/Workspace;->invalidate(IIII)V

    .line 2271
    return-void
.end method
