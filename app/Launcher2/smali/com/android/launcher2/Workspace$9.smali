.class Lcom/android/launcher2/Workspace$9;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->unshrink(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$newRotationYs:[F

.field final synthetic val$oldRotationYs:[F

.field final synthetic val$screenCount:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;I[F[F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1998
    iput-object p1, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    iput p2, p0, Lcom/android/launcher2/Workspace$9;->val$screenCount:I

    iput-object p3, p0, Lcom/android/launcher2/Workspace$9;->val$oldRotationYs:[F

    iput-object p4, p0, Lcom/android/launcher2/Workspace$9;->val$newRotationYs:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    .line 2001
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2002
    .local v1, b:F
    const/high16 v4, 0x3f80

    sub-float v0, v4, v1

    .line 2003
    .local v0, a:F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    .line 2011
    :cond_0
    return-void

    .line 2007
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/Workspace$9;->val$screenCount:I

    if-ge v3, v4, :cond_0

    .line 2008
    iget-object v4, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2009
    .local v2, cl:Lcom/android/launcher2/CellLayout;
    iget-object v4, p0, Lcom/android/launcher2/Workspace$9;->val$oldRotationYs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$9;->val$newRotationYs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastRotationY(F)V

    .line 2007
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
