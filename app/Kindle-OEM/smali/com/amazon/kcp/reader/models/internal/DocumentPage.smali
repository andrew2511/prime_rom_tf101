.class public Lcom/amazon/kcp/reader/models/internal/DocumentPage;
.super Ljava/lang/Object;
.source "DocumentPage.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IDocumentPage;


# instance fields
.field private elements:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    return-void
.end method

.method private findElementIdx(I)I
    .locals 8
    .parameter "elementId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, min:I
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int v2, v4, v7

    .line 195
    .local v2, max:I
    const/4 v1, -0x1

    .local v1, lastIndex:I
    const/4 v0, 0x0

    .line 197
    .local v0, currentIndex:I
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v4}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v4

    if-lt p1, v4, :cond_0

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v4}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v4

    if-le p1, v4, :cond_2

    :cond_0
    move v4, v6

    .line 224
    :goto_0
    return v4

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v4}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v4

    if-ge v4, p1, :cond_3

    .line 215
    add-int/lit8 v3, v0, 0x1

    .line 221
    :goto_1
    move v1, v0

    .line 205
    :cond_2
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v4}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v4

    if-eq v4, p1, :cond_4

    .line 207
    add-int v4, v2, v3

    div-int/lit8 v0, v4, 0x2

    .line 208
    if-ne v1, v0, :cond_1

    move v4, v6

    .line 210
    goto :goto_0

    .line 219
    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    move v4, v0

    .line 224
    goto :goto_0
.end method


# virtual methods
.method public addPageElement(Lcom/amazon/kcp/reader/models/IPageElement;)Z
    .locals 5
    .parameter "elt"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    move v1, v3

    .line 104
    :goto_0
    return v1

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 97
    .local v0, count:I
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    sub-int v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v2

    if-le v1, v2, :cond_2

    move v1, v3

    .line 99
    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v4

    .line 104
    goto :goto_0
.end method

.method public clearPageElements()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 75
    return-void
.end method

