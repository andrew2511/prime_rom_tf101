.class Lcom/amazon/topaz/View;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/View$LayoutStopper;,
        Lcom/amazon/topaz/View$PageTracker;,
        Lcom/amazon/topaz/View$Location;
    }
.end annotation


# instance fields
.field private final bPageHeight:I

.field private final context:Lcom/amazon/topaz/RenderContext;

.field private final curPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

.field private location:I

.field private final nextLineLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

.field private final nextPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

.field private pageNum:I

.field private final pageTracker:Lcom/amazon/topaz/View$PageTracker;

.field private final prevLineLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

.field private final prevPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

.field private reflowFriendly:Z

.field private final sBottomMargin:I

.field private final sTopMargin:I

.field private screenLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Line;",
            ">;"
        }
    .end annotation
.end field

.field private segment:Lcom/amazon/topaz/RenderSegment;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/RenderContext;IIIIZ)V
    .locals 4
    .parameter "context"
    .parameter "topMargin"
    .parameter "bottomMargin"
    .parameter "pageNum"
    .parameter "location"
    .parameter "reflowFriendly"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Lcom/amazon/topaz/View$LayoutStopper;

    invoke-direct {v0, p0, v2, v2}, Lcom/amazon/topaz/View$LayoutStopper;-><init>(Lcom/amazon/topaz/View;II)V

    iput-object v0, p0, Lcom/amazon/topaz/View;->prevPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    .line 224
    new-instance v0, Lcom/amazon/topaz/View$LayoutStopper;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v3, v1}, Lcom/amazon/topaz/View$LayoutStopper;-><init>(Lcom/amazon/topaz/View;II)V

    iput-object v0, p0, Lcom/amazon/topaz/View;->prevLineLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    .line 225
    new-instance v0, Lcom/amazon/topaz/View$LayoutStopper;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/topaz/View$LayoutStopper;-><init>(Lcom/amazon/topaz/View;II)V

    iput-object v0, p0, Lcom/amazon/topaz/View;->curPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    .line 226
    new-instance v0, Lcom/amazon/topaz/View$LayoutStopper;

    invoke-direct {v0, p0, v3, v3}, Lcom/amazon/topaz/View$LayoutStopper;-><init>(Lcom/amazon/topaz/View;II)V

    iput-object v0, p0, Lcom/amazon/topaz/View;->nextLineLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    .line 227
    new-instance v0, Lcom/amazon/topaz/View$LayoutStopper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/topaz/View$LayoutStopper;-><init>(Lcom/amazon/topaz/View;II)V

    iput-object v0, p0, Lcom/amazon/topaz/View;->nextPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    .line 238
    iput-object p1, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    .line 239
    iget-object v0, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v0, v0, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    iget-object v1, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v1, v1, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v1, v1, Lcom/amazon/topaz/internal/Session;->height:I

    iget v2, p0, Lcom/amazon/topaz/View;->sTopMargin:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amazon/topaz/View;->sBottomMargin:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->screenToBook(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/View;->bPageHeight:I

    .line 240
    iput p2, p0, Lcom/amazon/topaz/View;->sTopMargin:I

    .line 241
    iput p3, p0, Lcom/amazon/topaz/View;->sBottomMargin:I

    .line 242
    new-instance v0, Lcom/amazon/topaz/View$PageTracker;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/View$PageTracker;-><init>(Lcom/amazon/topaz/View;)V

    iput-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    .line 243
    invoke-direct {p0}, Lcom/amazon/topaz/View;->clearState()V

    .line 244
    iput p4, p0, Lcom/amazon/topaz/View;->pageNum:I

    .line 245
    iput p5, p0, Lcom/amazon/topaz/View;->location:I

    .line 246
    iput-boolean p6, p0, Lcom/amazon/topaz/View;->reflowFriendly:Z

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/RenderSegment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/View;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/amazon/topaz/View;->location:I

    return v0
.end method

.method static synthetic access$102(Lcom/amazon/topaz/View;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/amazon/topaz/View;->location:I

    return p1
.end method

.method static synthetic access$202(Lcom/amazon/topaz/View;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/amazon/topaz/View;->pageNum:I

    return p1
.end method

.method static synthetic access$300(Lcom/amazon/topaz/View;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/amazon/topaz/View;->bPageHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/amazon/topaz/View;)Lcom/amazon/topaz/View$PageTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    return-object v0
.end method

.method private clearState()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/topaz/View;->pageNum:I

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/View;->location:I

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/topaz/View;->reflowFriendly:Z

    .line 254
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$PageTracker;->clear()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/View;->screenLines:Ljava/util/List;

    .line 256
    return-void
.end method

.method private findFirstLineOfPage(I)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 739
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    .line 740
    iget-object v1, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartPageNum()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/topaz/RenderContext;->findEarliestContainerInParagraph(IIZ)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v1

    .line 741
    iget-object v2, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/RenderContext;->findStartOfPage(Lcom/amazon/topaz/internal/book/Container;)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v1

    .line 743
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v1

    .line 744
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v0

    if-lt v1, v0, :cond_1

    move v0, p1

    .line 758
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v4

    .line 749
    :goto_1
    if-gt v0, p1, :cond_2

    .line 751
    iget-object v2, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v2

    .line 752
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 749
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, p1

    .line 758
    goto :goto_0
.end method

.method private getRenderSegment()Lcom/amazon/topaz/RenderSegment;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Lcom/amazon/topaz/RenderSegment;

    iget-object v1, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    iget v2, p0, Lcom/amazon/topaz/View;->pageNum:I

    iget v3, p0, Lcom/amazon/topaz/View;->location:I

    iget-boolean v4, p0, Lcom/amazon/topaz/View;->reflowFriendly:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/topaz/RenderSegment;-><init>(Lcom/amazon/topaz/RenderContext;IIZ)V

    iput-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    return-object v0
.end method

.method private getStartLocation(I)I
    .locals 1
    .parameter "lineIndex"

    .prologue
    .line 409
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 411
    :cond_0
    const/4 v0, -0x1

    .line 414
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v0

    goto :goto_0
.end method

.method private layoutBackward(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/View$LayoutStopper;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->containsBeginning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 506
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    if-lez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    .line 511
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->layoutPreviousTopazPage(Lcom/amazon/foundation/internal/ICancelRequester;)Lcom/amazon/topaz/RenderSegment;

    move-result-object v0

    .line 519
    if-nez v0, :cond_1

    move v0, v2

    .line 537
    :goto_0
    return v0

    .line 525
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/amazon/topaz/View;->prependRenderSegment(Lcom/amazon/topaz/RenderSegment;Lcom/amazon/foundation/internal/ICancelRequester;)V

    .line 527
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/amazon/topaz/View$LayoutStopper;->hasEnoughData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    :cond_2
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 533
    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    move v0, v1

    .line 537
    goto :goto_0
.end method

.method private layoutCurrentPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/amazon/topaz/View;->curPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$LayoutStopper;->hasEnoughData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/amazon/topaz/View;->curPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/View;->layoutForward(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z

    move-result v0

    .line 459
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private layoutFirstTwoLines(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/amazon/topaz/View;->nextLineLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$LayoutStopper;->hasEnoughData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/amazon/topaz/View;->nextLineLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/View;->layoutForward(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private layoutForward(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 464
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    invoke-direct {p0}, Lcom/amazon/topaz/View;->getRenderSegment()Lcom/amazon/topaz/RenderSegment;

    .line 468
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->containsEnd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    .line 472
    if-lez v0, :cond_0

    .line 474
    iget-object v1, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    .line 476
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    new-instance v1, Lcom/amazon/topaz/View$1;

    invoke-direct {v1, p0, p2}, Lcom/amazon/topaz/View$1;-><init>(Lcom/amazon/topaz/View;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/topaz/RenderSegment;->layout(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 499
    :goto_0
    return v0

    .line 492
    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    move v0, v2

    .line 496
    goto :goto_0

    .line 499
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutNextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lcom/amazon/topaz/View;->nextPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$LayoutStopper;->hasEnoughData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/amazon/topaz/View;->nextPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/View;->layoutForward(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z

    move-result v0

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private layoutPreviousLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/amazon/topaz/View;->prevLineLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$LayoutStopper;->hasEnoughData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/amazon/topaz/View;->prevLineLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/View;->layoutBackward(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/View$LayoutStopper;)Z

    move-result v0

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private layoutPreviousPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/amazon/topaz/View;->prevPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$LayoutStopper;->hasEnoughData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/amazon/topaz/View;->prevPageLayoutStopper:Lcom/amazon/topaz/View$LayoutStopper;

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/View;->layoutBackward(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/View$LayoutStopper;)Z

    move-result v0

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private layoutPreviousTopazPage(Lcom/amazon/foundation/internal/ICancelRequester;)Lcom/amazon/topaz/RenderSegment;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 542
    .line 543
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->containsBeginning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 545
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0, v6}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v0

    .line 546
    iget-object v1, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v1, v6}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartPageNum()I

    move-result v1

    move v2, v1

    move v1, v0

    .line 553
    :goto_0
    iget-object v3, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    sub-int/2addr v1, v8

    invoke-virtual {v3, v2, v1}, Lcom/amazon/topaz/RenderContext;->findStartOfParagraph(II)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v1

    .line 554
    if-nez v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->markAsBeginning()V

    move-object v0, v7

    .line 584
    :goto_1
    return-object v0

    .line 560
    :cond_0
    iget-object v2, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/RenderContext;->findStartOfPage(Lcom/amazon/topaz/internal/book/Container;)Lcom/amazon/topaz/internal/book/Container;

    move-result-object v1

    .line 562
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v2

    .line 563
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v1

    .line 565
    new-instance v3, Lcom/amazon/topaz/RenderSegment;

    iget-object v4, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    invoke-direct {v3, v4, v1, v2, v8}, Lcom/amazon/topaz/RenderSegment;-><init>(Lcom/amazon/topaz/RenderContext;IIZ)V

    .line 567
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v4, v6}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v4

    .line 568
    new-instance v5, Lcom/amazon/topaz/View$2;

    invoke-direct {v5, p0, v4}, Lcom/amazon/topaz/View$2;-><init>(Lcom/amazon/topaz/View;Lcom/amazon/topaz/internal/layout/LayoutLine;)V

    invoke-virtual {v3, p1, v5}, Lcom/amazon/topaz/RenderSegment;->layout(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z

    .line 576
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v6}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 578
    :cond_1
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v7

    .line 580
    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_0

    :cond_4
    move-object v0, v7

    goto :goto_1
.end method

.method private manageMemory()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 705
    iget-object v4, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v4, v6}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 707
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    iget-object v5, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v5, v6}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    .line 708
    .local v0, curLine:Lcom/amazon/topaz/internal/layout/LayoutLine;
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartPageNum()I

    move-result v4

    iput v4, p0, Lcom/amazon/topaz/View;->pageNum:I

    .line 709
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v4

    iput v4, p0, Lcom/amazon/topaz/View;->location:I

    .line 716
    .end local v0           #curLine:Lcom/amazon/topaz/internal/layout/LayoutLine;
    :cond_0
    iget-object v4, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v4, v7}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 717
    .local v3, lowestNeededRenderLine:I
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v4}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v4

    sub-int v1, v4, v6

    .line 718
    .local v1, highestNeededRenderLine:I
    iget-object v4, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v4, v8}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v4

    if-ltz v4, :cond_1

    .line 720
    iget-object v4, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v4, v8}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v1

    .line 723
    :cond_1
    move v2, v3

    .line 724
    .local v2, lowestNeededLayoutLine:I
    if-ltz v3, :cond_2

    .line 726
    invoke-direct {p0, v3}, Lcom/amazon/topaz/View;->findFirstLineOfPage(I)I

    move-result v2

    .line 731
    :cond_2
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v4, v3, v1}, Lcom/amazon/topaz/RenderSegment;->discardRenderDataOutside(II)V

    .line 732
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v5}, Lcom/amazon/topaz/RenderSegment;->discardLayoutDataOutside(II)V

    .line 734
    iget-object v4, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    neg-int v5, v2

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/View$PageTracker;->shiftIndices(I)V

    .line 735
    return-void
