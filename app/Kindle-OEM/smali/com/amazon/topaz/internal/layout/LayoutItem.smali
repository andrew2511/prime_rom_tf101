.class public Lcom/amazon/topaz/internal/layout/LayoutItem;
.super Ljava/lang/Object;
.source "LayoutItem.java"


# instance fields
.field public baseline:I

.field private final callbacks:Ljava/util/List;

.field private isOpenMultilineLink:Z

.field public final item:Lcom/amazon/topaz/internal/book/Drawable;

.field public final pos:Lcom/amazon/system/drawing/Rectangle;

.field private final underlined:Z


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;IZZLjava/util/List;)V
    .locals 1
    .parameter "i"
    .parameter "p"
    .parameter "baseline"
    .parameter "underlined"
    .parameter "openLink"
    .parameter "callbacks"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    .line 44
    if-eqz p2, :cond_0

    .line 46
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p2}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 52
    :goto_0
    iput p3, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->baseline:I

    .line 53
    iput-boolean p4, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->underlined:Z

    .line 54
    iput-boolean p5, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->isOpenMultilineLink:Z

    .line 55
    iput-object p6, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->callbacks:Ljava/util/List;

    .line 56
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    goto :goto_0
.end method


# virtual methods
.method public closeLink(Ljava/util/Collection;)V
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->isOpenMultilineLink:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->isOpenMultilineLink:Z

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public draw(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/drawing/Canvas;)V
    .locals 3
    .parameter "clipRegion"
    .parameter "c"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {p1, v2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->rectanglesIntersect(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 63
    .local v0, bounds:Lcom/amazon/system/drawing/Rectangle;
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v2, p2, v0}, Lcom/amazon/topaz/internal/book/Drawable;->draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V

    .line 65
    iget-boolean v2, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->underlined:Z

    if-eqz v2, :cond_0

    .line 67
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v1, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 68
    .local v1, underline:Lcom/amazon/system/drawing/Rectangle;
    iget v2, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->baseline:I

    add-int/lit8 v2, v2, 0x14

    iput v2, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 69
    const/4 v2, 0x1

    iput v2, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 70
    sget-object v2, Lcom/amazon/system/drawing/Color;->black:Lcom/amazon/system/drawing/Color;

    invoke-virtual {p2, v2, v1}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Rectangle;)V

    .line 73
    .end local v0           #bounds:Lcom/amazon/system/drawing/Rectangle;
    .end local v1           #underline:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    return-void
.end method

.method public getCallbacks()Ljava/util/List;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method public isOpenMultilineLink()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->isOpenMultilineLink:Z

    return v0
.end method

.method public shiftCoordinates(I)V
    .locals 2
    .parameter "deltaY"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 136
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public underlined()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/layout/LayoutItem;->underlined:Z

    return v0
.end method
