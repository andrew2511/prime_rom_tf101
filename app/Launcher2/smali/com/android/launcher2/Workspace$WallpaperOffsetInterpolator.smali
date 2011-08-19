.class Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperOffsetInterpolator"
.end annotation


# instance fields
.field mFinalHorizontalWallpaperOffset:F

.field mFinalVerticalWallpaperOffset:F

.field mHorizontalCatchupConstant:F

.field mHorizontalWallpaperOffset:F

.field mIsMovingFast:Z

.field mLastWallpaperOffsetUpdateTime:J

.field mOverrideHorizontalCatchupConstant:Z

.field mVerticalCatchupConstant:F

.field mVerticalWallpaperOffset:F

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f00

    const v1, 0x3eb33333

    const/4 v0, 0x0

    .line 841
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    .line 832
    iput v2, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 833
    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 834
    iput v2, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 838
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    .line 839
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    .line 842
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 23

    .prologue
    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Float;->compare(FF)I

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Float;->compare(FF)I

    move-result v19

    if-nez v19, :cond_0

    .line 859
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    .line 860
    const/16 v19, 0x0

    .line 908
    :goto_0
    return v19

    .line 862
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 863
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v19

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    const/16 v19, 0x1

    move/from16 v11, v19

    .line 865
    .local v11, isLandscape:Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 866
    .local v5, currentTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    move-wide/from16 v19, v0

    sub-long v15, v5, v19

    .line 867
    .local v15, timeSinceLastUpdate:J
    const-wide/16 v19, 0x21

    move-wide/from16 v0, v19

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 868
    const-wide/16 v19, 0x1

    move-wide/from16 v0, v19

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 870
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 871
    .local v18, xdiff:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fb1eb851eb851ecL

    cmpl-double v19, v19, v21

    if-lez v19, :cond_1

    .line 872
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    .line 876
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 877
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    move v8, v0

    .line 884
    .local v8, fractionToCatchUpIn1MsHorizontal:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    move v9, v0

    .line 887
    .local v9, fractionToCatchUpIn1MsVertical:F
    const/high16 v19, 0x4204

    div-float v8, v8, v19

    .line 888
    const/high16 v19, 0x4204

    div-float v9, v9, v19

    .line 890
    const v4, 0x3727c5ac

    .line 891
    .local v4, UPDATE_THRESHOLD:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v20, v0

    sub-float v10, v19, v20

    .line 892
    .local v10, hOffsetDelta:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v20, v0

    sub-float v17, v19, v20

    .line 893
    .local v17, vOffsetDelta:F
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x3727c5ac

    cmpg-float v19, v19, v20

    if-gez v19, :cond_7

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const v20, 0x3727c5ac

    cmpg-float v19, v19, v20

    if-gez v19, :cond_7

    const/16 v19, 0x1

    move/from16 v12, v19

    .line 895
    .local v12, jumpToFinalValue:Z
    :goto_3
    if-eqz v12, :cond_8

    .line 896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 897
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 907
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    .line 908
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 863
    .end local v4           #UPDATE_THRESHOLD:F
    .end local v5           #currentTime:J
    .end local v8           #fractionToCatchUpIn1MsHorizontal:F
    .end local v9           #fractionToCatchUpIn1MsVertical:F
    .end local v10           #hOffsetDelta:F
    .end local v11           #isLandscape:Z
    .end local v12           #jumpToFinalValue:Z
    .end local v15           #timeSinceLastUpdate:J
    .end local v17           #vOffsetDelta:F
    .end local v18           #xdiff:F
    :cond_2
    const/16 v19, 0x0

    move/from16 v11, v19

    goto/16 :goto_1

    .line 878
    .restart local v5       #currentTime:J
    .restart local v11       #isLandscape:Z
    .restart local v15       #timeSinceLastUpdate:J
    .restart local v18       #xdiff:F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 879
    if-eqz v11, :cond_4

    const/high16 v19, 0x3f00

    move/from16 v8, v19

    .restart local v8       #fractionToCatchUpIn1MsHorizontal:F
    :goto_5
    goto/16 :goto_2

    .end local v8           #fractionToCatchUpIn1MsHorizontal:F
    :cond_4
    const/high16 v19, 0x3f40

    move/from16 v8, v19

    goto :goto_5

    .line 882
    :cond_5
    if-eqz v11, :cond_6

    const v19, 0x3e8a3d71

    move/from16 v8, v19

    .restart local v8       #fractionToCatchUpIn1MsHorizontal:F
    :goto_6
    goto/16 :goto_2

    .end local v8           #fractionToCatchUpIn1MsHorizontal:F
    :cond_6
    const/high16 v19, 0x3f00

    move/from16 v8, v19

    goto :goto_6

    .line 893
    .restart local v4       #UPDATE_THRESHOLD:F
    .restart local v8       #fractionToCatchUpIn1MsHorizontal:F
    .restart local v9       #fractionToCatchUpIn1MsVertical:F
    .restart local v10       #hOffsetDelta:F
    .restart local v17       #vOffsetDelta:F
    :cond_7
    const/16 v19, 0x0

    move/from16 v12, v19

    goto :goto_3

    .line 899
    .restart local v12       #jumpToFinalValue:Z
    :cond_8
    const/high16 v19, 0x3f80

    move-wide v0, v15

    long-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v9

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 901
    .local v14, percentToCatchUpVertical:F
    const/high16 v19, 0x3f80

    move-wide v0, v15

    long-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 903
    .local v13, percentToCatchUpHorizontal:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v19, v0

    mul-float v20, v13, v10

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v19, v0

    mul-float v20, v14, v17

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    goto :goto_4
.end method

.method public getCurrX()F
    .locals 1

    .prologue
    .line 912
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    return v0
.end method

.method public getCurrY()F
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    .line 937
    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    .line 938
    return-void
.end method

.method public setFinalX(F)V
    .locals 2
    .parameter "x"

    .prologue
    .line 928
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    .line 929
    return-void
.end method

.method public setFinalY(F)V
    .locals 2
    .parameter "y"

    .prologue
    .line 932
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    .line 933
    return-void
.end method

.method public setHorizontalCatchupConstant(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 849
    iput p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    .line 850
    return-void
.end method

.method public setOverrideHorizontalCatchupConstant(Z)V
    .locals 0
    .parameter "override"

    .prologue
    .line 845
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    .line 846
    return-void
.end method

.method public setVerticalCatchupConstant(F)V
    .locals 0
    .parameter "f"

    .prologue
    .line 853
    iput p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    .line 854
    return-void
.end method