.end method

.method private prependRenderSegment(Lcom/amazon/topaz/RenderSegment;Lcom/amazon/foundation/internal/ICancelRequester;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p1}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 591
    invoke-virtual {p1, v0}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/RenderSegment;->findLineForID(I)I

    move-result v1

    .line 594
    iget-object v2, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    .line 597
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v0

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v1

    sub-int/2addr v0, v1

    .line 598
    iget-object v1, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/RenderSegment;->shiftCoordinates(I)V

    .line 600
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    .line 601
    iget-object v1, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v1}, Lcom/amazon/topaz/View$PageTracker;->clear()V

    .line 603
    iget-object v1, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {p1, v1, v0, p2}, Lcom/amazon/topaz/RenderSegment;->append(Lcom/amazon/topaz/RenderSegment;ILcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 605
    invoke-interface {p2}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    :goto_0
    return-void

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPAZ VIEW: Prepend failed at location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    new-instance v0, Lcom/amazon/topaz/View$3;

    invoke-direct {v0, p0}, Lcom/amazon/topaz/View$3;-><init>(Lcom/amazon/topaz/View;)V

    invoke-virtual {p1, p2, v0}, Lcom/amazon/topaz/RenderSegment;->layout(Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/RenderSegment$LayoutCallback;)Z

    .line 620
    :cond_1
    iput-object p1, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    .line 621
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$PageTracker;->linesAdded()V

    goto :goto_0
.end method

.method private renderCurrentPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 3
    .parameter "cancelRequester"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/topaz/View;->renderLines(IILcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method

.method private renderLines(IILcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 6
    .parameter "firstLineIndex"
    .parameter "lastLineIndex"
    .parameter "cancelRequester"

    .prologue
    const/4 v5, 0x1

    .line 641
    if-gez p1, :cond_0

    if-gez p2, :cond_0

    move v4, v5

    .line 662
    :goto_0
    return v4

    .line 646
    :cond_0
    if-gez p1, :cond_1

    .line 648
    const/4 p1, 0x0

    .line 651
    :cond_1
    if-gez p2, :cond_2

    .line 653
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v4}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v4

    sub-int p2, v4, v5

    .line 656
    :cond_2
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v4, p1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v1

    .line 657
    .local v1, firstLine:Lcom/amazon/topaz/internal/layout/LayoutLine;
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v4, p2}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v2

    .line 659
    .local v2, lastLine:Lcom/amazon/topaz/internal/layout/LayoutLine;
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v4

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v5

    sub-int v3, v4, v5

    .line 660
    .local v3, topY:I
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v0

    .line 662
    .local v0, bottomY:I
    iget-object v4, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    sub-int v5, v0, v3

    invoke-virtual {v4, v3, v5, p3}, Lcom/amazon/topaz/RenderSegment;->preRender(IILcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v4

    goto :goto_0
.end method

.method private renderNextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 3
    .parameter "cancelRequester"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/topaz/View;->renderLines(IILcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method

.method private renderPreviousPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 3
    .parameter "cancelRequester"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/topaz/View;->renderLines(IILcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createLocation()Lcom/amazon/topaz/View$Location;
    .locals 3

    .prologue
    .line 689
    new-instance v0, Lcom/amazon/topaz/View$Location;

    iget v1, p0, Lcom/amazon/topaz/View;->pageNum:I

    iget v2, p0, Lcom/amazon/topaz/View;->location:I

    invoke-direct {v0, v1, v2}, Lcom/amazon/topaz/View$Location;-><init>(II)V

    return-object v0
.end method

.method public getLines(Lcom/amazon/foundation/internal/ICancelRequester;)Ljava/util/List;
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/ICancelRequester;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Line;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->screenLines:Ljava/util/List;

    move-object v2, v0

    if-nez v2, :cond_4

    .line 325
    invoke-direct/range {p0 .. p1}, Lcom/amazon/topaz/View;->layoutCurrentPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 376
    :goto_0
    return-object v2

    .line 332
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    move-object v2, v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v2

    .line 333
    if-gez v2, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v2

    move v9, v2

    .line 338
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v3

    sub-int v3, v9, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/View;->screenLines:Ljava/util/List;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v3

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v2

    sub-int v10, v3, v2

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v2

    move v11, v2

    :goto_2
    if-ge v11, v9, :cond_3

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    move-object v2, v0

    invoke-virtual {v2, v11}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v12

    .line 345
    invoke-virtual {v12}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    .line 346
    const/4 v3, 0x0

    neg-int v4, v10

    invoke-virtual {v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;->translate(II)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    move-object v3, v0

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v3, v2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v13

    .line 348
    invoke-virtual {v12}, Lcom/amazon/topaz/internal/layout/LayoutLine;->isOpenMultilineLink()Z

    move-result v14

    .line 349
    invoke-virtual {v12}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getCallbacks()Ljava/util/List;

    move-result-object v8

    .line 351
    invoke-virtual {v12}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getItems()Ljava/util/List;

    move-result-object v2

    .line 352
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 355
    :cond_1
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/topaz/internal/layout/LayoutItem;

    .line 357
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    move-object v2, v0

    if-eqz v2, :cond_1

    .line 359
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutItem;->pos:Lcom/amazon/system/drawing/Rectangle;

    move-object v2, v0

    invoke-direct {v4, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 360
    const/4 v2, 0x0

    neg-int v3, v10

    invoke-virtual {v4, v2, v3}, Lcom/amazon/system/drawing/Rectangle;->translate(II)V

    .line 361
    new-instance v2, Lcom/amazon/topaz/LineElement;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    move-object v5, v0

    iget-object v5, v5, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v5, v4}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/topaz/internal/layout/LayoutItem;->isOpenMultilineLink()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/topaz/internal/layout/LayoutItem;->getCallbacks()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/amazon/topaz/internal/layout/LayoutItem;->item:Lcom/amazon/topaz/internal/book/Drawable;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/RenderContext;->renderer:Lcom/amazon/topaz/Renderer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/internal/book/Drawable;->getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/amazon/topaz/LineElement;-><init>(ILcom/amazon/system/drawing/Rectangle;ZLjava/util/List;Ljava/lang/String;)V

    .line 366
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 370
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->screenLines:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v2, Lcom/amazon/topaz/Line;

    invoke-virtual {v12}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getStartID()I

    move-result v3

    invoke-virtual {v12}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getEndID()I

    move-result v4

    move-object v5, v13

    move-object v6, v15

    move v7, v14

    invoke-direct/range {v2 .. v8}, Lcom/amazon/topaz/Line;-><init>(IILcom/amazon/system/drawing/Rectangle;Ljava/util/List;ZLjava/util/List;)V

    move-object/from16 v0, v16

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_2

    .line 373
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->screenLines:Ljava/util/List;

    move-object v2, v0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/View;->screenLines:Ljava/util/List;

    .line 376
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/topaz/View;->screenLines:Ljava/util/List;

    move-object v2, v0

    goto/16 :goto_0

    :cond_5
    move v9, v2

    goto/16 :goto_1
.end method

.method public getLocation()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/amazon/topaz/View;->location:I

    return v0
.end method

.method public getPageNum()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/amazon/topaz/View;->pageNum:I

    return v0
.end method

.method public getWholeBuffer()Lcom/amazon/system/drawing/BufferedImageExtended;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/amazon/topaz/View;->getRenderSegment()Lcom/amazon/topaz/RenderSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/RenderSegment;->getWholeBuffer()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v0

    return-object v0
.end method

.method public nextLineLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->layoutFirstTwoLines(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 390
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/topaz/View;->getStartLocation(I)I

    move-result v0

    return v0
.end method

.method public nextPageLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->layoutCurrentPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 383
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/topaz/View;->getStartLocation(I)I

    move-result v0

    return v0
.end method

.method public prerender(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->layoutCurrentPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 306
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->renderCurrentPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 307
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->layoutNextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 308
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->renderNextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 309
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->layoutPreviousPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 310
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->renderPreviousPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 314
    :catchall_0
    move-exception v0

    throw v0

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prevLineLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 402
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->layoutPreviousLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 404
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/amazon/topaz/View;->getStartLocation(I)I

    move-result v0

    return v0
.end method

.method public prevPageLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/amazon/topaz/View;->layoutPreviousPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    .line 397
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/topaz/View;->getStartLocation(I)I

    move-result v0

    return v0
.end method

.method public render(Lcom/amazon/system/drawing/GraphicsExtended;ZLcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 260
    invoke-direct {p0, p3}, Lcom/amazon/topaz/View;->layoutCurrentPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    iget-object v1, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v1, v7}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/View$PageTracker;->getPageStart(I)I

    move-result v1

    sub-int/2addr v1, v7

    .line 265
    if-gez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v1}, Lcom/amazon/topaz/RenderSegment;->numLines()I

    move-result v1

    sub-int/2addr v1, v7

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v2, v1}, Lcom/amazon/topaz/RenderSegment;->getLine(I)Lcom/amazon/topaz/internal/layout/LayoutLine;

    move-result-object v2

    .line 271
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopY()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getTopMargin()I

    move-result v0

    sub-int/2addr v1, v0

    .line 272
    iget v0, p0, Lcom/amazon/topaz/View;->bPageHeight:I

    .line 275
    if-nez p2, :cond_3

    .line 277
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/layout/LayoutLine;->getBottomY()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v0

    .line 281
    :goto_0
    iget v4, p0, Lcom/amazon/topaz/View;->sTopMargin:I

    .line 282
    iget-object v0, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v0, v0, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v0, v0, Lcom/amazon/topaz/internal/Session;->width:I

    invoke-interface {p1, v6, v6, v0, v4}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    .line 283
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/topaz/RenderSegment;->render(IILcom/amazon/system/drawing/GraphicsExtended;ILcom/amazon/foundation/internal/ICancelRequester;)V

    .line 284
    iget-object v0, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v0, v0, Lcom/amazon/topaz/RenderContext;->zoomFactor:Lcom/amazon/topaz/internal/layout/ZoomFactor;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/layout/ZoomFactor;->bookToScreen(I)I

    move-result v0

    add-int/2addr v0, v4

    .line 285
    iget-object v3, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v3, v3, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v3, v3, Lcom/amazon/topaz/internal/Session;->width:I

    iget-object v4, p0, Lcom/amazon/topaz/View;->context:Lcom/amazon/topaz/RenderContext;

    iget-object v4, v4, Lcom/amazon/topaz/RenderContext;->session:Lcom/amazon/topaz/internal/Session;

    iget v4, v4, Lcom/amazon/topaz/internal/Session;->height:I

    sub-int/2addr v4, v0

    invoke-interface {p1, v6, v0, v3, v4}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOPAZ VIEW: Blitting y coordinates "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    invoke-interface {p3}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 292
    :goto_1
    return v0

    :cond_1
    move v0, v6

    .line 289
    goto :goto_1

    :cond_2
    move v0, v6

    .line 292
    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public setLocation(IIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/amazon/topaz/View;->clearState()V

    .line 669
    iput p2, p0, Lcom/amazon/topaz/View;->location:I

    .line 670
    iput p1, p0, Lcom/amazon/topaz/View;->pageNum:I

    .line 671
    iput-boolean p3, p0, Lcom/amazon/topaz/View;->reflowFriendly:Z

    .line 673
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    invoke-virtual {v0, p2}, Lcom/amazon/topaz/RenderSegment;->containsLocation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    .line 676
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$PageTracker;->clear()V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPAZ VIEW: Set location to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " results in segment change."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/View;->segment:Lcom/amazon/topaz/RenderSegment;

    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/amazon/topaz/View;->pageTracker:Lcom/amazon/topaz/View$PageTracker;

    invoke-virtual {v0}, Lcom/amazon/topaz/View$PageTracker;->locationChanged()V

    .line 683
    invoke-direct {p0}, Lcom/amazon/topaz/View;->manageMemory()V

    .line 685
    :cond_1
    return-void
.end method
