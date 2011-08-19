.class public Lcom/amazon/topaz/internal/layout/LayoutLine;
.super Ljava/lang/Object;
.source "LayoutLine.java"


# instance fields
.field private baseline:I

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/layout/LayoutItem;",
            ">;"
        }
    .end annotation
.end field

.field private open_multiline_link:Z

.field private final pos:Lcom/amazon/system/drawing/Rectangle;

.field private final topMargin:I

.field private final underlined:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/amazon/system/drawing/Rectangle;ZIIZLjava/util/List;)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "underlined"
    .parameter "baseline"
    .parameter "topMargin"
    .parameter "openLink"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/layout/LayoutItem;",
            ">;",
            "Lcom/amazon/system/drawing/Rectangle;",
            "ZIIZ",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/topaz/internal/layout/LayoutItem;>;"
    .local p7, callbacks:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/topaz/Callback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 38
    iput-boolean p3, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->underlined:Z

    .line 39
    iput p4, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->baseline:I

    .line 40
    iput p5, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->topMargin:I

    .line 41
    iput-boolean p6, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->open_multiline_link:Z

    .line 42
    iput-object p7, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->callbacks:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public closeLink(Ljava/util/Collection;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->open_multiline_link:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 204
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/LayoutItem;->closeLink(Ljava/util/Collection;)V

    goto :goto_0

    .line 206
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->open_multiline_link:Z

    .line 212
    return-void

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsID(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 47
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->topMargin:I

    if-lez v0, :cond_0

    .line 49
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->topMargin:I

    sub-int/2addr v1, v2

    const v2, 0x7fffffff

    iget v3, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->topMargin:I

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 50
    invoke-static {p1, v0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->rectanglesIntersect(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p2, v0}, Lcom/amazon/topaz/internal/drawing/Canvas;->clearRect(Lcom/amazon/system/drawing/Rectangle;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {p1, v0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->rectanglesIntersect(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 62
    invoke-virtual {v0, p1, p2}, Lcom/amazon/topaz/internal/layout/LayoutItem;->draw(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/Canvas;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->underlined:Z

    if-eqz v0, :cond_2

    invoke-interface {p3}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    move v2, v0

    :goto_1
    if-ltz v2, :cond_5

    .line 71
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 72
    iget-object v3, v0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    if-eqz v3, :cond_3

    .line 74
    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 79
    :goto_2
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v1, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 80
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->baseline:I

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 81
    invoke-static {v0}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v0

    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 82
    iput v4, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drawing UNDERLINE w/ color "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/Canvas;->getColor()Lcom/amazon/system/drawing/Color;

    move-result-object v2

    iget v2, v2, Lcom/amazon/system/drawing/Color;->color:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/drawing/Canvas;->getColor()Lcom/amazon/system/drawing/Color;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V

    .line 88
    :cond_2
    invoke-interface {p3}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    :goto_3
    return v0

    .line 69
    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v5

    .line 88
    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->baseline:I

    return v0
.end method

.method public getBottomY()I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method public getEndID()I
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v0

    return v0
.end method

.method public getEndPageNum()I
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getPageNum()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/layout/LayoutItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPos()Lcom/amazon/system/drawing/Rectangle;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    return-object v0
.end method

.method public getStartID()I
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v0

    return v0
.end method

.method public getStartPageNum()I
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Drawable;->getPageNum()I

    move-result v0

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->topMargin:I

    return v0
.end method

.method public getTopY()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    return v0
.end method

.method public isCompatible(Lcom/amazon/topaz/internal/layout/LayoutLine;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->underlined:Z

    iget-boolean v1, p1, Lcom/amazon/topaz/internal/layout/LayoutLine;->underlined:Z

    if-eq v0, v1, :cond_0

    move v0, v3

    .line 283
    :goto_0
    return v0

    .line 241
    :cond_0
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->topMargin:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/LayoutLine;->topMargin:I

    if-eq v0, v1, :cond_1

    move v0, v3

    .line 243
    goto :goto_0

    .line 247
    :cond_1
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->baseline:I

    iget v1, p1, Lcom/amazon/topaz/internal/layout/LayoutLine;->baseline:I

    if-eq v0, v1, :cond_2

    move v0, v3

    .line 249
    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->open_multiline_link:Z

    iget-boolean v1, p1, Lcom/amazon/topaz/internal/layout/LayoutLine;->open_multiline_link:Z

    if-eq v0, v1, :cond_3

    move v0, v3

    .line 255
    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v0, v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->equals(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    .line 261
    goto :goto_0

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    move v0, v3

    .line 267
    goto :goto_0

    :cond_5
    move v2, v3

    .line 271
    :goto_1
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 274
    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 276
    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    iget-object v1, v1, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    if-eq v0, v1, :cond_6

    move v0, v3

    .line 278
    goto :goto_0

    .line 271
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 283
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOpenMultilineLink()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->open_multiline_link:Z

    return v0
.end method

.method public shiftCoordinates(I)V
    .locals 4
    .parameter "deltaY"

    .prologue
    .line 292
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->baseline:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->baseline:I

    .line 293
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v3, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    add-int/2addr v3, p1

    iput v3, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 295
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 296
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/layout/LayoutItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 299
    .local v0, item:Lcom/amazon/topaz/internal/layout/LayoutItem;
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/layout/LayoutItem;->shiftCoordinates(I)V

    goto :goto_0

    .line 301
    .end local v0           #item:Lcom/amazon/topaz/internal/layout/LayoutItem;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    const-string v1, ""

    .line 307
    .local v1, retval:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 309
    if-lez v0, :cond_0

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/topaz/internal/layout/LayoutItem;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_1
    return-object v1
.end method

.method public underlined()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutLine;->underlined:Z

    return v0
.end method
