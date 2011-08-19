.class public final Lcom/ecareme/pixwe/media/GridDrawManager;
.super Ljava/lang/Object;
.source "GridDrawManager.java"


# static fields
.field public static final PASS_FOCUS_CONTENT:I = 0x1

.field public static final PASS_FRAME:I = 0x2

.field public static final PASS_FRAME_PLACEHOLDER:I = 0x4

.field public static final PASS_LOCATION_LABEL:I = 0x8

.field public static final PASS_MEDIASET_SOURCE_LABEL:I = 0x9

.field public static final PASS_PLACEHOLDER:I = 0x3

.field public static final PASS_SELECTION_LABEL:I = 0x6

.field public static final PASS_TEXT_LABEL:I = 0x5

.field public static final PASS_THUMBNAIL_CONTENT:I = 0x0

.field public static final PASS_VIDEO_LABEL:I = 0x7

.field private static final sDisplayItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/ecareme/pixwe/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;


# instance fields
.field private mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

.field private final mCamera:Lcom/ecareme/pixwe/media/GridCamera;

.field private mCurrentFocusIsPressed:Z

.field private mCurrentFocusItemHeight:F

.field private mCurrentFocusItemWidth:F

.field private mCurrentFocusSlot:I

.field private mCurrentScaleSlot:I

.field private final mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

.field private final mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

.field private final mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

.field private final mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

.field private mDrawnCounter:I

.field private mFocusMixRatio:F

.field private mHoldPosition:Z

