.class public Lcom/nuance/xt9/input/Stroke$MultiStroke;
.super Lcom/nuance/xt9/input/Stroke;
.source "Stroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/Stroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiStroke"
.end annotation


# static fields
.field private static final MAX_POINTER_INDICES:I = 0x2


# instance fields
.field private mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

.field private mPaths:[Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 114
    invoke-direct {p0}, Lcom/nuance/xt9/input/Stroke;-><init>()V

    .line 111
    new-array v1, v2, [Landroid/graphics/Path;

    iput-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    .line 112
    new-array v1, v2, [Lcom/nuance/xt9/input/Stroke$Arc;

    iput-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    new-instance v2, Lcom/nuance/xt9/input/Stroke$Arc;

    invoke-direct {v2}, Lcom/nuance/xt9/input/Stroke$Arc;-><init>()V

    aput-object v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Stroke$MultiStroke;->clearArcs()V

    .line 198
    invoke-virtual {p0}, Lcom/nuance/xt9/input/Stroke$MultiStroke;->clearPaths()V

    .line 199
    return-void
.end method

.method public clearArcs()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nuance/xt9/input/Stroke$Arc;->clear()V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public clearPaths()V
    .locals 2

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public getArcs()[Lcom/nuance/xt9/input/Stroke$Arc;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    return-object v0
.end method

.method public getPaths()[Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    return-object v0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 19
    .parameter "me"

    .prologue
    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 128
    .local v4, action:I
    and-int/lit16 v5, v4, 0xff

    .line 129
    .local v5, actionCode:I
    shr-int/lit8 v12, v4, 0x8

    .line 130
    .local v12, pointerIndex:I
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    .line 142
    .local v11, pointerId:I
    if-eqz v5, :cond_0

    const/16 v16, 0x5

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 146
    :cond_0
    if-nez v5, :cond_1

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/xt9/input/Stroke$MultiStroke;->clear()V

    .line 150
    :cond_1
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v14, v0

    .line 151
    .local v14, x:I
    move-object/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v15, v0

    .line 153
    .local v15, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Path;->moveTo(FF)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, v16

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/nuance/xt9/input/Stroke$Arc;->addPoint(II)V

    .line 193
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_2
    :goto_0
    return-void

    .line 157
    :cond_3
    const/16 v16, 0x2

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 159
    invoke-static/range {p1 .. p1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v10

    .line 164
    .local v10, pointerCount:I
    const/4 v8, 0x0

    .local v8, index:I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 166
    move-object/from16 v0, p1

    move v1, v8

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v13

    .line 167
    .local v13, thisPointerId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    .line 169
    .local v6, histories:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mArcs:[Lcom/nuance/xt9/input/Stroke$Arc;

    move-object/from16 v16, v0

    aget-object v3, v16, v13

    .line 170
    .local v3, Arc:Lcom/nuance/xt9/input/Stroke$Arc;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/Stroke$MultiStroke;->mPaths:[Landroid/graphics/Path;

    move-object/from16 v16, v0

    aget-object v9, v16, v13

    .line 177
    .local v9, path:Landroid/graphics/Path;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 178
    move-object/from16 v0, p1

    move v1, v8

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/MotionEventWrapper;->getHistoricalX(Landroid/view/MotionEvent;II)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v14, v0

    .line 179
    .restart local v14       #x:I
    move-object/from16 v0, p1

    move v1, v8

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/nuance/xt9/input/MotionEventWrapper;->getHistoricalY(Landroid/view/MotionEvent;II)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v15, v0

    .line 180
    .restart local v15       #y:I
    move v0, v14

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    invoke-virtual {v3, v14, v15}, Lcom/nuance/xt9/input/Stroke$Arc;->addPoint(II)V

    .line 177
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 184
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_4
    move-object/from16 v0, p1

    move v1, v8

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getX(Landroid/view/MotionEvent;I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v14, v0

    .line 185
    .restart local v14       #x:I
    move-object/from16 v0, p1

    move v1, v8

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/MotionEventWrapper;->getY(Landroid/view/MotionEvent;I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v15, v0

    .line 186
    .restart local v15       #y:I
    move v0, v14

    int-to-float v0, v0

    move/from16 v16, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    invoke-virtual {v3, v14, v15}, Lcom/nuance/xt9/input/Stroke$Arc;->addPoint(II)V

    .line 164
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 190
    .end local v3           #Arc:Lcom/nuance/xt9/input/Stroke$Arc;
    .end local v6           #histories:I
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v9           #path:Landroid/graphics/Path;
    .end local v10           #pointerCount:I
    .end local v13           #thisPointerId:I
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_5
    const/16 v16, 0x1

    move v0, v5

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    goto/16 :goto_0
.end method
