.class final Lcom/amazon/topaz/internal/layout/DrawItem;
.super Ljava/lang/Object;
.source "DrawItem.java"


# instance fields
.field public final callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final item:Lcom/amazon/topaz/internal/book/Drawable;

.field public final sz:Lcom/amazon/system/drawing/Rectangle;

.field public underline:Z

.field public xpos:I


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/book/Drawable;Lcom/amazon/system/drawing/Rectangle;I)V
    .locals 1
    .parameter "i"
    .parameter "ss"
    .parameter "x"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    .line 14
    if-eqz p2, :cond_0

    .line 16
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p2}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    .line 22
    :goto_0
    iput p3, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->xpos:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->underline:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->callbacks:Ljava/util/ArrayList;

    .line 25
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/layout/DrawItem;)V
    .locals 2
    .parameter "di"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/DrawItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    .line 29
    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    .line 37
    :goto_0
    iget v0, p1, Lcom/amazon/topaz/internal/layout/DrawItem;->xpos:I

    iput v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->xpos:I

    .line 38
    iget-boolean v0, p1, Lcom/amazon/topaz/internal/layout/DrawItem;->underline:Z

    iput-boolean v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->underline:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/amazon/topaz/internal/layout/DrawItem;->callbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->callbacks:Ljava/util/ArrayList;

    .line 40
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    goto :goto_0
.end method
