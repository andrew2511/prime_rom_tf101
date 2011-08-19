.class Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;
.super Ljava/lang/Object;
.source "LineAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/layout/LineAccumulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawItemsList"
.end annotation


# instance fields
.field private final drawItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/layout/DrawItem;",
            ">;"
        }
    .end annotation
.end field

.field private numVisibleDrawItems:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->numVisibleDrawItems:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/topaz/internal/layout/LineAccumulator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/topaz/internal/layout/DrawItem;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p1, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->numVisibleDrawItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->numVisibleDrawItems:I

    .line 77
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->numVisibleDrawItems:I

    .line 83
    return-void
.end method

.method public getFirst()Lcom/amazon/topaz/internal/layout/DrawItem;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/DrawItem;

    return-object p0
.end method

.method public getLast()Lcom/amazon/topaz/internal/layout/DrawItem;
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/layout/DrawItem;

    return-object p0
.end method

.method public getLastVisibleDrawItem()Lcom/amazon/topaz/internal/layout/DrawItem;
    .locals 4

    .prologue
    .line 59
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 61
    iget-object v2, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/topaz/internal/layout/DrawItem;

    .line 62
    .local v1, item:Lcom/amazon/topaz/internal/layout/DrawItem;
    iget-object v2, v1, Lcom/amazon/topaz/internal/layout/DrawItem;->sz:Lcom/amazon/system/drawing/Rectangle;

    if-eqz v2, :cond_0

    .line 64
    return-object v1

    .line 59
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 67
    .end local v1           #item:Lcom/amazon/topaz/internal/layout/DrawItem;
    :cond_1
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public hasAnyDrawItems()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVisibleDrawItems()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->numVisibleDrawItems:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amazon/topaz/internal/layout/DrawItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->drawItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public numVisibleDrawItems()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/amazon/topaz/internal/layout/LineAccumulator$DrawItemsList;->numVisibleDrawItems:I

    return v0
.end method
