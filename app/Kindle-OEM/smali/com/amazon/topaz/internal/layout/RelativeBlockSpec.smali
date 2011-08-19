.class final Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;
.super Lcom/amazon/topaz/internal/layout/BlockSpec;
.source "RelativeBlockSpec.java"


# instance fields
.field private final bottomMargin:I

.field private final dest:Lcom/amazon/system/drawing/Rectangle;

.field private final display:I

.field private final parent:Lcom/amazon/topaz/internal/layout/BlockSpec;

.field public final relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

.field private final topMargin:I


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/BlockSpec;ZI)V
    .locals 16
    .parameter "what"
    .parameter "rawStyle"
    .parameter "parent"
    .parameter "popupMode"
    .parameter "screenHeight"

    .prologue
    .line 28
    new-instance v14, Lcom/amazon/topaz/internal/layout/CommonStyles;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    move-object v15, v0

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/layout/CommonStyles;-><init>(Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/CommonStyles;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/internal/layout/BlockSpec;-><init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/internal/layout/CommonStyles;)V

    .line 30
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->parent:Lcom/amazon/topaz/internal/layout/BlockSpec;

    .line 33
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move v14, v0

    if-eqz v14, :cond_2

    .line 35
    move-object/from16 v0, p3

    check-cast v0, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;

    move-object v4, v0

    iget-object v11, v4, Lcom/amazon/topaz/internal/layout/ReflowBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    .line 42
    .local v11, relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;
    :goto_0
    new-instance v14, Lcom/amazon/topaz/internal/layout/RelativeStyles;

    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    move v15, v0

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v11

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/topaz/internal/layout/RelativeStyles;-><init>(Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/RelativeStyles;Z)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    move-object v14, v0

    const/4 v15, 0x1

    move-object v0, v14

    move/from16 v1, p4

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/layout/CommonStyles;->getDisplay(ZZ)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->display:I

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    move-object v14, v0

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/amazon/topaz/internal/layout/CommonStyles;->getMargin(I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v6

    .line 48
    .local v6, margin:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getLeft()I

    move-result v14

    iget v15, v6, Lcom/amazon/system/drawing/Rectangle;->x:I

    add-int v5, v14, v15

    .line 49
    .local v5, left:I
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/topaz/internal/layout/BlockSpec;->getRight()I

    move-result v14

    invoke-static {v6}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v15

    sub-int v12, v14, v15

    .line 51
    .local v12, right:I
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v13

    .line 55
    .local v13, src:Lcom/amazon/system/drawing/Rectangle;
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    move v14, v0

    if-eqz v14, :cond_4

    .line 56
    move-object/from16 v0, p3

    check-cast v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    move-object v10, v0

    .line 58
    .local v10, relParent:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;
    iget-object v14, v10, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget v14, v14, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    .line 59
    new-instance v8, Lcom/amazon/system/drawing/Rectangle;

    iget-object v14, v10, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v8, v14}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 60
    .local v8, pdest:Lcom/amazon/system/drawing/Rectangle;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/amazon/topaz/internal/book/Container;->getPackWidth()I

    move-result v9

    .line 61
    .local v9, pwidth:I
    iget v14, v8, Lcom/amazon/system/drawing/Rectangle;->width:I

    if-ge v14, v9, :cond_0

    .line 62
    iget v14, v8, Lcom/amazon/system/drawing/Rectangle;->height:I

    mul-int/2addr v14, v9

    iget v15, v8, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/2addr v14, v15

    iput v14, v8, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 63
    iput v9, v8, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 66
    :cond_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v14

    invoke-static {v13, v14, v8}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->reposition(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    .line 68
    .local v4, dest:Lcom/amazon/system/drawing/Rectangle;
    iget-object v14, v10, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v4, v8, v14}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    .line 127
    .end local v8           #pdest:Lcom/amazon/system/drawing/Rectangle;
    .end local v9           #pwidth:I
    .end local v10           #relParent:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;
    :cond_1
    :goto_1
    move-object/from16 v0, p3

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    move v14, v0

    if-eqz v14, :cond_a

    .line 129
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->topMargin:I

    .line 135
    :goto_2
    invoke-static {v6}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->y2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->bottomMargin:I

    .line 137
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    .line 138
    return-void

    .line 39
    .end local v4           #dest:Lcom/amazon/system/drawing/Rectangle;
    .end local v5           #left:I
    .end local v6           #margin:Lcom/amazon/system/drawing/Rectangle;
    .end local v11           #relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;
    .end local v12           #right:I
    .end local v13           #src:Lcom/amazon/system/drawing/Rectangle;
    :cond_2
    move-object/from16 v0, p3

    check-cast v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    move-object v4, v0

    iget-object v11, v4, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    .restart local v11       #relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;
    goto/16 :goto_0

    .line 71
    .restart local v5       #left:I
    .restart local v6       #margin:Lcom/amazon/system/drawing/Rectangle;
    .restart local v10       #relParent:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;
    .restart local v12       #right:I
    .restart local v13       #src:Lcom/amazon/system/drawing/Rectangle;
    :cond_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/BlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v14

    iget-object v15, v10, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v13, v14, v15}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    .restart local v4       #dest:Lcom/amazon/system/drawing/Rectangle;
    goto :goto_1

    .line 75
    .end local v4           #dest:Lcom/amazon/system/drawing/Rectangle;
    .end local v10           #relParent:Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;
    :cond_4
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v4, v13}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 76
    .restart local v4       #dest:Lcom/amazon/system/drawing/Rectangle;
    iput v5, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 77
    const/4 v14, 0x0

    iput v14, v4, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 79
    if-eqz p5, :cond_6

    .line 80
    iget v14, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    move v0, v14

    move/from16 v1, p5

    if-le v0, v1, :cond_5

    .line 82
    iget v14, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int v14, v14, p5

    iget v15, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/2addr v14, v15

    iput v14, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 83
    move/from16 v0, p5

    move-object v1, v4

    iput v0, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 95
    :cond_5
    iget v14, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v15, v6, Lcom/amazon/system/drawing/Rectangle;->y:I

    add-int/2addr v14, v15

    move v0, v14

    move/from16 v1, p5

    if-le v0, v1, :cond_6

    .line 97
    iget v14, v6, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int v7, p5, v14

    .line 99
    .local v7, newH:I
    iget v14, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int/2addr v14, v7

    iget v15, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/2addr v14, v15

    iput v14, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 100
    iput v7, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 104
    .end local v7           #newH:I
    :cond_6
    iget v14, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int v15, v12, v5

    if-le v14, v15, :cond_8

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    move-object v14, v0

    iget v14, v14, Lcom/amazon/topaz/internal/layout/RelativeStyles;->pack:I

    if-nez v14, :cond_7

    .line 107
    iget v14, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int v15, v12, v5

    mul-int/2addr v14, v15

    iget v15, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/2addr v14, v15

    iput v14, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 109
    :cond_7
    sub-int v14, v12, v5

    iput v14, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    goto/16 :goto_1

    .line 112
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    move-object v14, v0

    iget v14, v14, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    move-object v14, v0

    iget v14, v14, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 117
    iget v14, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v15, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int v15, v12, v15

    add-int/2addr v14, v15

    iput v14, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    goto/16 :goto_1

    .line 122
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->common:Lcom/amazon/topaz/internal/layout/CommonStyles;

    move-object v14, v0

    invoke-static {v4}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v15

    sub-int v15, v12, v15

    invoke-virtual {v14, v5, v15}, Lcom/amazon/topaz/internal/layout/CommonStyles;->computeHorizontalPosition(II)I

    move-result v14

    iput v14, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    goto/16 :goto_1

    .line 133
    :cond_a
    iget v14, v6, Lcom/amazon/system/drawing/Rectangle;->y:I

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->topMargin:I

    goto/16 :goto_2
