.class public Lcom/mobipocket/common/library/reader/RenderedPageMetadata;
.super Ljava/lang/Object;
.source "RenderedPageMetadata.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/IRenderedPageMetadata;


# instance fields
.field private elements:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    return-void
.end method

.method private findElementIdx(I)I
    .locals 8
    .parameter "elementId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, min:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int v2, v4, v7

    .line 175
    .local v2, max:I
    const/4 v1, -0x1

    .local v1, lastIndex:I
    const/4 v0, 0x0

    .line 177
    .local v0, currentIndex:I
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v4

    invoke-interface {v4}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v4

    if-lt p1, v4, :cond_0

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v4

    invoke-interface {v4}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v4

    if-le p1, v4, :cond_2

    :cond_0
    move v4, v6

    .line 204
    :goto_0
    return v4

    .line 193
    :cond_1
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v4

    invoke-interface {v4}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v4

    if-ge v4, p1, :cond_3

    .line 195
    add-int/lit8 v3, v0, 0x1

    .line 201
    :goto_1
    move v1, v0

    .line 185
    :cond_2
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v4

    invoke-interface {v4}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v4

    if-eq v4, p1, :cond_4

    .line 187
    add-int v4, v2, v3

    div-int/lit8 v0, v4, 0x2

    .line 188
    if-ne v1, v0, :cond_1

    move v4, v6

    .line 190
    goto :goto_0

    .line 199
    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v4, v0

    .line 204
    goto :goto_0
.end method


# virtual methods
.method clearElements()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 60
    return-void
.end method

