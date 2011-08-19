.class public Lcom/asus/reader/book/BoundingBoxView;
.super Landroid/view/View;
.source "BoundingBoxView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;
    }
.end annotation


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mBoundingBoxesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCurrentPage:I

.field private mIsLandscape:Z

.field private mPageChangeListner:Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;

.field private mPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPaintMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mCurrentPage:I

    .line 38
    const-string v0, "BoundingBoxView"

    iput-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/book/BoundingBoxView;->DBG:Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mBoundingBoxesMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPaintMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPageMap:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/asus/reader/book/BoundingBoxView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/asus/reader/book/BoundingBoxView;->mCurrentPage:I

    return p1
.end method

.method private isVisiblePage(I)Z
    .locals 4
    .parameter "page"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget-boolean v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mIsLandscape:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mCurrentPage:I

    shr-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    .line 110
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_1
    iget v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mCurrentPage:I

    if-ne p1, v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPageChangeListner:Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPageChangeListner:Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;

    invoke-virtual {v0}, Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;->unregister()V

    .line 124
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mBoundingBoxesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public listenPageChange(Lcom/asus/reader/book/PageRenderer;IZ)V
    .locals 1
    .parameter "pageRenderer"
    .parameter "page"
    .parameter "isLandscape"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPageChangeListner:Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;

    if-nez v0, :cond_0

    .line 116
    iput p2, p0, Lcom/asus/reader/book/BoundingBoxView;->mCurrentPage:I

    .line 117
    iput-boolean p3, p0, Lcom/asus/reader/book/BoundingBoxView;->mIsLandscape:Z

    .line 118
    new-instance v0, Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;

    invoke-direct {v0, p0, p1}, Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;-><init>(Lcom/asus/reader/book/BoundingBoxView;Lcom/asus/reader/book/PageRenderer;)V

    iput-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPageChangeListner:Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;

    .line 120
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-boolean v0, p0, Lcom/asus/reader/book/BoundingBoxView;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->TAG:Ljava/lang/String;

    const-string v1, "ondraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mBoundingBoxesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 82
    .local v9, boxSetIterator:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 85
    .local v7, boxEntry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 86
    .local v11, key:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPageMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 87
    .local v12, page:Ljava/lang/Integer;
    iget v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mCurrentPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/BoundingBoxView;->isVisiblePage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPaintMap:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Paint;

    .line 91
    .local v5, boxPaint:Landroid/graphics/Paint;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 94
    .local v8, boxList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v8, :cond_1

    .line 95
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 97
    .local v6, box:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "x1"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v0, "y1"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v0, "x2"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string v0, "y2"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    .end local v5           #boxPaint:Landroid/graphics/Paint;
    .end local v6           #box:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #boxEntry:Ljava/util/Map$Entry;
    .end local v8           #boxList:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #page:Ljava/lang/Integer;
    :cond_3
    iget-boolean v0, p0, Lcom/asus/reader/book/BoundingBoxView;->DBG:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->TAG:Ljava/lang/String;

    const-string v1, "end of ondraw"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_4
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .parameter "key"
    .parameter
    .parameter "color"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, boundingBox:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/asus/reader/book/BoundingBoxView;->put(Ljava/lang/String;Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;II)Ljava/util/List;
    .locals 3
    .parameter "key"
    .parameter
    .parameter "color"
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;II)",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, boundingBox:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-boolean v1, p0, Lcom/asus/reader/book/BoundingBoxView;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/reader/book/BoundingBoxView;->TAG:Ljava/lang/String;

    const-string v2, "put"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v1, p0, Lcom/asus/reader/book/BoundingBoxView;->mPaintMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/asus/reader/book/BoundingBoxView;->mPageMap:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/asus/reader/book/BoundingBoxView;->mBoundingBoxesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/asus/reader/book/BoundingBoxView;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->TAG:Ljava/lang/String;

    const-string v1, "remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPaintMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mPageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView;->mBoundingBoxesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method
