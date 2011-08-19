.class Lcom/android/launcher2/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->shrink(Lcom/android/launcher2/Workspace$ShrinkState;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$newAlphas:[F

.field final synthetic val$newBackgroundAlphas:[F

.field final synthetic val$newRotationYs:[F

.field final synthetic val$newScaleXs:[F

.field final synthetic val$newScaleYs:[F

.field final synthetic val$newVerticalWallpaperOffset:F

.field final synthetic val$newXs:[F

.field final synthetic val$newYs:[F

.field final synthetic val$oldAlphas:[F

.field final synthetic val$oldBackgroundAlphas:[F

.field final synthetic val$oldHorizontalWallpaperOffset:F

.field final synthetic val$oldRotationYs:[F

.field final synthetic val$oldScaleXs:[F

.field final synthetic val$oldScaleYs:[F

.field final synthetic val$oldVerticalWallpaperOffset:F

.field final synthetic val$oldXs:[F

.field final synthetic val$oldYs:[F

.field final synthetic val$screenCount:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;FFFI[F[F[F[F[F[F[F[F[F[F[F[F[F[F)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    iput p2, p0, Lcom/android/launcher2/Workspace$7;->val$oldHorizontalWallpaperOffset:F

    iput p3, p0, Lcom/android/launcher2/Workspace$7;->val$oldVerticalWallpaperOffset:F

    iput p4, p0, Lcom/android/launcher2/Workspace$7;->val$newVerticalWallpaperOffset:F

    iput p5, p0, Lcom/android/launcher2/Workspace$7;->val$screenCount:I

    iput-object p6, p0, Lcom/android/launcher2/Workspace$7;->val$oldXs:[F

    iput-object p7, p0, Lcom/android/launcher2/Workspace$7;->val$newXs:[F

    iput-object p8, p0, Lcom/android/launcher2/Workspace$7;->val$oldYs:[F

    iput-object p9, p0, Lcom/android/launcher2/Workspace$7;->val$newYs:[F

    iput-object p10, p0, Lcom/android/launcher2/Workspace$7;->val$oldScaleXs:[F

    iput-object p11, p0, Lcom/android/launcher2/Workspace$7;->val$newScaleXs:[F

    iput-object p12, p0, Lcom/android/launcher2/Workspace$7;->val$oldScaleYs:[F

    iput-object p13, p0, Lcom/android/launcher2/Workspace$7;->val$newScaleYs:[F

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$7;->val$oldBackgroundAlphas:[F

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$7;->val$newBackgroundAlphas:[F

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$7;->val$oldAlphas:[F

    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$7;->val$newAlphas:[F

    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$7;->val$oldRotationYs:[F

    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$7;->val$newRotationYs:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 1627
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1628
    .local v1, b:F
    const/high16 v4, 0x3f80

    sub-float v0, v4, v1

    .line 1629
    .local v0, a:F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    .line 1650
    :cond_0
    return-void

    .line 1633
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->fastInvalidate()V

    .line 1634
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    iget v5, p0, Lcom/android/launcher2/Workspace$7;->val$oldHorizontalWallpaperOffset:F

    mul-float/2addr v5, v0

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->setHorizontalWallpaperOffset(F)V

    .line 1636
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    iget v5, p0, Lcom/android/launcher2/Workspace$7;->val$oldVerticalWallpaperOffset:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/android/launcher2/Workspace$7;->val$newVerticalWallpaperOffset:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->setVerticalWallpaperOffset(F)V

    .line 1638
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/Workspace$7;->val$screenCount:I

    if-ge v3, v4, :cond_0

    .line 1639
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1640
    .local v2, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1641
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->val$oldXs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$7;->val$newXs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastX(F)V

    .line 1642
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->val$oldYs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$7;->val$newYs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastY(F)V

    .line 1643
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->val$oldScaleXs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$7;->val$newScaleXs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastScaleX(F)V

    .line 1644
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->val$oldScaleYs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$7;->val$newScaleYs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastScaleY(F)V

    .line 1645
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->val$oldBackgroundAlphas:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$7;->val$newBackgroundAlphas:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastBackgroundAlpha(F)V

    .line 1647
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->val$oldAlphas:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$7;->val$newAlphas:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1648
    iget-object v4, p0, Lcom/android/launcher2/Workspace$7;->val$oldRotationYs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$7;->val$newRotationYs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastRotationY(F)V

    .line 1638
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
