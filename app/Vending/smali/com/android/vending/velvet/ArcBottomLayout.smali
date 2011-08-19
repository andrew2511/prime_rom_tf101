.class public Lcom/android/vending/velvet/ArcBottomLayout;
.super Landroid/widget/LinearLayout;
.source "ArcBottomLayout.java"


# static fields
.field private static final arcRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/vending/velvet/ArcBottomLayout;->arcRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 30
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 32
    const/16 v19, 0x0

    .line 33
    .local v19, portraitParent:Lcom/android/vending/velvet/PortraitCarouselView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/ArcBottomLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    .line 34
    .local v18, parent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v18, :cond_0

    .line 35
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 36
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/vending/velvet/PortraitCarouselView;

    move-object/from16 v19, v0

    .line 42
    :cond_0
    if-nez v19, :cond_3

    .line 90
    :cond_1
    return-void

    .line 39
    :cond_2
    invoke-interface/range {v18 .. v18}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/vending/velvet/PortraitCarouselView;->getOffsetForDropShadowBlending()I

    move-result v14

    .line 47
    .local v14, offsetForDropShadowBleeding:I
    invoke-virtual/range {v19 .. v19}, Lcom/android/vending/velvet/PortraitCarouselView;->getHeight()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/PortraitCarouselView;->getArcStartY(II)I

    move-result v7

    .line 49
    .local v7, arcStartY:I
    invoke-virtual/range {v19 .. v19}, Lcom/android/vending/velvet/PortraitCarouselView;->getHeight()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/PortraitCarouselView;->getArcEndY(II)I

    move-result v5

    .line 52
    .local v5, arcEndY:I
    sget-object v20, Lcom/android/vending/velvet/ArcBottomLayout;->arcRect:Landroid/graphics/RectF;

    invoke-virtual/range {v19 .. v19}, Lcom/android/vending/velvet/PortraitCarouselView;->getWidth()I

    move-result v21

    invoke-virtual/range {v19 .. v19}, Lcom/android/vending/velvet/PortraitCarouselView;->getHeight()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move v3, v7

    move v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcOvalRectangleForCurvedBottom(Landroid/graphics/RectF;IIII)V

    .line 55
    sget-object v20, Lcom/android/vending/velvet/ArcBottomLayout;->arcRect:Landroid/graphics/RectF;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v20

    const/high16 v21, 0x4000

    div-float v6, v20, v21

    .line 61
    .local v6, arcRadius:F
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/ArcBottomLayout;->getChildCount()I

    move-result v20

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 62
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/ArcBottomLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 63
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-eqz v20, :cond_4

    .line 61
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 74
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v20

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x4

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sget-object v21, Lcom/android/vending/velvet/ArcBottomLayout;->arcRect:Landroid/graphics/RectF;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v21

    sub-float v9, v20, v21

    .line 76
    .local v9, dxLeft:F
    mul-float v20, v6, v6

    mul-float v21, v9, v9

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move v11, v0

    .line 77
    .local v11, dyLeft:F
    sub-float v20, v6, v11

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 80
    .local v16, offsetYLeft:I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v20

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x4

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sget-object v21, Lcom/android/vending/velvet/ArcBottomLayout;->arcRect:Landroid/graphics/RectF;

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v21

    sub-float v10, v20, v21

    .line 82
    .local v10, dxRight:F
    mul-float v20, v6, v6

    mul-float v21, v10, v10

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move v12, v0

    .line 83
    .local v12, dyRight:F
    sub-float v20, v6, v12

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 86
    .local v17, offsetYRight:I
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 87
    .local v15, offsetY:I
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v20

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v21

    sub-int v21, v21, v15

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v23

    sub-int v23, v23, v15

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2
.end method