.method public createCoveringRectangles(II)Ljava/util/Vector;
    .locals 18
    .parameter "startId"
    .parameter "endId"

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 78
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 80
    move/from16 v2, p1

    .line 81
    .local v2, elementsEndId:I
    move/from16 v3, p2

    .line 90
    .local v3, elementsStartId:I
    :goto_0
    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->findElementIdx(I)I

    move-result v11

    .line 91
    .local v11, startIndex:I
    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->findElementIdx(I)I

    move-result v4

    .line 94
    .local v4, endIndex:I
    if-ltz v11, :cond_8

    if-lt v4, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v12

    invoke-interface {v12}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v12

    if-lt v2, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v12

    invoke-interface {v12}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v12

    if-gt v3, v12, :cond_8

    .line 100
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 103
    .local v5, finalRects:Ljava/util/Vector;
    const/4 v8, 0x0

    .line 105
    .local v8, lineRect:Lcom/amazon/system/drawing/Rectangle;
    move v6, v11

    .local v6, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v6, v12, :cond_6

    if-gt v6, v4, :cond_6

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v12

    invoke-interface {v12}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v10

    .line 109
    .local v10, rectList:Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, index:I
    :goto_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v7, v12, :cond_5

    .line 111
    invoke-virtual {v10, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/system/drawing/Rectangle;->cloneRectangle()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v9

    .line 114
    .local v9, rect:Lcom/amazon/system/drawing/Rectangle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    move-object v12, v0

    invoke-virtual {v12, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v12

    invoke-interface {v12}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getType()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    .line 117
    if-eqz v8, :cond_0

    .line 119
    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 120
    const/4 v8, 0x0

    .line 122
    :cond_0
    invoke-virtual {v5, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 109
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 85
    .end local v2           #elementsEndId:I
    .end local v3           #elementsStartId:I
    .end local v4           #endIndex:I
    .end local v5           #finalRects:Ljava/util/Vector;
    .end local v6           #i:I
    .end local v7           #index:I
    .end local v8           #lineRect:Lcom/amazon/system/drawing/Rectangle;
    .end local v9           #rect:Lcom/amazon/system/drawing/Rectangle;
    .end local v10           #rectList:Ljava/util/Vector;
    .end local v11           #startIndex:I
    .restart local p1
    :cond_1
    move/from16 v2, p2

    .line 86
    .restart local v2       #elementsEndId:I
    move/from16 v3, p1

    .restart local v3       #elementsStartId:I
    goto/16 :goto_0

    .line 124
    .end local p1
    .restart local v4       #endIndex:I
    .restart local v5       #finalRects:Ljava/util/Vector;
    .restart local v6       #i:I
    .restart local v7       #index:I
    .restart local v8       #lineRect:Lcom/amazon/system/drawing/Rectangle;
    .restart local v9       #rect:Lcom/amazon/system/drawing/Rectangle;
    .restart local v10       #rectList:Ljava/util/Vector;
    .restart local v11       #startIndex:I
    :cond_2
    if-nez v8, :cond_3

    .line 127
    move-object v8, v9

    goto :goto_3

    .line 132
    :cond_3
    invoke-virtual {v8}, Lcom/amazon/system/drawing/Rectangle;->getY()D

    move-result-wide v12

    invoke-virtual {v8}, Lcom/amazon/system/drawing/Rectangle;->getHeight()D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-virtual {v9}, Lcom/amazon/system/drawing/Rectangle;->getY()D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_4

    invoke-virtual {v8}, Lcom/amazon/system/drawing/Rectangle;->getY()D

    move-result-wide v12

    invoke-virtual {v9}, Lcom/amazon/system/drawing/Rectangle;->getY()D

    move-result-wide v14

    invoke-virtual {v9}, Lcom/amazon/system/drawing/Rectangle;->getHeight()D

    move-result-wide v16

    add-double v14, v14, v16

    cmpg-double v12, v12, v14

    if-gez v12, :cond_4

    invoke-virtual {v8}, Lcom/amazon/system/drawing/Rectangle;->getX()D

    move-result-wide v12

    invoke-virtual {v9}, Lcom/amazon/system/drawing/Rectangle;->getX()D

    move-result-wide v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_4

    .line 137
    invoke-virtual {v8, v9}, Lcom/amazon/system/drawing/Rectangle;->add(Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_3

    .line 142
    :cond_4
    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 143
    move-object v8, v9

    goto :goto_3

    .line 105
    .end local v9           #rect:Lcom/amazon/system/drawing/Rectangle;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 150
    .end local v7           #index:I
    .end local v10           #rectList:Ljava/util/Vector;
    :cond_6
    if-eqz v8, :cond_7

    .line 152
    invoke-virtual {v5, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    move-object v12, v5

    .line 159
    .end local v2           #elementsEndId:I
    .end local v3           #elementsStartId:I
    .end local v4           #endIndex:I
    .end local v5           #finalRects:Ljava/util/Vector;
    .end local v6           #i:I
    .end local v8           #lineRect:Lcom/amazon/system/drawing/Rectangle;
    .end local v11           #startIndex:I
    :goto_4
    return-object v12

    :cond_8
    const/4 v12, 0x0

    goto :goto_4
.end method

.method public getElementAtPoint(III)Lcom/mobipocket/common/library/reader/IRenderedPageElement;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "typeFilter"

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->getElementClosestToPoint(III)Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v2

    .line 212
    .local v2, ret:Lcom/mobipocket/common/library/reader/IRenderedPageElement;
    if-eqz v2, :cond_1

    .line 214
    invoke-interface {v2}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v1

    .line 216
    .local v1, rectArr:Ljava/util/Vector;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 218
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 225
    .end local v0           #i:I
    .end local v1           #rectArr:Ljava/util/Vector;
    :goto_1
    return-object v3

    .line 216
    .restart local v0       #i:I
    .restart local v1       #rectArr:Ljava/util/Vector;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0           #i:I
    .end local v1           #rectArr:Ljava/util/Vector;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getElementClosestToPoint(III)Lcom/mobipocket/common/library/reader/IRenderedPageElement;
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "typeFilter"

    .prologue
    .line 232
    const v0, 0x7fffffff

    .line 233
    .local v0, closestDistance:I
    const/4 v1, -0x1

    .line 234
    .local v1, closestIndex:I
    const v2, 0x7fffffff

    .line 237
    .local v2, closestSize:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v10, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 239
    iget-object v10, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v10, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {v10}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v5

    .line 242
    .local v5, elt:Lcom/mobipocket/common/library/reader/IRenderedPageElement;
    invoke-interface {v5}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getType()I

    move-result v10

    and-int/2addr v10, p3

    if-eqz v10, :cond_2

    .line 244
    invoke-interface {v5}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v9

    .line 246
    .local v9, rectArray:Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 248
    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/system/drawing/Rectangle;

    .line 251
    .local v8, r:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v8, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->minDistance(II)D

    move-result-wide v10

    double-to-int v4, v10

    .line 253
    .local v4, dist:I
    if-ne v4, v0, :cond_1

    .line 256
    iget v10, v8, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v11, v8, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int v3, v10, v11

    .line 257
    .local v3, currentSize:I
    if-ge v3, v2, :cond_0

    .line 259
    move v0, v4

    .line 260
    move v1, v6

    .line 261
    move v2, v3

    .line 246
    .end local v3           #currentSize:I
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 264
    :cond_1
    if-ge v4, v0, :cond_0

    .line 267
    move v0, v4

    .line 268
    move v1, v6

    .line 269
    iget v10, v8, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v11, v8, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int v2, v10, v11

    goto :goto_2

    .line 237
    .end local v4           #dist:I
    .end local v7           #j:I
    .end local v8           #r:Lcom/amazon/system/drawing/Rectangle;
    .end local v9           #rectArray:Ljava/util/Vector;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 275
    .end local v5           #elt:Lcom/mobipocket/common/library/reader/IRenderedPageElement;
    :cond_3
    const/4 v10, -0x1

    if-eq v1, v10, :cond_4

    .line 277
    iget-object v10, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v10

    .line 280
    :goto_3
    return-object v10

    .restart local p0
    :cond_4
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public getElements(I)Ljava/util/Vector;
    .locals 4
    .parameter "typeFilter"

    .prologue
    .line 38
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 40
    .local v2, matchedElements:Ljava/util/Vector;
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 41
    .end local p0
    .local v1, enumeration:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v0

    .line 44
    .local v0, element:Lcom/mobipocket/common/library/reader/IRenderedPageElement;
    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    .end local v0           #element:Lcom/mobipocket/common/library/reader/IRenderedPageElement;
    :cond_1
    return-object v2
.end method

.method public getFirstElementPositionId()I
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v0

    .line 24
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastElementPositionId()I
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection$SelectableObject;->getPageElement()Lcom/mobipocket/common/library/reader/IRenderedPageElement;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/IRenderedPageElement;->getId()I

    move-result v0

    .line 33
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method setSelectableObjectList(Ljava/util/Vector;)V
    .locals 0
    .parameter "selectableObjects"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/RenderedPageMetadata;->elements:Ljava/util/Vector;

    .line 70
    return-void
.end method
