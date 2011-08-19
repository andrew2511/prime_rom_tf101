.class Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;
.super Ljava/lang/Object;
.source "AlphaHandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/AlphaHandWritingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaddingStrokeQueue"
.end annotation


# static fields
.field private static final MAX_QUEUE_CAPACITY:I = 0x4


# instance fields
.field mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

.field mFaddingStrokesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;",
            ">;"
        }
    .end annotation
.end field

.field private mFadingQueueSize:I

.field final synthetic this$0:Lcom/nuance/xt9/input/AlphaHandWritingView;


# direct methods
.method public constructor <init>(Lcom/nuance/xt9/input/AlphaHandWritingView;Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "penColor"

    .prologue
    const/4 v3, 0x4

    .line 215
    iput-object p1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->this$0:Lcom/nuance/xt9/input/AlphaHandWritingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-array v1, v3, [Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 217
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    new-instance v2, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    invoke-direct {v2, p2, p3}, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget v0, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    return v0
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 244
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v1, :cond_0

    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method private removeEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 274
    iget v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 276
    .local v0, recycleStroke:Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;
    const/4 v1, 0x0

    .local v1, start:I
    :goto_0
    iget v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    iget-object v3, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 283
    .end local v0           #recycleStroke:Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;
    .end local v1           #start:I
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/Path;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 225
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->removeEnd()V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    .line 231
    .local v0, stroke:Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;
    invoke-virtual {v0}, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->resetAlpha()V

    .line 232
    iget-object v1, v0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 233
    iget-object v1, v0, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 234
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    iget v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    aput-object v0, v1, v2

    .line 235
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 240
    .end local v0           #stroke:Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v1, "FadingQueue"

    const-string v2, "CAN NOT BE!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokesCache:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    .line 270
    return-void
.end method

.method public reduceAlpha()V
    .locals 3

    .prologue
    .line 252
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-lez v1, :cond_1

    .line 253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFadingQueueSize:I

    if-ge v0, v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->decreaseAlpha()V

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->mFaddingStrokes:[Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Lcom/nuance/xt9/input/AlphaHandWritingView$FadingStroke;->mCurrentAlpha:I

    if-nez v1, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/nuance/xt9/input/AlphaHandWritingView$FaddingStrokeQueue;->removeEnd()V

    .line 261
    .end local v0           #i:I
    :cond_1
    return-void
.end method
