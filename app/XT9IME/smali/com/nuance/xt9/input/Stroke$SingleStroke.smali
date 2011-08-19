.class public Lcom/nuance/xt9/input/Stroke$SingleStroke;
.super Lcom/nuance/xt9/input/Stroke;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleStroke"
.end annotation


# instance fields
.field private mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

.field private mPaths:[Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lcom/nuance/xt9/input/Stroke;-><init>()V

    .line 44
    new-array v0, v1, [Landroid/graphics/Path;

    iput-object v0, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    .line 45
    new-array v0, v1, [Lcom/nuance/xt9/input/Stroke$Arc;

    iput-object v0, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    .line 48
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    aput-object v1, v0, v2

    .line 49
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    new-instance v1, Lcom/nuance/xt9/input/Stroke$Arc;

    invoke-direct {v1}, Lcom/nuance/xt9/input/Stroke$Arc;-><init>()V

    aput-object v1, v0, v2

    .line 50
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Stroke$SingleStroke;->clearArcs()V

    .line 82
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Stroke$SingleStroke;->clearPaths()V

    .line 83
    return-void
.end method

.method public clearArcs()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 88
    return-void
.end method

.method public clearPaths()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nuance/xt9/input/Stroke$Arc;->clear()V

    .line 93
    return-void
.end method

.method public getArcs()[Lcom/nuance/xt9/input/Stroke$Arc;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    return-object v0
.end method

.method public getPaths()[Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "me"

    .prologue
    const/4 v8, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 56
    .local v0, actionCode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 57
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 59
    .local v4, y:I
    if-nez v0, :cond_1

    .line 60
    iget-object v5, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 61
    iget-object v5, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/nuance/xt9/input/Stroke$Arc;->clear()V

    .line 62
    iget-object v5, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v5, v5, v8

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget-object v5, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    aget-object v5, v5, v8

    invoke-virtual {v5, v3, v4}, Lcom/nuance/xt9/input/Stroke$Arc;->addPoint(II)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 67
    .local v1, histories:I
    const/4 v2, 0x0

    .local v2, pos:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 68
    iget-object v5, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v5, v5, v8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 69
    iget-object v5, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    aget-object v5, v5, v8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/nuance/xt9/input/Stroke$Arc;->addPoint(II)V

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 71
    :cond_2
    iget-object v5, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v5, v5, v8

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    iget-object v5, p0, Lcom/nuance/xt9/input/Stroke$SingleStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    aget-object v5, v5, v8

    invoke-virtual {v5, v3, v4}, Lcom/nuance/xt9/input/Stroke$Arc;->addPoint(II)V

    goto :goto_0

    .line 74
    .end local v1           #histories:I
    .end local v2           #pos:I
    :cond_3
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    goto :goto_0
.end method
