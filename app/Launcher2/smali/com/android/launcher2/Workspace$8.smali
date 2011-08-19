.class Lcom/android/launcher2/Workspace$8;
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

.field final synthetic val$newAlphas:[F

.field final synthetic val$newBackgroundAlphaMultipliers:[F

.field final synthetic val$newBackgroundAlphas:[F

.field final synthetic val$newHorizontalWallpaperOffset:F

.field final synthetic val$newScaleXs:[F

.field final synthetic val$newScaleYs:[F

.field final synthetic val$newTranslationXs:[F

.field final synthetic val$newTranslationYs:[F

.field final synthetic val$oldAlphas:[F

.field final synthetic val$oldBackgroundAlphaMultipliers:[F

.field final synthetic val$oldBackgroundAlphas:[F

.field final synthetic val$oldHorizontalWallpaperOffset:F

.field final synthetic val$oldScaleXs:[F

.field final synthetic val$oldScaleYs:[F

.field final synthetic val$oldTranslationXs:[F

.field final synthetic val$oldTranslationYs:[F

.field final synthetic val$oldVerticalWallpaperOffset:F

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
    .line 1964
    iput-object p1, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    iput p2, p0, Lcom/android/launcher2/Workspace$8;->val$oldHorizontalWallpaperOffset:F

    iput p3, p0, Lcom/android/launcher2/Workspace$8;->val$newHorizontalWallpaperOffset:F

    iput p4, p0, Lcom/android/launcher2/Workspace$8;->val$oldVerticalWallpaperOffset:F

    iput p5, p0, Lcom/android/launcher2/Workspace$8;->val$screenCount:I

    iput-object p6, p0, Lcom/android/launcher2/Workspace$8;->val$oldTranslationXs:[F

    iput-object p7, p0, Lcom/android/launcher2/Workspace$8;->val$newTranslationXs:[F

    iput-object p8, p0, Lcom/android/launcher2/Workspace$8;->val$oldTranslationYs:[F

    iput-object p9, p0, Lcom/android/launcher2/Workspace$8;->val$newTranslationYs:[F

    iput-object p10, p0, Lcom/android/launcher2/Workspace$8;->val$oldScaleXs:[F

    iput-object p11, p0, Lcom/android/launcher2/Workspace$8;->val$newScaleXs:[F

    iput-object p12, p0, Lcom/android/launcher2/Workspace$8;->val$oldScaleYs:[F

    iput-object p13, p0, Lcom/android/launcher2/Workspace$8;->val$newScaleYs:[F

    move-object/from16 v0, p14

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$8;->val$oldBackgroundAlphas:[F

    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$8;->val$newBackgroundAlphas:[F

    move-object/from16 v0, p16

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$8;->val$oldBackgroundAlphaMultipliers:[F

    move-object/from16 v0, p17

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$8;->val$newBackgroundAlphaMultipliers:[F

    move-object/from16 v0, p18

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$8;->val$oldAlphas:[F

    move-object/from16 v0, p19

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace$8;->val$newAlphas:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 1966
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1967
    .local v1, b:F
    const/high16 v4, 0x3f80

    sub-float v0, v4, v1

    .line 1968
    .local v0, a:F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    .line 1992
    :cond_0
    return-void

    .line 1972
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->fastInvalidate()V

    .line 1973
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    iget v5, p0, Lcom/android/launcher2/Workspace$8;->val$oldHorizontalWallpaperOffset:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/android/launcher2/Workspace$8;->val$newHorizontalWallpaperOffset:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->setHorizontalWallpaperOffset(F)V

    .line 1975
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    iget v5, p0, Lcom/android/launcher2/Workspace$8;->val$oldVerticalWallpaperOffset:F

    mul-float/2addr v5, v0

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace;->setVerticalWallpaperOffset(F)V

    .line 1977
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/Workspace$8;->val$screenCount:I

    if-ge v3, v4, :cond_0

    .line 1978
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1979
    .local v2, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1980
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->val$oldTranslationXs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$8;->val$newTranslationXs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastTranslationX(F)V

    .line 1982
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->val$oldTranslationYs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$8;->val$newTranslationYs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastTranslationY(F)V

    .line 1984
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->val$oldScaleXs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$8;->val$newScaleXs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastScaleX(F)V

    .line 1985
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->val$oldScaleYs:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$8;->val$newScaleYs:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastScaleY(F)V

    .line 1986
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->val$oldBackgroundAlphas:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$8;->val$newBackgroundAlphas:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastBackgroundAlpha(F)V

    .line 1988
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->val$oldBackgroundAlphaMultipliers:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$8;->val$newBackgroundAlphaMultipliers:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1990
    iget-object v4, p0, Lcom/android/launcher2/Workspace$8;->val$oldAlphas:[F

    aget v4, v4, v3

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/launcher2/Workspace$8;->val$newAlphas:[F

    aget v5, v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1977
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