.method public createCoveringRectangles(II)Ljava/util/Vector;
    .locals 13
    .parameter "startId"
    .parameter "endId"

    .prologue
    .line 229
    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 233
    if-ge p2, p1, :cond_1

    .line 235
    move v0, p1

    .line 236
    .local v0, elementsEndId:I
    move v1, p2

    .line 245
    .local v1, elementsStartId:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->findElementIdx(I)I

    move-result v9

    .line 246
    .local v9, startIndex:I
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->findElementIdx(I)I

    move-result v2

    .line 249
    .local v2, endIndex:I
    if-ltz v9, :cond_8

    if-lt v2, v9, :cond_8

    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v10

    if-lt v0, v10, :cond_8

    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    iget-object v11, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v10

    if-gt v1, v10, :cond_8

    .line 255
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 258
    .local v3, finalRects:Ljava/util/Vector;
    const/4 v6, 0x0

    .line 260
    .local v6, lineRect:Lcom/amazon/system/drawing/Rectangle;
    move v4, v9

    .local v4, i:I
    :goto_1
    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v4, v10, :cond_6

    if-gt v4, v2, :cond_6

    .line 262
    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v8

    .line 264
    .local v8, rectList:Ljava/util/Vector;
    const/4 v5, 0x0

    .local v5, index:I
    :goto_2
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v5, v10, :cond_5

    .line 267
    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p1}, Lcom/amazon/system/drawing/Rectangle;->cloneRectangle()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v7

    .line 270
    .local v7, rect:Lcom/amazon/system/drawing/Rectangle;
    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v10, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 273
    if-eqz v6, :cond_0

    .line 275
    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 276
    const/4 v6, 0x0

    .line 278
    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 264
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 240
    .end local v0           #elementsEndId:I
    .end local v1           #elementsStartId:I
    .end local v2           #endIndex:I
    .end local v3           #finalRects:Ljava/util/Vector;
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v6           #lineRect:Lcom/amazon/system/drawing/Rectangle;
    .end local v7           #rect:Lcom/amazon/system/drawing/Rectangle;
    .end local v8           #rectList:Ljava/util/Vector;
    .end local v9           #startIndex:I
    .restart local p1
    :cond_1
    move v0, p2

    .line 241
    .restart local v0       #elementsEndId:I
    move v1, p1

    .restart local v1       #elementsStartId:I
    goto :goto_0

    .line 280
    .end local p1
    .restart local v2       #endIndex:I
    .restart local v3       #finalRects:Ljava/util/Vector;
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v6       #lineRect:Lcom/amazon/system/drawing/Rectangle;
    .restart local v7       #rect:Lcom/amazon/system/drawing/Rectangle;
    .restart local v8       #rectList:Ljava/util/Vector;
    .restart local v9       #startIndex:I
    :cond_2
    if-nez v6, :cond_3

    .line 283
    move-object v6, v7

    goto :goto_3

    .line 288
    :cond_3
    iget v10, v6, Lcom/amazon/system/drawing/Rectangle;->x:I

    add-int/lit8 v10, v10, 0x1

    iget v11, v7, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v12, v7, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    invoke-virtual {v6, v10, v11}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 291
    invoke-virtual {v6, v7}, Lcom/amazon/system/drawing/Rectangle;->add(Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_3

    .line 296
    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 297
    move-object v6, v7

    goto :goto_3

    .line 260
    .end local v7           #rect:Lcom/amazon/system/drawing/Rectangle;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 304
    .end local v5           #index:I
    .end local v8           #rectList:Ljava/util/Vector;
    :cond_6
    if-eqz v6, :cond_7

    .line 306
    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    move-object v10, v3

    .line 313
    .end local v0           #elementsEndId:I
    .end local v1           #elementsStartId:I
    .end local v2           #endIndex:I
    .end local v3           #finalRects:Ljava/util/Vector;
    .end local v4           #i:I
    .end local v6           #lineRect:Lcom/amazon/system/drawing/Rectangle;
    .end local v9           #startIndex:I
    :goto_4
    return-object v10

    :cond_8
    const/4 v10, 0x0

    goto :goto_4
.end method

.method public createText(III)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 324
    const/4 v0, 0x0

    .line 328
    if-ge p2, p1, :cond_2

    .line 331
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->findElementIdx(I)I

    move-result v2

    move v3, p1

    .line 340
    :goto_0
    if-ltz v2, :cond_1

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    if-ltz p3, :cond_1

    move v4, v0

    .line 345
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    if-gt v0, v3, :cond_1

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getType()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IWordPageElement;

    check-cast v0, Lcom/amazon/kcp/reader/models/IWordPageElement;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IWordPageElement;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 350
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 352
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IWordPageElement;

    check-cast v0, Lcom/amazon/kcp/reader/models/IWordPageElement;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IWordPageElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    add-int/lit8 v0, v4, 0x1

    .line 357
    if-eqz p3, :cond_4

    if-lt v0, p3, :cond_4

    .line 365
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->findElementIdx(I)I

    move-result v2

    move v3, p2

    goto :goto_0

    :cond_3
    move v0, v4

    .line 345
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_1
.end method

.method createText(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;I)Ljava/lang/String;
    .locals 2
    .parameter "startElement"
    .parameter "endElement"
    .parameter "maxWord"

    .prologue
    .line 318
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    invoke-interface {p2}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElementAtPoint(III)Lcom/amazon/kcp/reader/models/IPageElement;
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "filter"

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->getElementClosestToPoint(III)Lcom/amazon/kcp/reader/models/IPageElement;

    move-result-object v2

    .line 112
    .local v2, ret:Lcom/amazon/kcp/reader/models/IPageElement;
    if-eqz v2, :cond_1

    .line 114
    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v1

    .line 116
    .local v1, rectArr:Ljava/util/Vector;
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 118
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 125
    .end local v0           #i:I
    .end local v1           #rectArr:Ljava/util/Vector;
    :goto_1
    return-object v3

    .line 116
    .restart local v0       #i:I
    .restart local v1       #rectArr:Ljava/util/Vector;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0           #i:I
    .end local v1           #rectArr:Ljava/util/Vector;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getElementClosestToPoint(III)Lcom/amazon/kcp/reader/models/IPageElement;
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "filter"

    .prologue
    .line 131
    const v0, 0x7fffffff

    .line 132
    .local v0, closestDistance:I
    const/4 v1, -0x1

    .line 133
    .local v1, closestIndex:I
    const v2, 0x7fffffff

    .line 136
    .local v2, closestSize:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v6, v10, :cond_3

    .line 138
    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v10, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/reader/models/IPageElement;

    .line 141
    .local v5, elt:Lcom/amazon/kcp/reader/models/IPageElement;
    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IPageElement;->getType()I

    move-result v10

    and-int/2addr v10, p3

    if-eqz v10, :cond_2

    .line 143
    invoke-interface {v5}, Lcom/amazon/kcp/reader/models/IPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v9

    .line 145
    .local v9, rectArray:Ljava/util/Vector;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 147
    invoke-virtual {v9, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/system/drawing/Rectangle;

    .line 150
    .local v8, r:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v8, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->minDistance(II)D

    move-result-wide v10

    double-to-int v4, v10

    .line 152
    .local v4, dist:I
    if-ne v4, v0, :cond_1

    .line 155
    iget v10, v8, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v11, v8, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int v3, v10, v11

    .line 156
    .local v3, currentSize:I
    if-ge v3, v2, :cond_0

    .line 158
    move v0, v4

    .line 159
    move v1, v6

    .line 160
    move v2, v3

    .line 145
    .end local v3           #currentSize:I
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 163
    :cond_1
    if-ge v4, v0, :cond_0

    .line 166
    move v0, v4

    .line 167
    move v1, v6

    .line 168
    iget v10, v8, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v11, v8, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int v2, v10, v11

    goto :goto_2

    .line 136
    .end local v4           #dist:I
    .end local v7           #j:I
    .end local v8           #r:Lcom/amazon/system/drawing/Rectangle;
    .end local v9           #rectArray:Ljava/util/Vector;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    .end local v5           #elt:Lcom/amazon/kcp/reader/models/IPageElement;
    :cond_3
    const/4 v10, -0x1

    if-eq v1, v10, :cond_4

    .line 176
    iget-object v10, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v10, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/IPageElement;

    move-object v10, p0

    .line 179
    :goto_3
    return-object v10

    .restart local p0
    :cond_4
    const/4 v10, 0x0

    goto :goto_3
.end method

.method public getElements(I)Ljava/util/Vector;
    .locals 4
    .parameter "filter"

    .prologue
    .line 54
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 56
    .local v2, matchedElements:Ljava/util/Vector;
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 57
    .local v1, enumeration:Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/IPageElement;

    .line 60
    .local v0, element:Lcom/amazon/kcp/reader/models/IPageElement;
    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IPageElement;->getType()I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 66
    .end local v0           #element:Lcom/amazon/kcp/reader/models/IPageElement;
    :cond_1
    return-object v2
.end method

.method public getFirstElementPositionId()I
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {p0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    .line 28
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
    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {p0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v0

    .line 37
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNextElementPositionId(I)I
    .locals 4
    .parameter "positionId"

    .prologue
    const/4 v3, -0x1

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->findElementIdx(I)I

    move-result v0

    .line 44
    .local v0, positionIdIndex:I
    if-eq v0, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    move v1, v3

    .line 49
    .end local p0
    :goto_0
    return v1

    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->elements:Ljava/util/Vector;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/IPageElement;

    invoke-interface {p0}, Lcom/amazon/kcp/reader/models/IPageElement;->getId()I

    move-result v1

    goto :goto_0
.end method