.end method


# virtual methods
.method createChild(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;ZZI)Lcom/amazon/topaz/internal/layout/BlockSpec;
    .locals 6
    .parameter "c"
    .parameter "baseStyle"
    .parameter "popupMode"
    .parameter "allowJustify"
    .parameter "screenHeight"

    .prologue
    .line 143
    new-instance v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;-><init>(Lcom/amazon/topaz/internal/book/Container;Lcom/amazon/topaz/styles/Style;Lcom/amazon/topaz/internal/layout/BlockSpec;ZI)V

    return-object v0
.end method

.method public getBottomMargin()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->bottomMargin:I

    return v0
.end method

.method getBoundingBox()Lcom/amazon/system/drawing/Rectangle;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    return-object v0
.end method

.method public getDisplay()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->display:I

    return v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v0

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->topMargin:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    return v0
.end method

.method isCompatible(Lcom/amazon/topaz/internal/layout/BlockSpec;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 198
    instance-of v0, p1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    if-nez v0, :cond_0

    move v0, v2

    .line 235
    :goto_0
    return v0

    .line 204
    :cond_0
    check-cast p1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    .line 205
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/RelativeStyles;->isCompatible(Lcom/amazon/topaz/internal/layout/RelativeStyles;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 207
    goto :goto_0

    .line 211
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->display:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->display:I

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 213
    goto :goto_0

    .line 217
    :cond_2
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->topMargin:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->topMargin:I

    if-eq v0, v1, :cond_3

    move v0, v2

    .line 219
    goto :goto_0

    .line 223
    :cond_3
    iget v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->bottomMargin:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->bottomMargin:I

    if-eq v0, v1, :cond_4

    move v0, v2

    .line 225
    goto :goto_0

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->equals(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    .line 231
    goto :goto_0

    .line 235
    :cond_5
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/layout/BlockSpec;->isCompatible(Lcom/amazon/topaz/internal/layout/BlockSpec;)Z

    move-result v0

    goto :goto_0
.end method

.method remap(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;
    .locals 2
    .parameter "bounds"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->what:Lcom/amazon/topaz/internal/book/Container;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->dest:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {p1, v0, v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public shouldAddLine()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->parent:Lcom/amazon/topaz/internal/layout/BlockSpec;

    instance-of v0, v0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/RelativeBlockSpec;->relative:Lcom/amazon/topaz/internal/layout/RelativeStyles;

    iget v0, v0, Lcom/amazon/topaz/internal/layout/RelativeStyles;->floatside:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