.field private mItemsDrawn:[Lcom/ecareme/pixwe/media/DisplayItem;

.field private final mNoItemsTexture:Lcom/ecareme/pixwe/media/Texture;

.field private mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

.field private final mSelectedMixRatio:Lcom/ecareme/pixwe/media/FloatAnim;

.field private mSelectedSlot:I

.field private mSpreadValue:F

.field private mTargetFocusMixRatio:F

.field private mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/MediaItemTexture$Config;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/GridDrawManager;->sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    .line 67
    new-instance v0, Lcom/ecareme/pixwe/media/GridDrawManager$1;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/GridDrawManager$1;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/GridDrawManager;->sDisplayItemComparator:Ljava/util/Comparator;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/GridDrawables;Lcom/ecareme/pixwe/media/DisplayList;[Lcom/ecareme/pixwe/media/DisplayItem;[Lcom/ecareme/pixwe/media/DisplaySlot;)V
    .locals 4
    .parameter "context"
    .parameter "camera"
    .parameter "drawables"
    .parameter "displayList"
    .parameter "displayItems"
    .parameter "displaySlots"

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v2, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mTargetFocusMixRatio:F

    .line 56
    iput v2, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mFocusMixRatio:F

    .line 57
    new-instance v1, Lcom/ecareme/pixwe/media/FloatAnim;

    invoke-direct {v1, v2}, Lcom/ecareme/pixwe/media/FloatAnim;-><init>(F)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedMixRatio:Lcom/ecareme/pixwe/media/FloatAnim;

    .line 85
    sget-object v1, Lcom/ecareme/pixwe/media/GridDrawManager;->sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    const/16 v2, 0x80

    iput v2, v1, Lcom/ecareme/pixwe/media/MediaItemTexture$Config;->thumbnailWidth:I

    .line 86
    sget-object v1, Lcom/ecareme/pixwe/media/GridDrawManager;->sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    const/16 v2, 0x60

    iput v2, v1, Lcom/ecareme/pixwe/media/MediaItemTexture$Config;->thumbnailHeight:I

    .line 87
    iput-object p5, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    .line 88
    iput-object p6, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

    .line 89
    iput-object p4, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    .line 90
    iput-object p3, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

    .line 91
    iput-object p2, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    .line 92
    const/16 v1, 0xc00

    new-array v1, v1, [Lcom/ecareme/pixwe/media/DisplayItem;

    iput-object v1, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mItemsDrawn:[Lcom/ecareme/pixwe/media/DisplayItem;

    .line 94
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    .line 95
    .local v0, stc:Lcom/ecareme/pixwe/media/StringTexture$Config;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    .line 96
    const/high16 v1, 0x4180

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 97
    const/4 v1, 0x0

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->sizeMode:I

    .line 98
    const/4 v1, 0x2

    iput v1, v0, Lcom/ecareme/pixwe/media/StringTexture$Config;->overflowMode:I

    .line 99
    new-instance v1, Lcom/ecareme/pixwe/media/StringTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mNoItemsTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 101
    return-void
.end method

.method private drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V
    .locals 20
    .parameter "view"
    .parameter "gl"
    .parameter "displayItem"
    .parameter "texture"
    .parameter "pass"
    .parameter "previousTexture"
    .parameter "mixRatio"

    .prologue
    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v7, v0

    .line 744
    .local v7, camera:Lcom/ecareme/pixwe/media/GridCamera;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v5, v0

    .line 745
    .local v5, animatedPosition:Lcom/ecareme/pixwe/media/Vector3f;
    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v16, v0

    move-object v0, v7

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mOneByScale:F

    move/from16 v17, v0

    mul-float v12, v16, v17

    .line 746
    .local v12, translateXf:F
    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move/from16 v16, v0

    move-object v0, v7

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mOneByScale:F

    move/from16 v17, v0

    mul-float v13, v16, v17

    .line 747
    .local v13, translateYf:F
    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move v14, v0

    .line 748
    .local v14, translateZf:F
    invoke-virtual/range {p3 .. p3}, Lcom/ecareme/pixwe/media/DisplayItem;->getStackIndex()I

    move-result v10

    .line 749
    .local v10, stackId:I
    move-object/from16 v0, p3

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mCurrentSlotIndex:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    const/16 v16, 0x20

    move/from16 v8, v16

    .line 751
    .local v8, maxDisplayedItemsPerSlot:I
    :goto_0
    const/16 v16, 0x3

    move/from16 v0, p5

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    const/16 v16, 0x4

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 752
    :cond_0
    const v14, -0x42dc28f6

    .line 763
    :cond_1
    :goto_1
    const/4 v15, 0x0

    .line 764
    .local v15, usingMixedTextures:Z
    const/4 v6, 0x0

    .line 765
    .local v6, bind:Z
    if-nez p5, :cond_2

    .line 766
    if-ge v10, v8, :cond_11

    invoke-virtual/range {p4 .. p4}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v16

    if-eqz v16, :cond_11

    if-eqz p6, :cond_2

    .line 767
    invoke-virtual/range {p6 .. p6}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 768
    :cond_2
    const/high16 v16, 0x3f80

    cmpl-float v16, p7, v16

    if-eqz v16, :cond_3

    if-eqz p6, :cond_3

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    if-ne v0, v1, :cond_d

    .line 769
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v6

    .line 785
    :cond_4
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v16

    if-eqz v16, :cond_5

    if-nez v6, :cond_12

    .line 786
    :cond_5
    if-nez p5, :cond_7

    .line 787
    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x0

    cmpl-float v16, v14, v16

    if-nez v16, :cond_6

    .line 788
    const v14, -0x425c28f6

    .line 789
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v16

    or-int v6, v6, v16

    .line 791
    :cond_6
    if-nez v6, :cond_14

    .line 826
    :cond_7
    :goto_3
    return-void

    .line 750
    .end local v6           #bind:Z
    .end local v8           #maxDisplayedItemsPerSlot:I
    .end local v15           #usingMixedTextures:Z
    :cond_8
    const/16 v16, 0x4

    move/from16 v8, v16

    goto :goto_0

    .line 754
    .restart local v8       #maxDisplayedItemsPerSlot:I
    :cond_9
    const/16 v16, 0x2

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 755
    const v16, 0x3ca3d70a

    add-float v14, v14, v16

    .line 756
    :cond_a
    const/16 v16, 0x5

    move/from16 v0, p5

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    const/16 v16, 0x8

    move/from16 v0, p5

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    const/16 v16, 0x6

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_c

    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/ecareme/pixwe/media/DisplayItem;->isAlive()Z

    move-result v16

    if-nez v16, :cond_c

    .line 757
    const/4 v14, 0x0

    .line 759
    :cond_c
    const/16 v16, 0x5

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    const/16 v16, 0x0

    cmpl-float v16, v14, v16

    if-lez v16, :cond_1

    .line 760
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 770
    .restart local v6       #bind:Z
    .restart local v15       #usingMixedTextures:Z
    :cond_d
    const/16 v16, 0x0

    cmpl-float v16, p7, v16

    if-eqz v16, :cond_10

    .line 771
    invoke-virtual/range {p4 .. p4}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-virtual/range {p6 .. p6}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v16

    if-nez v16, :cond_f

    .line 773
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    .line 774
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v6

    goto/16 :goto_2

    .line 776
    :cond_f
    const/4 v15, 0x1

    .line 777
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v2, p4

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->bindMixed(Lcom/ecareme/pixwe/media/Texture;Lcom/ecareme/pixwe/media/Texture;F)Z

    move-result v6

    goto/16 :goto_2

    .line 780
    :cond_10
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v6

    goto/16 :goto_2

    .line 782
    :cond_11
    if-lt v10, v8, :cond_4

    if-nez p5, :cond_4

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DisplayList;->setAlive(Lcom/ecareme/pixwe/media/DisplayItem;Z)V

    goto/16 :goto_2

    .line 798
    :cond_12
    if-eqz p5, :cond_13

    const/16 v16, 0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_14

    .line 799
    :cond_13
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    move/from16 v16, v0

    if-nez v16, :cond_14

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DisplayList;->setAlive(Lcom/ecareme/pixwe/media/DisplayItem;Z)V

    .line 804
    :cond_14
    move v0, v12

    neg-float v0, v0

    move/from16 v16, v0

    move v0, v13

    neg-float v0, v0

    move/from16 v17, v0

    move v0, v14

    neg-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 805
    const/16 v16, 0x1

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p3

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    move/from16 v16, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedTheta:F

    move/from16 v17, v0

    add-float v16, v16, v17

    move/from16 v11, v16

    .line 807
    .local v11, theta:F
    :goto_4
    const/16 v16, 0x0

    cmpl-float v16, v11, v16

    if-eqz v16, :cond_15

    .line 808
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f80

    move-object/from16 v0, p2

    move v1, v11

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glRotatef(FFFF)V

    .line 810
    :cond_15
    const/4 v9, 0x0

    .line 811
    .local v9, orientation:F
    if-nez p5, :cond_16

    move-object/from16 v0, p3

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_16

    .line 812
    move-object/from16 v0, p3

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    move v9, v0

    .line 814
    :cond_16
    const/16 v16, 0x2

    move/from16 v0, p5

    move/from16 v1, v16

    if-eq v0, v1, :cond_17

    const/16 v16, 0x4

    move/from16 v0, p5

    move/from16 v1, v16

    if-ne v0, v1, :cond_1a

    .line 815
    :cond_17
    invoke-static/range {p2 .. p2}, Lcom/ecareme/pixwe/media/GridQuadFrame;->draw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 819
    :goto_5
    const/16 v16, 0x0

    cmpl-float v16, v11, v16

    if-eqz v16, :cond_18

    .line 820
    move v0, v11

    neg-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f80

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glRotatef(FFFF)V

    .line 822
    :cond_18
    move-object/from16 v0, p2

    move v1, v12

    move v2, v13

    move v3, v14

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 823
    if-eqz v15, :cond_7

    .line 824
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->unbindMixed()V

    goto/16 :goto_3

    .line 806
    .end local v9           #orientation:F
    .end local v11           #theta:F
    :cond_19
    move-object/from16 v0, p3

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedTheta:F

    move/from16 v16, v0

    move/from16 v11, v16

    goto :goto_4

    .line 817
    .restart local v9       #orientation:F
    .restart local v11       #theta:F
    :cond_1a
    move-object/from16 v0, p2

    move v1, v9

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->draw(Ljavax/microedition/khronos/opengles/GL11;F)V

    goto :goto_5
.end method


# virtual methods
.method public drawBlendedComponents(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FIIFFLcom/ecareme/pixwe/media/MediaBucketList;Lcom/ecareme/pixwe/media/MediaBucketList;Z)V
    .locals 74
    .parameter "view"
    .parameter "gl"
    .parameter "alpha"
    .parameter "state"
    .parameter "hudMode"
    .parameter "stackMixRatio"
    .parameter "gridMixRatio"
    .parameter "selectedBucketList"
    .parameter "markedBucketList"
    .parameter "isFeedLoading"

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v46, v0

    .line 496
    .local v46, firstBufferedVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v52, v0

    .line 497
    .local v52, lastBufferedVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v47, v0

    .line 498
    .local v47, firstVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v4, v0

    move-object v0, v4

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v53, v0

    .line 499
    .local v53, lastVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object/from16 v41, v0

    .line 500
    .local v41, displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

    move-object/from16 v44, v0

    .line 503
    .local v44, drawables:Lcom/ecareme/pixwe/media/GridDrawables;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusIsPressed:Z

    move/from16 v37, v0

    .line 504
    .local v37, currentFocusIsPressed:Z
    const/4 v4, 0x2

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_7

    .line 505
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sFrame:Lcom/ecareme/pixwe/media/GridQuadFrame;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuadFrame;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 506
    const/4 v4, 0x1

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureGridFrame:Lcom/ecareme/pixwe/media/Texture;

    move-object v4, v0

    move-object v8, v4

    .line 508
    .local v8, texturePlaceHolder:Lcom/ecareme/pixwe/media/Texture;
    :goto_0
    move/from16 v48, v46

    .local v48, i:I
    :goto_1
    move/from16 v0, v48

    move/from16 v1, v52

    if-le v0, v1, :cond_9

    .line 536
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFramePressed:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v63, v0

    .line 537
    .local v63, texturePressed:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFrameFocus:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v61, v0

    .line 538
    .local v61, textureFocus:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureGridFrame:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v62, v0

    .line 539
    .local v62, textureGrid:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFrame:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v60, v0

    .line 541
    .local v60, texture:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDrawnCounter:I

    move/from16 v45, v0

    .line 542
    .local v45, drawnCounter:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mItemsDrawn:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object/from16 v49, v0

    .line 543
    .local v49, itemsDrawn:[Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v60, :cond_0

    .line 544
    if-lez v45, :cond_0

    .line 545
    const/4 v4, 0x0

    sget-object v5, Lcom/ecareme/pixwe/media/GridDrawManager;->sDisplayItemComparator:Ljava/util/Comparator;

    move-object/from16 v0, v49

    move v1, v4

    move/from16 v2, v45

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 546
    move/from16 v66, p7

    .line 547
    .local v66, timeElapsedSinceGridView:F
    move/from16 v67, p6

    .line 548
    .local v67, timeElapsedSinceStackView:F
    const/4 v4, 0x1

    sub-int v48, v45, v4

    :goto_2
    if-gez v48, :cond_11

    .line 577
    .end local v66           #timeElapsedSinceGridView:F
    .end local v67           #timeElapsedSinceStackView:F
    :cond_0
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sFrame:Lcom/ecareme/pixwe/media/GridQuadFrame;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuadFrame;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 578
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSpreadValue:F

    move v4, v0

    const/high16 v5, 0x3f80

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 579
    const/16 v4, 0x207

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDepthFunc(I)V

    .line 580
    :cond_1
    if-eqz p4, :cond_2

    const/4 v4, 0x3

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_5

    .line 581
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

    move-object/from16 v43, v0

    .line 582
    .local v43, displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sTextGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 583
    const v58, 0x3f51eb85

    .line 584
    .local v58, textOffsetY:F
    const/4 v4, 0x0

    const v5, -0x40ae147b

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 585
    sget-object v57, Lcom/ecareme/pixwe/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    .line 586
    .local v57, stringTextureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ecareme/pixwe/app/App;->get(Landroid/content/Context;)Lcom/ecareme/pixwe/app/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ecareme/pixwe/app/App;->getReverseGeocoder()Lcom/ecareme/pixwe/media/ReverseGeocoder;

    move-result-object v55

    .line 588
    .local v55, reverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;
    const/16 v50, 0x0

    .line 590
    .local v50, itemsPresent:Z
    move/from16 v48, v46

    :goto_3
    move/from16 v0, v48

    move/from16 v1, v52

    if-le v0, v1, :cond_1e

    .line 611
    if-nez v50, :cond_3

    if-nez p10, :cond_3

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getWidth()I

    move-result v69

    .line 614
    .local v69, wWidth:I
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getHeight()I

    move-result v68

    .line 617
    .local v68, wHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mNoItemsTexture:Lcom/ecareme/pixwe/media/Texture;

    move-object v4, v0

    const/16 v5, 0x28

    sub-int v5, v69, v5

    iput v5, v4, Lcom/ecareme/pixwe/media/Texture;->mWidth:I

    .line 619
    div-int/lit8 v4, v69, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mNoItemsTexture:Lcom/ecareme/pixwe/media/Texture;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    move-wide v0, v4

    double-to-int v0, v0

    move/from16 v70, v0

    .line 620
    .local v70, x:I
    div-int/lit8 v4, v68, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mNoItemsTexture:Lcom/ecareme/pixwe/media/Texture;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/Texture;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    move-wide v0, v4

    double-to-int v0, v0

    move/from16 v71, v0

    .line 621
    .local v71, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mNoItemsTexture:Lcom/ecareme/pixwe/media/Texture;

    move-object v4, v0

    move/from16 v0, v70

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v71

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 624
    .end local v68           #wHeight:I
    .end local v69           #wWidth:I
    .end local v70           #x:I
    .end local v71           #y:I
    :cond_3
    const v72, 0x3e4ccccd

    .line 625
    .local v72, yLocOffset:F
    const/4 v4, 0x0

    move/from16 v0, v72

    neg-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 626
    move/from16 v48, v46

    :goto_4
    move/from16 v0, v48

    move/from16 v1, v52

    if-le v0, v1, :cond_22

    .line 642
    const/4 v4, 0x3

    move/from16 v0, p4

    move v1, v4

    if-ne v0, v1, :cond_2c

    .line 643
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sLocationGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 644
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureLocation:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v26, v0

    .line 645
    .local v26, locationTexture:Lcom/ecareme/pixwe/media/Texture;
    const v73, 0x3e428f5c

    .line 646
    .local v73, yLocationLabelOffset:F
    move/from16 v48, v46

    :goto_5
    move/from16 v0, v48

    move/from16 v1, v52

    if-le v0, v1, :cond_26

    .line 672
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sLocationGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 700
    .end local v26           #locationTexture:Lcom/ecareme/pixwe/media/Texture;
    .end local v73           #yLocationLabelOffset:F
    :cond_4
    :goto_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move/from16 v2, v72

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 701
    const/4 v4, 0x0

    const v5, 0x3f51eb85

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 702
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sTextGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 704
    .end local v43           #displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    .end local v50           #itemsPresent:Z
    .end local v55           #reverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;
    .end local v57           #stringTextureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture;>;"
    .end local v58           #textOffsetY:F
    .end local v72           #yLocOffset:F
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_6

    const/4 v4, 0x2

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_6

    .line 705
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureCheckmarkOn:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v65, v0

    .line 706
    .local v65, textureSelectedOn:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureCheckmarkOff:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v64, v0

    .line 707
    .local v64, textureSelectedOff:Lcom/ecareme/pixwe/media/Texture;
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v65

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RenderView;->prime(Lcom/ecareme/pixwe/media/Texture;Z)V

    .line 708
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v64

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RenderView;->prime(Lcom/ecareme/pixwe/media/Texture;Z)V

    .line 709
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sSelectedGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 710
    move/from16 v48, v46

    :goto_7
    move/from16 v0, v48

    move/from16 v1, v52

    if-le v0, v1, :cond_31

    .line 721
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sSelectedGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 723
    .end local v64           #textureSelectedOff:Lcom/ecareme/pixwe/media/Texture;
    .end local v65           #textureSelectedOn:Lcom/ecareme/pixwe/media/Texture;
    :cond_6
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sVideoGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 724
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureVideo:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v33, v0

    .line 725
    .local v33, videoTexture:Lcom/ecareme/pixwe/media/Texture;
    move/from16 v48, v46

    :goto_8
    move/from16 v0, v48

    move/from16 v1, v52

    if-le v0, v1, :cond_35

    .line 736
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sVideoGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 737
    const/16 v4, 0x203

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDepthFunc(I)V

    .line 739
    .end local v8           #texturePlaceHolder:Lcom/ecareme/pixwe/media/Texture;
    .end local v33           #videoTexture:Lcom/ecareme/pixwe/media/Texture;
    .end local v45           #drawnCounter:I
    .end local v48           #i:I
    .end local v49           #itemsDrawn:[Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v60           #texture:Lcom/ecareme/pixwe/media/Texture;
    .end local v61           #textureFocus:Lcom/ecareme/pixwe/media/Texture;
    .end local v62           #textureGrid:Lcom/ecareme/pixwe/media/Texture;
    .end local v63           #texturePressed:Lcom/ecareme/pixwe/media/Texture;
    :cond_7
    return-void

    .line 507
    :cond_8
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureFrame:Lcom/ecareme/pixwe/media/Texture;

    move-object v4, v0

    move-object v8, v4

    goto/16 :goto_0

    .line 509
    .restart local v8       #texturePlaceHolder:Lcom/ecareme/pixwe/media/Texture;
    .restart local v48       #i:I
    :cond_9
    move/from16 v0, v48

    move/from16 v1, v47

    if-lt v0, v1, :cond_a

    move/from16 v0, v48

    move/from16 v1, v53

    if-le v0, v1, :cond_b

    .line 508
    :cond_a
    :goto_9
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_1

    .line 512
    :cond_b
    const/16 v56, 0x0

    .line 513
    .local v56, slotIsAlive:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move v4, v0

    move/from16 v0, v48

    move v1, v4

    if-ne v0, v1, :cond_d

    const/16 v4, 0x20

    move/from16 v54, v4

    .line 515
    .local v54, maxDisplayedItemsPerSlot:I
    :goto_a
    if-eqz p4, :cond_a

    const/4 v4, 0x3

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_a

    .line 516
    const/16 v51, 0x0

    .local v51, j:I
    :goto_b
    move/from16 v0, v51

    move/from16 v1, v54

    if-lt v0, v1, :cond_e

    .line 525
    if-nez v56, :cond_a

    .line 526
    sub-int v4, v48, v46

    mul-int/lit8 v38, v4, 0x20

    .line 527
    .local v38, displayIdx:I
    const/4 v7, 0x0

    .line 528
    .local v7, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v41

    array-length v0, v0

    move v4, v0

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_c

    .line 529
    aget-object v7, v41, v38

    .line 530
    :cond_c
    if-eqz v7, :cond_a

    .line 531
    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v11}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    goto :goto_9

    .line 514
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v38           #displayIdx:I
    .end local v51           #j:I
    .end local v54           #maxDisplayedItemsPerSlot:I
    :cond_d
    const/4 v4, 0x4

    move/from16 v54, v4

    goto :goto_a

    .line 517
    .restart local v51       #j:I
    .restart local v54       #maxDisplayedItemsPerSlot:I
    :cond_e
    sub-int v4, v48, v46

    mul-int/lit8 v4, v4, 0x20

    add-int v38, v4, v51

    .line 518
    .restart local v38       #displayIdx:I
    const/4 v7, 0x0

    .line 519
    .restart local v7       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v41

    array-length v0, v0

    move v4, v0

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_f

    .line 520
    aget-object v7, v41, v38

    .line 521
    :cond_f
    if-eqz v7, :cond_10

    .line 522
    iget-boolean v4, v7, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    or-int v56, v56, v4

    .line 516
    :cond_10
    add-int/lit8 v51, v51, 0x1

    goto :goto_b

    .line 549
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v38           #displayIdx:I
    .end local v51           #j:I
    .end local v54           #maxDisplayedItemsPerSlot:I
    .end local v56           #slotIsAlive:Z
    .restart local v45       #drawnCounter:I
    .restart local v49       #itemsDrawn:[Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v60       #texture:Lcom/ecareme/pixwe/media/Texture;
    .restart local v61       #textureFocus:Lcom/ecareme/pixwe/media/Texture;
    .restart local v62       #textureGrid:Lcom/ecareme/pixwe/media/Texture;
    .restart local v63       #texturePressed:Lcom/ecareme/pixwe/media/Texture;
    .restart local v66       #timeElapsedSinceGridView:F
    .restart local v67       #timeElapsedSinceStackView:F
    :cond_11
    aget-object v12, v49, v48

    .line 550
    .local v12, itemDrawn:Lcom/ecareme/pixwe/media/DisplayItem;
    if-nez v12, :cond_13

    .line 548
    :cond_12
    :goto_c
    add-int/lit8 v48, v48, -0x1

    goto/16 :goto_2

    .line 553
    :cond_13
    iget-object v4, v12, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v0, p8

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaBucketList;->find(Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v40

    .line 554
    .local v40, displayItemPresentInSelectedItems:Z
    iget-object v4, v12, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v0, p9

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaBucketList;->find(Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v39

    .line 555
    .local v39, displayItemPresentInMarkedItems:Z
    if-eqz v40, :cond_15

    move-object/from16 v15, v63

    .line 556
    .local v15, previousTexture:Lcom/ecareme/pixwe/media/Texture;
    :goto_d
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/DisplayItem;->getHasFocus()Z

    move-result v4

    if-eqz v4, :cond_17

    if-eqz v37, :cond_16

    move-object/from16 v13, v63

    .line 559
    .local v13, textureToUse:Lcom/ecareme/pixwe/media/Texture;
    :goto_e
    move/from16 v16, v66

    .line 560
    .local v16, ratio:F
    iget-boolean v4, v12, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    if-eqz v4, :cond_12

    .line 561
    const/4 v4, 0x1

    move/from16 v0, p4

    move v1, v4

    if-eq v0, v1, :cond_14

    .line 562
    if-eqz v40, :cond_1a

    move-object/from16 v15, v63

    .line 563
    :goto_f
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/DisplayItem;->getHasFocus()Z

    move-result v4

    if-eqz v4, :cond_1c

    if-eqz v37, :cond_1b

    move-object/from16 v13, v63

    .line 565
    :goto_10
    const/high16 v4, 0x3f80

    cmpl-float v4, v67, v4

    if-nez v4, :cond_1d

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mFocusMixRatio:F

    move/from16 v16, v0

    .line 572
    :cond_14
    :goto_11
    const/4 v14, 0x2

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v9 .. v16}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    goto :goto_c

    .end local v13           #textureToUse:Lcom/ecareme/pixwe/media/Texture;
    .end local v15           #previousTexture:Lcom/ecareme/pixwe/media/Texture;
    .end local v16           #ratio:F
    :cond_15
    move-object/from16 v15, v60

    .line 555
    goto :goto_d

    .restart local v15       #previousTexture:Lcom/ecareme/pixwe/media/Texture;
    :cond_16
    move-object/from16 v13, v61

    .line 556
    goto :goto_e

    .line 557
    :cond_17
    if-eqz v40, :cond_18

    move-object/from16 v13, v63

    goto :goto_e

    .line 558
    :cond_18
    if-eqz v39, :cond_19

    move-object/from16 v13, v60

    goto :goto_e

    :cond_19
    move-object/from16 v13, v62

    goto :goto_e

    .restart local v13       #textureToUse:Lcom/ecareme/pixwe/media/Texture;
    .restart local v16       #ratio:F
    :cond_1a
    move-object/from16 v15, v60

    .line 562
    goto :goto_f

    :cond_1b
    move-object/from16 v13, v61

    .line 563
    goto :goto_10

    :cond_1c
    move-object v13, v15

    .line 564
    goto :goto_10

    .line 568
    :cond_1d
    move/from16 v16, v67

    .line 569
    move-object/from16 v15, v62

    goto :goto_11

    .line 591
    .end local v12           #itemDrawn:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v13           #textureToUse:Lcom/ecareme/pixwe/media/Texture;
    .end local v15           #previousTexture:Lcom/ecareme/pixwe/media/Texture;
    .end local v16           #ratio:F
    .end local v39           #displayItemPresentInMarkedItems:Z
    .end local v40           #displayItemPresentInSelectedItems:Z
    .end local v66           #timeElapsedSinceGridView:F
    .end local v67           #timeElapsedSinceStackView:F
    .restart local v43       #displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    .restart local v50       #itemsPresent:Z
    .restart local v55       #reverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;
    .restart local v57       #stringTextureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture;>;"
    .restart local v58       #textOffsetY:F
    :cond_1e
    const/16 v50, 0x1

    .line 592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSpreadValue:F

    move v4, v0

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_20

    .line 590
    :cond_1f
    :goto_12
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_3

    .line 594
    :cond_20
    sub-int v4, v48, v46

    mul-int/lit8 v38, v4, 0x20

    .line 595
    .restart local v38       #displayIdx:I
    const/4 v7, 0x0

    .line 596
    .restart local v7       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v41

    array-length v0, v0

    move v4, v0

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_21

    .line 597
    aget-object v7, v41, v38

    .line 598
    :cond_21
    if-eqz v7, :cond_1f

    .line 599
    sub-int v4, v48, v46

    aget-object v42, v43, v4

    .line 600
    .local v42, displaySlot:Lcom/ecareme/pixwe/media/DisplaySlot;
    move-object/from16 v0, v42

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DisplaySlot;->getTitleImage(Ljava/util/HashMap;)Lcom/ecareme/pixwe/media/StringTexture;

    move-result-object v21

    .line 601
    .local v21, textureString:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 602
    if-eqz v21, :cond_1f

    .line 603
    move/from16 v0, v48

    move/from16 v1, v47

    if-lt v0, v1, :cond_1f

    move/from16 v0, v48

    move/from16 v1, v53

    if-gt v0, v1, :cond_1f

    .line 606
    const/16 v22, 0x5

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, v7

    invoke-direct/range {v17 .. v24}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    goto :goto_12

    .line 627
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v21           #textureString:Lcom/ecareme/pixwe/media/Texture;
    .end local v38           #displayIdx:I
    .end local v42           #displaySlot:Lcom/ecareme/pixwe/media/DisplaySlot;
    .restart local v72       #yLocOffset:F
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSpreadValue:F

    move v4, v0

    const/high16 v5, 0x3f80

    cmpl-float v4, v4, v5

    if-lez v4, :cond_24

    .line 626
    :cond_23
    :goto_13
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_4

    .line 629
    :cond_24
    sub-int v4, v48, v46

    mul-int/lit8 v38, v4, 0x20

    .line 630
    .restart local v38       #displayIdx:I
    const/4 v7, 0x0

    .line 631
    .restart local v7       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v41

    array-length v0, v0

    move v4, v0

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_25

    .line 632
    aget-object v7, v41, v38

    .line 633
    :cond_25
    if-eqz v7, :cond_23

    .line 634
    sub-int v4, v48, v46

    aget-object v42, v43, v4

    .line 635
    .restart local v42       #displaySlot:Lcom/ecareme/pixwe/media/DisplaySlot;
    move-object/from16 v0, v42

    move-object/from16 v1, v55

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DisplaySlot;->getLocationImage(Lcom/ecareme/pixwe/media/ReverseGeocoder;Ljava/util/HashMap;)Lcom/ecareme/pixwe/media/StringTexture;

    move-result-object v21

    .line 636
    .local v21, textureString:Lcom/ecareme/pixwe/media/StringTexture;
    if-eqz v21, :cond_23

    .line 637
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 638
    const/16 v22, 0x5

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, v7

    invoke-direct/range {v17 .. v24}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    goto :goto_13

    .line 647
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v21           #textureString:Lcom/ecareme/pixwe/media/StringTexture;
    .end local v38           #displayIdx:I
    .end local v42           #displaySlot:Lcom/ecareme/pixwe/media/DisplaySlot;
    .restart local v26       #locationTexture:Lcom/ecareme/pixwe/media/Texture;
    .restart local v73       #yLocationLabelOffset:F
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_28

    .line 646
    :cond_27
    :goto_14
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_5

    .line 649
    :cond_28
    sub-int v4, v48, v46

    mul-int/lit8 v38, v4, 0x20

    .line 650
    .restart local v38       #displayIdx:I
    const/4 v7, 0x0

    .line 651
    .restart local v7       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v41

    array-length v0, v0

    move v4, v0

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_29

    .line 652
    aget-object v7, v41, v38

    .line 653
    :cond_29
    if-eqz v7, :cond_27

    .line 654
    iget-boolean v4, v7, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    if-eqz v4, :cond_27

    .line 655
    sub-int v4, v48, v46

    aget-object v42, v43, v4

    .line 656
    .restart local v42       #displaySlot:Lcom/ecareme/pixwe/media/DisplaySlot;
    invoke-virtual/range {v42 .. v42}, Lcom/ecareme/pixwe/media/DisplaySlot;->hasValidLocation()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 657
    move-object/from16 v0, v42

    move-object/from16 v1, v55

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DisplaySlot;->getLocationImage(Lcom/ecareme/pixwe/media/ReverseGeocoder;Ljava/util/HashMap;)Lcom/ecareme/pixwe/media/StringTexture;

    move-result-object v21

    .line 658
    .restart local v21       #textureString:Lcom/ecareme/pixwe/media/StringTexture;
    if-eqz v21, :cond_2b

    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/StringTexture;->computeTextWidth()F

    move-result v4

    move/from16 v59, v4

    .line 659
    .local v59, textWidth:F
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v4, v0

    iget v4, v4, Lcom/ecareme/pixwe/media/GridCamera;->mOneByScale:F

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    mul-float v59, v59, v4

    .line 660
    const/4 v4, 0x0

    cmpl-float v4, v59, v4

    if-nez v4, :cond_2a

    .line 661
    const v4, 0x3e3851ec

    sub-float v59, v59, v4

    .line 663
    :cond_2a
    const v4, 0x3dcccccd

    add-float v59, v59, v4

    .line 664
    const v4, -0x41bd70a4

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v59

    move v2, v4

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 665
    const/16 v27, 0x8

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, v7

    invoke-direct/range {v22 .. v29}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    .line 666
    move/from16 v0, v59

    neg-float v0, v0

    move v4, v0

    const v5, 0x3e428f5c

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    goto :goto_14

    .line 658
    .end local v59           #textWidth:F
    :cond_2b
    const/4 v4, 0x0

    move/from16 v59, v4

    goto :goto_15

    .line 673
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v21           #textureString:Lcom/ecareme/pixwe/media/StringTexture;
    .end local v26           #locationTexture:Lcom/ecareme/pixwe/media/Texture;
    .end local v38           #displayIdx:I
    .end local v42           #displaySlot:Lcom/ecareme/pixwe/media/DisplaySlot;
    .end local v73           #yLocationLabelOffset:F
    :cond_2c
    if-nez p4, :cond_4

    const/4 v4, 0x0

    cmpl-float v4, p6, v4

    if-lez v4, :cond_4

    .line 674
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sSourceIconGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 675
    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureTransparent:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v28, v0

    .line 676
    .local v28, transparentTexture:Lcom/ecareme/pixwe/media/Texture;
    move/from16 v48, v46

    :goto_16
    move/from16 v0, v48

    move/from16 v1, v52

    if-le v0, v1, :cond_2d

    .line 698
    sget-object v4, Lcom/ecareme/pixwe/media/GridDrawables;->sSourceIconGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_6

    .line 677
    :cond_2d
    sub-int v4, v48, v46

    mul-int/lit8 v38, v4, 0x20

    .line 678
    .restart local v38       #displayIdx:I
    const/4 v7, 0x0

    .line 679
    .restart local v7       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v41

    array-length v0, v0

    move v4, v0

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_2e

    .line 680
    aget-object v7, v41, v38

    .line 681
    :cond_2e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move v4, v0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_30

    .line 676
    :cond_2f
    :goto_17
    add-int/lit8 v48, v48, 0x1

    goto :goto_16

    .line 683
    :cond_30
    if-eqz v7, :cond_2f

    .line 684
    iget-boolean v4, v7, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    if-eqz v4, :cond_2f

    .line 685
    sub-int v4, v48, v46

    aget-object v42, v43, v4

    .line 687
    .restart local v42       #displaySlot:Lcom/ecareme/pixwe/media/DisplaySlot;
    invoke-virtual/range {v42 .. v42}, Lcom/ecareme/pixwe/media/DisplaySlot;->getMediaSet()Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v44

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/GridDrawables;->getIconForSet(Lcom/ecareme/pixwe/media/MediaSet;Z)I

    move-result v4

    const/4 v5, 0x0

    .line 686
    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RenderView;->getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v26

    .line 691
    .restart local v26       #locationTexture:Lcom/ecareme/pixwe/media/Texture;
    const v4, 0x3e75c28f

    const/high16 v5, 0x3f00

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 692
    const/16 v27, 0x9

    .line 693
    const v29, 0x3f59999a

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v24, p2

    move-object/from16 v25, v7

    .line 692
    invoke-direct/range {v22 .. v29}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    .line 694
    const v4, -0x418a3d71

    const/high16 v5, -0x4100

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    goto :goto_17

    .line 711
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v26           #locationTexture:Lcom/ecareme/pixwe/media/Texture;
    .end local v28           #transparentTexture:Lcom/ecareme/pixwe/media/Texture;
    .end local v38           #displayIdx:I
    .end local v42           #displaySlot:Lcom/ecareme/pixwe/media/DisplaySlot;
    .end local v43           #displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    .end local v50           #itemsPresent:Z
    .end local v55           #reverseGeocoder:Lcom/ecareme/pixwe/media/ReverseGeocoder;
    .end local v57           #stringTextureTable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture;>;"
    .end local v58           #textOffsetY:F
    .end local v72           #yLocOffset:F
    .restart local v64       #textureSelectedOff:Lcom/ecareme/pixwe/media/Texture;
    .restart local v65       #textureSelectedOn:Lcom/ecareme/pixwe/media/Texture;
    :cond_31
    sub-int v4, v48, v46

    mul-int/lit8 v38, v4, 0x20

    .line 712
    .restart local v38       #displayIdx:I
    const/4 v7, 0x0

    .line 713
    .restart local v7       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v41

    array-length v0, v0

    move v4, v0

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_32

    .line 714
    aget-object v7, v41, v38

    .line 715
    :cond_32
    if-eqz v7, :cond_33

    .line 716
    iget-object v4, v7, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v0, p8

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaBucketList;->find(Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v13, v65

    .line 718
    .restart local v13       #textureToUse:Lcom/ecareme/pixwe/media/Texture;
    :goto_18
    const/16 v34, 0x6

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move-object/from16 v31, p2

    move-object/from16 v32, v7

    move-object/from16 v33, v13

    invoke-direct/range {v29 .. v36}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    .line 710
    .end local v13           #textureToUse:Lcom/ecareme/pixwe/media/Texture;
    :cond_33
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_7

    :cond_34
    move-object/from16 v13, v64

    .line 717
    goto :goto_18

    .line 726
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v38           #displayIdx:I
    .end local v64           #textureSelectedOff:Lcom/ecareme/pixwe/media/Texture;
    .end local v65           #textureSelectedOn:Lcom/ecareme/pixwe/media/Texture;
    .restart local v33       #videoTexture:Lcom/ecareme/pixwe/media/Texture;
    :cond_35
    sub-int v4, v48, v46

    mul-int/lit8 v38, v4, 0x20

    .line 727
    .restart local v38       #displayIdx:I
    const/4 v7, 0x0

    .line 728
    .restart local v7       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v41

    array-length v0, v0

    move v4, v0

    move/from16 v0, v38

    move v1, v4

    if-ge v0, v1, :cond_36

    .line 729
    aget-object v7, v41, v38

    .line 730
    :cond_36
    if-eqz v7, :cond_37

    iget-boolean v4, v7, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    if-eqz v4, :cond_37

    .line 731
    iget-object v4, v7, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_37

    .line 732
    const/16 v34, 0x7

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, p0

    move-object/from16 v30, p1

    move-object/from16 v31, p2

    move-object/from16 v32, v7

    invoke-direct/range {v29 .. v36}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    .line 725
    :cond_37
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_8
.end method

.method public drawFocusItems(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FZF)V
    .locals 59
    .parameter "view"
    .parameter "gl"
    .parameter "zoomValue"
    .parameter "slideshowMode"
    .parameter "timeElapsedSinceView"

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedSlot:I

    move/from16 v53, v0

    .line 311
    .local v53, selectedSlotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

    move-object/from16 v39, v0

    .line 312
    .local v39, drawables:Lcom/ecareme/pixwe/media/GridDrawables;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object/from16 v30, v0

    .line 313
    .local v30, camera:Lcom/ecareme/pixwe/media/GridCamera;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object/from16 v37, v0

    .line 314
    .local v37, displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v9, v0

    move-object v0, v9

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v40, v0

    .line 315
    .local v40, firstBufferedVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v9, v0

    move-object v0, v9

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v48, v0

    .line 316
    .local v48, lastBufferedVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/GridCamera;->isZAnimating()Z

    move-result v45

    .line 317
    .local v45, isCameraZAnimating:Z
    move/from16 v43, v40

    .local v43, i:I
    :goto_0
    move/from16 v0, v43

    move/from16 v1, v48

    if-le v0, v1, :cond_1

    .line 330
    const/4 v9, -0x1

    move/from16 v0, v53

    move v1, v9

    if-eq v0, v1, :cond_0

    .line 331
    move-object/from16 v0, v30

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtX:F

    move v9, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mScale:F

    move v10, v0

    mul-float v29, v9, v10

    .line 332
    .local v29, camX:F
    sub-int v9, v53, v40

    mul-int/lit8 v32, v9, 0x20

    .line 333
    .local v32, centerIndexInDrawnArray:I
    if-ltz v32, :cond_0

    move-object/from16 v0, v37

    array-length v0, v0

    move v9, v0

    move/from16 v0, v32

    move v1, v9

    if-lt v0, v1, :cond_5

    .line 491
    .end local v29           #camX:F
    .end local v32           #centerIndexInDrawnArray:I
    :cond_0
    return-void

    .line 318
    :cond_1
    const/4 v9, -0x1

    move/from16 v0, v53

    move v1, v9

    if-eq v0, v1, :cond_3

    const/4 v9, 0x2

    sub-int v9, v53, v9

    move/from16 v0, v43

    move v1, v9

    if-lt v0, v1, :cond_3

    add-int/lit8 v9, v53, 0x2

    move/from16 v0, v43

    move v1, v9

    if-gt v0, v1, :cond_3

    .line 317
    :cond_2
    :goto_1
    add-int/lit8 v43, v43, 0x1

    goto :goto_0

    .line 321
    :cond_3
    sub-int v9, v43, v40

    mul-int/lit8 v36, v9, 0x20

    .line 322
    .local v36, displayIdx:I
    const/4 v12, 0x0

    .line 323
    .local v12, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v37

    array-length v0, v0

    move v9, v0

    move/from16 v0, v36

    move v1, v9

    if-ge v0, v1, :cond_4

    .line 324
    aget-object v12, v37, v36

    .line 326
    :cond_4
    if-eqz v12, :cond_2

    .line 327
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/DisplayItem;->clearScreennailImage()V

    goto :goto_1

    .line 336
    .end local v12           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v36           #displayIdx:I
    .restart local v29       #camX:F
    .restart local v32       #centerIndexInDrawnArray:I
    :cond_5
    aget-object v31, v37, v32

    .line 337
    .local v31, centerDisplayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v31, :cond_0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object v9, v0

    iget-wide v9, v9, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    .line 340
    const/16 v41, 0x0

    .line 341
    .local v41, focusItemTextureLoaded:Z
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, v31

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v33

    .line 342
    .local v33, centerTexture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v33, :cond_6

    invoke-virtual/range {v33 .. v33}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 343
    const/16 v41, 0x1

    .line 345
    :cond_6
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPosition:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v9, v0

    move-object v0, v9

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move/from16 v34, v0

    .line 346
    .local v34, centerTranslateX:F
    cmpg-float v9, v34, v29

    if-gez v9, :cond_8

    const/4 v9, 0x1

    move/from16 v55, v9

    .line 347
    .local v55, skipPrevious:Z
    :goto_2
    const/high16 v9, 0x3f80

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 348
    const/16 v9, 0xbe2

    move-object/from16 v0, p2

    move v1, v9

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 349
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p2

    move v1, v9

    move v2, v10

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 350
    const/16 v28, 0x0

    .line 351
    .local v28, backupImageTheta:F
    const/16 v43, -0x1

    :goto_3
    const/4 v9, 0x1

    move/from16 v0, v43

    move v1, v9

    if-gt v0, v1, :cond_0

    .line 352
    if-eqz p4, :cond_9

    const/high16 v9, 0x3f80

    cmpl-float v9, p5, v9

    if-lez v9, :cond_9

    if-eqz v43, :cond_9

    .line 351
    :cond_7
    :goto_4
    add-int/lit8 v43, v43, 0x1

    goto :goto_3

    .line 346
    .end local v28           #backupImageTheta:F
    .end local v55           #skipPrevious:Z
    :cond_8
    const/4 v9, 0x0

    move/from16 v55, v9

    goto :goto_2

    .line 354
    .restart local v28       #backupImageTheta:F
    .restart local v55       #skipPrevious:Z
    :cond_9
    move-object/from16 v0, v30

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mAspectRatio:F

    move v4, v0

    .line 355
    .local v4, viewAspect:F
    add-int v54, v53, v43

    .line 356
    .local v54, selectedSlotToUse:I
    if-ltz v54, :cond_7

    move/from16 v0, v54

    move/from16 v1, v48

    if-gt v0, v1, :cond_7

    .line 357
    sub-int v9, v54, v40

    mul-int/lit8 v44, v9, 0x20

    .line 358
    .local v44, indexInDrawnArray:I
    if-ltz v44, :cond_0

    move-object/from16 v0, v37

    array-length v0, v0

    move v9, v0

    move/from16 v0, v44

    move v1, v9

    if-ge v0, v1, :cond_0

    .line 361
    aget-object v12, v37, v44

    .line 362
    .restart local v12       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object v0, v12

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v46, v0

    .line 363
    .local v46, item:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Lcom/ecareme/pixwe/media/GridDrawManager;->sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    invoke-virtual {v12, v9, v10}, Lcom/ecareme/pixwe/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v57

    .line 364
    .local v57, thumbnailTexture:Lcom/ecareme/pixwe/media/Texture;
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcom/ecareme/pixwe/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v13

    .line 365
    .local v13, texture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v45, :cond_b

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v9

    if-nez v9, :cond_b

    .line 366
    :cond_a
    move-object/from16 v13, v57

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedMixRatio:Lcom/ecareme/pixwe/media/FloatAnim;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/ecareme/pixwe/media/FloatAnim;->setValue(F)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedMixRatio:Lcom/ecareme/pixwe/media/FloatAnim;

    move-object v9, v0

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f40

    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getFrameTime()J

    move-result-wide v14

    invoke-virtual {v9, v10, v11, v14, v15}, Lcom/ecareme/pixwe/media/FloatAnim;->animateValue(FFJ)V

    .line 370
    :cond_b
    const/high16 v9, 0x3f80

    cmpl-float v9, p3, v9

    if-eqz v9, :cond_1c

    if-nez v43, :cond_1c

    invoke-virtual/range {v46 .. v46}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1c

    .line 371
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcom/ecareme/pixwe/media/DisplayItem;->getHiResImage(Landroid/content/Context;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v9

    move-object/from16 v42, v9

    .line 373
    .local v42, hiRes:Lcom/ecareme/pixwe/media/Texture;
    :goto_5
    sget v9, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-lez v9, :cond_c

    .line 374
    move-object/from16 v42, v13

    .line 376
    :cond_c
    if-eqz v43, :cond_d

    .line 377
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/DisplayItem;->clearHiResImage()V

    .line 379
    :cond_d
    if-eqz v42, :cond_e

    .line 380
    invoke-virtual/range {v42 .. v42}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 381
    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    .line 382
    const/4 v9, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RenderView;->prime(Lcom/ecareme/pixwe/media/Texture;Z)V

    .line 387
    :cond_e
    :goto_6
    move-object/from16 v18, v13

    .line 388
    .local v18, fsTexture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v9

    if-nez v9, :cond_12

    .line 389
    :cond_f
    sub-float v9, v34, v29

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3dcccccd

    cmpg-float v9, v9, v10

    if-gez v9, :cond_11

    .line 390
    if-eqz v41, :cond_10

    if-eqz v43, :cond_10

    .line 391
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    .line 393
    :cond_10
    if-nez v43, :cond_11

    .line 394
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    .line 395
    const/4 v9, 0x1

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RenderView;->prime(Lcom/ecareme/pixwe/media/Texture;Z)V

    .line 398
    :cond_11
    move-object/from16 v13, v57

    .line 399
    if-nez v43, :cond_12

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedMixRatio:Lcom/ecareme/pixwe/media/FloatAnim;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/ecareme/pixwe/media/FloatAnim;->setValue(F)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedMixRatio:Lcom/ecareme/pixwe/media/FloatAnim;

    move-object v9, v0

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f40

    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getFrameTime()J

    move-result-wide v14

    invoke-virtual {v9, v10, v11, v14, v15}, Lcom/ecareme/pixwe/media/FloatAnim;->animateValue(FFJ)V

    .line 404
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/GridCamera;->isAnimating()Z

    move-result v9

    if-nez v9, :cond_13

    if-eqz p4, :cond_15

    .line 405
    :cond_13
    if-nez p4, :cond_14

    if-eqz v55, :cond_14

    const/4 v9, -0x1

    move/from16 v0, v43

    move v1, v9

    if-eq v0, v1, :cond_7

    .line 408
    :cond_14
    if-nez v55, :cond_15

    const/4 v9, 0x1

    move/from16 v0, v43

    move v1, v9

    if-eq v0, v1, :cond_7

    .line 412
    :cond_15
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/DisplayItem;->getImageTheta()F

    move-result v9

    move v0, v9

    float-to-int v0, v0

    move/from16 v56, v0

    .line 415
    .local v56, theta:I
    if-eqz p4, :cond_16

    const/high16 v9, 0x3f80

    cmpg-float v9, p5, v9

    if-gez v9, :cond_16

    const/4 v9, 0x0

    cmpl-float v9, p5, v9

    if-eqz v9, :cond_16

    .line 416
    const/4 v9, -0x1

    move/from16 v0, v43

    move v1, v9

    if-ne v0, v1, :cond_1e

    .line 417
    add-int/lit8 v50, v54, 0x1

    .line 418
    .local v50, nextSlotToUse:I
    if-ltz v50, :cond_16

    move/from16 v0, v50

    move/from16 v1, v48

    if-gt v0, v1, :cond_16

    .line 419
    sub-int v9, v50, v40

    mul-int/lit8 v49, v9, 0x20

    .line 421
    .local v49, nextIndexInDrawnArray:I
    if-ltz v49, :cond_16

    move-object/from16 v0, v37

    array-length v0, v0

    move v9, v0

    move/from16 v0, v49

    move v1, v9

    if-ge v0, v1, :cond_16

    .line 422
    move-object v0, v12

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    move/from16 v35, v0

    .line 423
    .local v35, currentImageTheta:F
    aget-object v12, v37, v49

    .line 424
    move-object v0, v12

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    move/from16 v28, v0

    .line 425
    move/from16 v0, v35

    move-object v1, v12

    iput v0, v1, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    .line 426
    const/high16 v9, 0x3f80

    sub-float v9, v9, p5

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 434
    .end local v35           #currentImageTheta:F
    .end local v49           #nextIndexInDrawnArray:I
    .end local v50           #nextSlotToUse:I
    :cond_16
    :goto_7
    if-eqz v13, :cond_7

    .line 435
    add-int/lit8 v58, v43, 0x1

    .line 436
    .local v58, vboIndex:I
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getAlpha()F

    move-result v27

    .line 437
    .local v27, alpha:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedMixRatio:Lcom/ecareme/pixwe/media/FloatAnim;

    move-object v9, v0

    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getFrameTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/ecareme/pixwe/media/FloatAnim;->getValue(J)F

    move-result v52

    .line 438
    .local v52, selectedMixRatio:F
    const/high16 v9, 0x3f80

    cmpl-float v9, v52, v9

    if-eqz v9, :cond_17

    .line 439
    move-object/from16 v13, v57

    .line 440
    const/high16 v9, 0x3f80

    sub-float v9, v9, v52

    mul-float v9, v9, v27

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 442
    :cond_17
    sget-object v9, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    aget-object v3, v9, v58

    .line 443
    .local v3, quad:Lcom/ecareme/pixwe/media/GridQuad;
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->getNormalizedWidth()F

    move-result v5

    .line 444
    .local v5, u:F
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->getNormalizedHeight()F

    move-result v6

    .line 445
    .local v6, v:F
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v9

    int-to-float v7, v9

    .line 446
    .local v7, imageWidth:F
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->getHeight()I

    move-result v9

    int-to-float v8, v9

    .line 447
    .local v8, imageHeight:F
    div-int/lit8 v9, v56, 0x5a

    rem-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1f

    const/4 v9, 0x1

    move/from16 v51, v9

    .line 448
    .local v51, portrait:Z
    :goto_8
    if-eqz v51, :cond_18

    .line 449
    const/high16 v9, 0x3f80

    div-float v4, v9, v4

    .line 451
    :cond_18
    invoke-virtual/range {v3 .. v8}, Lcom/ecareme/pixwe/media/GridQuad;->resizeQuad(FFFFF)V

    .line 452
    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 453
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v9 .. v16}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    .line 454
    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 455
    const/4 v9, 0x0

    cmpl-float v9, v52, v9

    if-eqz v9, :cond_19

    const/high16 v9, 0x3f80

    cmpl-float v9, v52, v9

    if-eqz v9, :cond_19

    .line 456
    move-object/from16 v13, v18

    .line 457
    if-eqz v13, :cond_19

    .line 458
    move/from16 v38, v52

    .line 459
    .local v38, drawAlpha:F
    mul-float v9, v27, v38

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 460
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->getNormalizedWidth()F

    move-result v5

    .line 461
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->getNormalizedHeight()F

    move-result v6

    .line 462
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v9

    int-to-float v7, v9

    .line 463
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Texture;->getHeight()I

    move-result v9

    int-to-float v8, v9

    .line 464
    invoke-virtual/range {v3 .. v8}, Lcom/ecareme/pixwe/media/GridQuad;->resizeQuad(FFFFF)V

    .line 465
    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 466
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, v12

    invoke-direct/range {v14 .. v21}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    .line 467
    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 470
    .end local v38           #drawAlpha:F
    :cond_19
    if-eqz v43, :cond_1a

    if-eqz p4, :cond_1b

    .line 471
    :cond_1a
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridQuad;->getWidth()F

    move-result v9

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusItemWidth:F

    .line 472
    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridQuad;->getHeight()F

    move-result v9

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusItemHeight:F

    .line 473
    if-eqz v51, :cond_1b

    .line 475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusItemWidth:F

    move/from16 v47, v0

    .line 476
    .local v47, itemWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusItemHeight:F

    move v9, v0

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusItemWidth:F

    .line 477
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusItemHeight:F

    .line 480
    .end local v47           #itemWidth:F
    :cond_1b
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 481
    invoke-virtual/range {v46 .. v46}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 483
    sget-object v9, Lcom/ecareme/pixwe/media/GridDrawables;->sVideoGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 484
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTextureVideo:Lcom/ecareme/pixwe/media/Texture;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, v12

    invoke-direct/range {v19 .. v26}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    .line 485
    sget-object v9, Lcom/ecareme/pixwe/media/GridDrawables;->sVideoGrid:Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_4

    .line 372
    .end local v3           #quad:Lcom/ecareme/pixwe/media/GridQuad;
    .end local v5           #u:F
    .end local v6           #v:F
    .end local v7           #imageWidth:F
    .end local v8           #imageHeight:F
    .end local v18           #fsTexture:Lcom/ecareme/pixwe/media/Texture;
    .end local v27           #alpha:F
    .end local v42           #hiRes:Lcom/ecareme/pixwe/media/Texture;
    .end local v51           #portrait:Z
    .end local v52           #selectedMixRatio:F
    .end local v56           #theta:I
    .end local v58           #vboIndex:I
    :cond_1c
    const/4 v9, 0x0

    move-object/from16 v42, v9

    goto/16 :goto_5

    .line 384
    .restart local v42       #hiRes:Lcom/ecareme/pixwe/media/Texture;
    :cond_1d
    move-object/from16 v13, v42

    goto/16 :goto_6

    .line 429
    .restart local v18       #fsTexture:Lcom/ecareme/pixwe/media/Texture;
    .restart local v56       #theta:I
    :cond_1e
    if-nez v43, :cond_16

    .line 430
    move/from16 v0, v28

    move-object v1, v12

    iput v0, v1, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedImageTheta:F

    .line 431
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    goto/16 :goto_7

    .line 447
    .restart local v3       #quad:Lcom/ecareme/pixwe/media/GridQuad;
    .restart local v5       #u:F
    .restart local v6       #v:F
    .restart local v7       #imageWidth:F
    .restart local v8       #imageHeight:F
    .restart local v27       #alpha:F
    .restart local v52       #selectedMixRatio:F
    .restart local v58       #vboIndex:I
    :cond_1f
    const/4 v9, 0x0

    move/from16 v51, v9

    goto/16 :goto_8
.end method

.method public drawThumbnails(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 50
    .parameter "view"
    .parameter "gl"
    .parameter "state"

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

    move-object/from16 v26, v0

    .line 128
    .local v26, drawables:Lcom/ecareme/pixwe/media/GridDrawables;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    move-object v4, v0

    .line 129
    .local v4, displayList:Lcom/ecareme/pixwe/media/DisplayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object/from16 v25, v0

    .line 130
    .local v25, displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v29, v0

    .line 131
    .local v29, firstBufferedVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v37, v0

    .line 132
    .local v37, lastBufferedVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v30, v0

    .line 133
    .local v30, firstVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v38, v0

    .line 134
    .local v38, lastVisibleSlot:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedSlot:I

    move/from16 v46, v0

    .line 135
    .local v46, selectedSlotIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusSlot:I

    move/from16 v22, v0

    .line 136
    .local v22, currentFocusSlot:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v23, v0

    .line 137
    .local v23, currentScaleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mItemsDrawn:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object/from16 v34, v0

    .line 138
    .local v34, itemsDrawn:[Lcom/ecareme/pixwe/media/DisplayItem;
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v34, v6

    .line 139
    const/16 v27, 0x0

    .line 140
    .local v27, drawnCounter:I
    sget-object v31, Lcom/ecareme/pixwe/media/GridDrawables;->sGrid:Lcom/ecareme/pixwe/media/GridQuad;

    .line 141
    .local v31, grid:Lcom/ecareme/pixwe/media/GridQuad;
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 142
    const/16 v42, 0x0

    .line 143
    .local v42, numTexturesQueued:I
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 144
    .local v21, context:Landroid/content/Context;
    move/from16 v35, v29

    .local v35, itrSlotIndex:I
    :goto_0
    move/from16 v0, v35

    move/from16 v1, v37

    if-le v0, v1, :cond_0

    .line 297
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridDrawManager;->mDrawnCounter:I

    .line 298
    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 299
    return-void

    .line 145
    :cond_0
    move/from16 v32, v35

    .line 146
    .local v32, index:I
    move/from16 v0, v32

    move/from16 v1, v30

    if-lt v0, v1, :cond_1

    move/from16 v0, v32

    move/from16 v1, v38

    if-le v0, v1, :cond_3

    :cond_1
    const/4 v6, 0x0

    move/from16 v44, v6

    .line 147
    .local v44, priority:Z
    :goto_1
    const/16 v48, 0x0

    .line 148
    .local v48, startSlotIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move v6, v0

    move/from16 v0, v32

    move v1, v6

    if-ne v0, v1, :cond_4

    const/16 v6, 0x20

    move/from16 v39, v6

    .line 150
    .local v39, maxDisplayedItemsPerSlot:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move v6, v0

    move/from16 v0, v32

    move v1, v6

    if-eq v0, v1, :cond_2

    .line 151
    const/4 v6, 0x1

    sub-int v36, v39, v6

    .local v36, j:I
    :goto_3
    if-gez v36, :cond_5

    .line 168
    .end local v36           #j:I
    :cond_2
    :goto_4
    const/16 v36, 0x0

    .restart local v36       #j:I
    :goto_5
    move/from16 v0, v36

    move/from16 v1, v39

    if-lt v0, v1, :cond_9

    .line 194
    move/from16 v0, v35

    move/from16 v1, v46

    if-ne v0, v1, :cond_11

    .line 144
    :goto_6
    add-int/lit8 v35, v35, 0x1

    goto :goto_0

    .line 146
    .end local v36           #j:I
    .end local v39           #maxDisplayedItemsPerSlot:I
    .end local v44           #priority:Z
    .end local v48           #startSlotIndex:I
    :cond_3
    const/4 v6, 0x1

    move/from16 v44, v6

    goto :goto_1

    .line 149
    .restart local v44       #priority:Z
    .restart local v48       #startSlotIndex:I
    :cond_4
    const/4 v6, 0x4

    move/from16 v39, v6

    goto :goto_2

    .line 152
    .restart local v36       #j:I
    .restart local v39       #maxDisplayedItemsPerSlot:I
    :cond_5
    sub-int v6, v32, v29

    mul-int/lit8 v6, v6, 0x20

    add-int v24, v6, v36

    .line 153
    .local v24, displayIdx:I
    const/4 v5, 0x0

    .line 154
    .local v5, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v25

    array-length v0, v0

    move v6, v0

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_6

    .line 155
    aget-object v5, v25, v24

    .line 156
    :cond_6
    if-nez v5, :cond_8

    .line 151
    :cond_7
    add-int/lit8 v36, v36, -0x1

    goto :goto_3

    .line 159
    :cond_8
    sget-object v6, Lcom/ecareme/pixwe/media/GridDrawManager;->sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v17

    .line 160
    .local v17, texture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_7

    .line 161
    move/from16 v48, v36

    .line 162
    goto :goto_4

    .line 169
    .end local v5           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v17           #texture:Lcom/ecareme/pixwe/media/Texture;
    .end local v24           #displayIdx:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move v6, v0

    move/from16 v0, v32

    move v1, v6

    if-ne v0, v1, :cond_c

    sub-int v6, v39, v36

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v47, v6

    .line 170
    .local v47, stackIndex:I
    :goto_7
    sub-int v6, v32, v29

    mul-int/lit8 v6, v6, 0x20

    add-int v24, v6, v47

    .line 171
    .restart local v24       #displayIdx:I
    const/4 v5, 0x0

    .line 172
    .restart local v5       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v25

    array-length v0, v0

    move v6, v0

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_a

    .line 173
    aget-object v5, v25, v24

    .line 174
    :cond_a
    if-nez v5, :cond_d

    .line 168
    :cond_b
    :goto_8
    add-int/lit8 v36, v36, 0x1

    goto :goto_5

    .end local v5           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v24           #displayIdx:I
    .end local v47           #stackIndex:I
    :cond_c
    move/from16 v47, v36

    .line 169
    goto :goto_7

    .line 177
    .restart local v5       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v24       #displayIdx:I
    .restart local v47       #stackIndex:I
    :cond_d
    move/from16 v0, v32

    move-object v1, v5

    iput v0, v1, Lcom/ecareme/pixwe/media/DisplayItem;->mCurrentSlotIndex:I

    .line 178
    const/4 v6, -0x1

    move/from16 v0, v46

    move v1, v6

    if-eq v0, v1, :cond_f

    const/4 v6, 0x2

    sub-int v6, v46, v6

    move/from16 v0, v32

    move v1, v6

    if-le v0, v1, :cond_e

    add-int/lit8 v6, v46, 0x2

    move/from16 v0, v32

    move v1, v6

    if-lt v0, v1, :cond_f

    .line 179
    :cond_e
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/DisplayItem;->clearScreennailImage()V

    .line 181
    :cond_f
    sget-object v6, Lcom/ecareme/pixwe/media/GridDrawManager;->sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v17

    .line 182
    .restart local v17       #texture:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move v6, v0

    move/from16 v0, v32

    move v1, v6

    if-ne v0, v1, :cond_10

    if-eqz v17, :cond_10

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_10

    .line 183
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RenderView;->prime(Lcom/ecareme/pixwe/media/Texture;Z)V

    .line 184
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    goto :goto_8

    .line 185
    :cond_10
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, 0x6

    move/from16 v0, v42

    move v1, v6

    if-gt v0, v1, :cond_b

    .line 186
    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/Texture;->isCached()Z

    move-result v33

    .line 187
    .local v33, isCached:Z
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RenderView;->prime(Lcom/ecareme/pixwe/media/Texture;Z)V

    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    .line 189
    if-eqz v44, :cond_b

    if-eqz v33, :cond_b

    move-object/from16 v0, v17

    iget v0, v0, Lcom/ecareme/pixwe/media/Texture;->mState:I

    move v6, v0

    const/4 v7, 0x4

    if-eq v6, v7, :cond_b

    .line 190
    add-int/lit8 v42, v42, 0x1

    goto :goto_8

    .line 197
    .end local v5           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v17           #texture:Lcom/ecareme/pixwe/media/Texture;
    .end local v24           #displayIdx:I
    .end local v33           #isCached:Z
    .end local v47           #stackIndex:I
    :cond_11
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTexturePlaceholder:Lcom/ecareme/pixwe/media/Texture;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RenderView;->prime(Lcom/ecareme/pixwe/media/Texture;Z)V

    .line 198
    const/4 v6, 0x1

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_14

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawables;->mTexturePlaceholder:Lcom/ecareme/pixwe/media/Texture;

    move-object v6, v0

    move-object/from16 v19, v6

    .line 199
    .local v19, placeholder:Lcom/ecareme/pixwe/media/Texture;
    :goto_9
    const/4 v6, 0x1

    move/from16 v0, p3

    move v1, v6

    if-eq v0, v1, :cond_12

    const/4 v6, 0x2

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_15

    :cond_12
    const/4 v6, 0x0

    move/from16 v45, v6

    .line 200
    .local v45, pushDown:Z
    :goto_a
    const/16 v36, 0x0

    :goto_b
    const/16 v6, 0x20

    move/from16 v0, v36

    move v1, v6

    if-lt v0, v1, :cond_16

    .line 251
    move/from16 v36, v48

    move/from16 v28, v27

    .end local v27           #drawnCounter:I
    .local v28, drawnCounter:I
    :goto_c
    const/16 v6, 0x20

    move/from16 v0, v36

    move v1, v6

    if-lt v0, v1, :cond_23

    :cond_13
    move/from16 v27, v28

    .end local v28           #drawnCounter:I
    .restart local v27       #drawnCounter:I
    goto/16 :goto_6

    .line 198
    .end local v19           #placeholder:Lcom/ecareme/pixwe/media/Texture;
    .end local v45           #pushDown:Z
    :cond_14
    const/4 v6, 0x0

    move-object/from16 v19, v6

    goto :goto_9

    .line 199
    .restart local v19       #placeholder:Lcom/ecareme/pixwe/media/Texture;
    :cond_15
    const/4 v6, 0x1

    move/from16 v45, v6

    goto :goto_a

    .line 201
    .restart local v45       #pushDown:Z
    :cond_16
    sub-int v6, v32, v29

    mul-int/lit8 v6, v6, 0x20

    add-int v24, v6, v36

    .line 202
    .restart local v24       #displayIdx:I
    const/4 v5, 0x0

    .line 203
    .restart local v5       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v25

    array-length v0, v0

    move v6, v0

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_17

    .line 204
    aget-object v5, v25, v24

    .line 205
    :cond_17
    if-nez v5, :cond_19

    .line 200
    :cond_18
    :goto_d
    add-int/lit8 v36, v36, 0x1

    goto :goto_b

    .line 207
    :cond_19
    sget-object v6, Lcom/ecareme/pixwe/media/GridDrawManager;->sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v17

    .line 208
    .restart local v17       #texture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v17, :cond_1a

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 209
    :cond_1a
    move/from16 v0, v23

    move/from16 v1, v32

    if-eq v0, v1, :cond_1b

    .line 210
    if-nez v36, :cond_1c

    .line 211
    iget-object v6, v5, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object v0, v6

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v43, v0

    .line 212
    .local v43, parentSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v43, :cond_1b

    invoke-virtual/range {v43 .. v43}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1b

    .line 213
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/ecareme/pixwe/media/DisplayList;->setAlive(Lcom/ecareme/pixwe/media/DisplayItem;Z)V

    .line 220
    .end local v43           #parentSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1b
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getTopFingerDeltaX()F

    move-result v9

    .line 221
    .local v9, dx1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getTopFingerDeltaY()F

    move-result v10

    .line 222
    .local v10, dy1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getBottomFingerDeltaX()F

    move-result v11

    .line 223
    .local v11, dx2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getBottomFingerDeltaY()F

    move-result v12

    .line 224
    .local v12, dy2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/ScaleGestureDetector;->getCurrentSpan()F

    move-result v8

    .line 225
    .local v8, span:F
    const/4 v6, 0x2

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_1d

    .line 226
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v4 .. v12}, Lcom/ecareme/pixwe/media/DisplayList;->setOffset(Lcom/ecareme/pixwe/media/DisplayItem;ZZFFFFF)V

    goto :goto_d

    .line 216
    .end local v8           #span:F
    .end local v9           #dx1:F
    .end local v10           #dy1:F
    .end local v11           #dx2:F
    .end local v12           #dy2:F
    :cond_1c
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/ecareme/pixwe/media/DisplayList;->setAlive(Lcom/ecareme/pixwe/media/DisplayItem;Z)V

    goto :goto_e

    .line 228
    .restart local v8       #span:F
    .restart local v9       #dx1:F
    .restart local v10       #dy1:F
    .restart local v11       #dx2:F
    .restart local v12       #dy2:F
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mHoldPosition:Z

    move v6, v0

    if-nez v6, :cond_18

    .line 229
    const/4 v6, 0x1

    move/from16 v0, p3

    move v1, v6

    if-eq v0, v1, :cond_20

    .line 230
    move/from16 v0, v23

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 231
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/ecareme/pixwe/media/DisplayList;->setOffset(Lcom/ecareme/pixwe/media/DisplayItem;ZZFFFFF)V

    goto/16 :goto_d

    .line 232
    :cond_1e
    const/4 v6, -0x1

    move/from16 v0, v23

    move v1, v6

    if-eq v0, v1, :cond_1f

    .line 233
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v4 .. v12}, Lcom/ecareme/pixwe/media/DisplayList;->setOffset(Lcom/ecareme/pixwe/media/DisplayItem;ZZFFFFF)V

    goto/16 :goto_d

    .line 235
    :cond_1f
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/ecareme/pixwe/media/DisplayList;->setOffset(Lcom/ecareme/pixwe/media/DisplayItem;ZZFFFFF)V

    goto/16 :goto_d

    .line 238
    :cond_20
    const/high16 v41, -0x4080

    .line 239
    .local v41, minVal:F
    const/high16 v40, 0x4080

    .line 240
    .local v40, maxVal:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSpreadValue:F

    move v6, v0

    add-float v49, v41, v6

    .line 241
    .local v49, zVal:F
    move/from16 v0, v49

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/FloatUtils;->clamp(FFF)F

    move-result v49

    .line 242
    invoke-static/range {v49 .. v49}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_21

    invoke-static/range {v49 .. v49}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 243
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/ecareme/pixwe/media/GridCamera;->moveZTo(F)V

    goto/16 :goto_d

    .line 245
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v6, v0

    move/from16 v0, v49

    neg-float v0, v0

    move v7, v0

    invoke-virtual {v6, v7}, Lcom/ecareme/pixwe/media/GridCamera;->moveZTo(F)V

    goto/16 :goto_d

    .line 252
    .end local v5           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v8           #span:F
    .end local v9           #dx1:F
    .end local v10           #dy1:F
    .end local v11           #dx2:F
    .end local v12           #dy2:F
    .end local v17           #texture:Lcom/ecareme/pixwe/media/Texture;
    .end local v24           #displayIdx:I
    .end local v27           #drawnCounter:I
    .end local v40           #maxVal:F
    .end local v41           #minVal:F
    .end local v49           #zVal:F
    .restart local v28       #drawnCounter:I
    :cond_23
    sub-int v6, v32, v29

    mul-int/lit8 v6, v6, 0x20

    add-int v24, v6, v36

    .line 253
    .restart local v24       #displayIdx:I
    const/4 v5, 0x0

    .line 254
    .restart local v5       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, v25

    array-length v0, v0

    move v6, v0

    move/from16 v0, v24

    move v1, v6

    if-ge v0, v1, :cond_24

    .line 255
    aget-object v5, v25, v24

    .line 256
    :cond_24
    if-nez v5, :cond_25

    move/from16 v27, v28

    .line 257
    .end local v28           #drawnCounter:I
    .restart local v27       #drawnCounter:I
    goto/16 :goto_6

    .line 259
    .end local v27           #drawnCounter:I
    .restart local v28       #drawnCounter:I
    :cond_25
    move/from16 v0, v22

    move/from16 v1, v32

    if-ne v0, v1, :cond_26

    .line 260
    const/4 v6, 0x1

    move-object v0, v4

    move-object v1, v5

    move v2, v6

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/DisplayList;->setHasFocus(Lcom/ecareme/pixwe/media/DisplayItem;ZZ)V

    .line 261
    const/high16 v6, 0x3f80

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridDrawManager;->mTargetFocusMixRatio:F

    .line 265
    :goto_f
    move/from16 v0, v36

    move/from16 v1, v39

    if-lt v0, v1, :cond_27

    move/from16 v27, v28

    .line 251
    .end local v28           #drawnCounter:I
    .restart local v27       #drawnCounter:I
    :goto_10
    add-int/lit8 v36, v36, 0x1

    move/from16 v28, v27

    .end local v27           #drawnCounter:I
    .restart local v28       #drawnCounter:I
    goto/16 :goto_c

    .line 263
    :cond_26
    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move v2, v6

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/DisplayList;->setHasFocus(Lcom/ecareme/pixwe/media/DisplayItem;ZZ)V

    goto :goto_f

    .line 267
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/ecareme/pixwe/media/GridDrawManager;->sThumbnailConfig:Lcom/ecareme/pixwe/media/MediaItemTexture$Config;

    invoke-virtual {v5, v6, v7}, Lcom/ecareme/pixwe/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItemTexture$Config;)Lcom/ecareme/pixwe/media/Texture;

    move-result-object v17

    .line 268
    .restart local v17       #texture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v17, :cond_13

    .line 269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    move v6, v0

    move/from16 v0, v32

    move v1, v6

    if-ne v0, v1, :cond_28

    .line 270
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/ecareme/pixwe/media/DisplayItem;->mAlive:Z

    .line 271
    :cond_28
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/DisplayItem;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-virtual/range {v17 .. v17}, Lcom/ecareme/pixwe/media/Texture;->isLoaded()Z

    move-result v6

    if-nez v6, :cond_2a

    .line 272
    :cond_29
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/DisplayItem;->getStackIndex()I

    move-result v6

    const/16 v7, 0x20

    if-le v6, v7, :cond_2a

    .line 273
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/ecareme/pixwe/media/DisplayList;->setAlive(Lcom/ecareme/pixwe/media/DisplayItem;Z)V

    move/from16 v27, v28

    .line 274
    .end local v28           #drawnCounter:I
    .restart local v27       #drawnCounter:I
    goto :goto_10

    .line 276
    .end local v27           #drawnCounter:I
    .restart local v28       #drawnCounter:I
    :cond_2a
    move/from16 v0, v32

    move/from16 v1, v30

    if-lt v0, v1, :cond_2b

    move/from16 v0, v32

    move/from16 v1, v38

    if-le v0, v1, :cond_2c

    .line 277
    :cond_2b
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 278
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/ecareme/pixwe/media/DisplayList;->setAlive(Lcom/ecareme/pixwe/media/DisplayItem;Z)V

    move/from16 v27, v28

    .line 280
    .end local v28           #drawnCounter:I
    .restart local v27       #drawnCounter:I
    goto :goto_10

    .line 282
    .end local v27           #drawnCounter:I
    .restart local v28       #drawnCounter:I
    :cond_2c
    const/16 v18, 0x0

    .line 283
    move-object v0, v5

    iget v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mAnimatedPlaceholderFade:F

    move/from16 v20, v0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v5

    .line 282
    invoke-direct/range {v13 .. v20}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawDisplayItem(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Texture;ILcom/ecareme/pixwe/media/Texture;F)V

    .line 288
    const/16 v6, 0xbff

    move/from16 v0, v28

    move v1, v6

    if-ge v0, v1, :cond_13

    if-gez v28, :cond_2d

    move/from16 v27, v28

    .line 289
    .end local v28           #drawnCounter:I
    .restart local v27       #drawnCounter:I
    goto/16 :goto_6

    .line 292
    .end local v27           #drawnCounter:I
    .restart local v28       #drawnCounter:I
    :cond_2d
    add-int/lit8 v27, v28, 0x1

    .end local v28           #drawnCounter:I
    .restart local v27       #drawnCounter:I
    aput-object v5, v34, v28

    .line 293
    const/4 v6, 0x0

    aput-object v6, v34, v27

    goto/16 :goto_10

    .end local v27           #drawnCounter:I
    .restart local v28       #drawnCounter:I
    :cond_2e
    move/from16 v27, v28

    .end local v28           #drawnCounter:I
    .restart local v27       #drawnCounter:I
    goto/16 :goto_10
.end method

.method public getFocusQuadHeight()F
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusItemHeight:F

    return v0
.end method

.method public getFocusQuadWidth()F
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusItemWidth:F

    return v0
.end method

.method public prepareDraw(Lcom/ecareme/pixwe/media/IndexRange;Lcom/ecareme/pixwe/media/IndexRange;IIIZFLcom/ecareme/pixwe/media/ScaleGestureDetector;Z)V
    .locals 0
    .parameter "bufferedVisibleRange"
    .parameter "visibleRange"
    .parameter "selectedSlot"
    .parameter "currentFocusSlot"
    .parameter "currentScaleSlot"
    .parameter "currentFocusIsPressed"
    .parameter "spreadValue"
    .parameter "scaleGestureDetector"
    .parameter "holdPosition"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 107
    iput-object p2, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 108
    iput p3, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedSlot:I

    .line 109
    iput p4, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusSlot:I

    .line 110
    iput-boolean p6, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentFocusIsPressed:Z

    .line 111
    iput p5, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mCurrentScaleSlot:I

    .line 112
    iput-object p8, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mScaleGestureDetector:Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    .line 113
    iput p7, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSpreadValue:F

    .line 114
    iput-boolean p9, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mHoldPosition:Z

    .line 115
    return-void
.end method

.method public update(F)Z
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 118
    iget v0, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mFocusMixRatio:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mTargetFocusMixRatio:F

    invoke-static {v0, v1, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mFocusMixRatio:F

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mTargetFocusMixRatio:F

    .line 120
    iget v0, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mFocusMixRatio:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mTargetFocusMixRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridDrawManager;->mSelectedMixRatio:Lcom/ecareme/pixwe/media/FloatAnim;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/FloatAnim;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
