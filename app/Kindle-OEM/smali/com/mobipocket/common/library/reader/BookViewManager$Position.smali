.class public Lcom/mobipocket/common/library/reader/BookViewManager$Position;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Position"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3206
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3203
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    return-void
.end method

.method private getCurrentYOffset()I
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getCurrentEstimatedPageNumber()I
    .locals 4

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->setAverageCharPerPage(III)V

    .line 3226
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->pageFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPageBeginPosition()I
    .locals 2

    .prologue
    .line 3296
    const/4 v0, 0x0

    .line 3297
    .local v0, pos:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_0

    .line 3299
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 3301
    :cond_0
    return v0
.end method

.method public getCurrentPageNumber()I
    .locals 1

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentSection()Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3344
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageBeginPosition(I)I

    move-result v0

    .line 3345
    .local v0, position:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_0

    .line 3350
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getFirstVisibleElementPosition()I

    move-result v0

    .line 3351
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3353
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getPageBeginPosition(I)I

    move-result v0

    .line 3356
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getSectionAtPosition(I)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    return-object v1
.end method

.method public getLastEstimatedPageNumber()I
    .locals 4

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->setAverageCharPerPage(III)V

    .line 3240
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->pageFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getMaxPosition()I
    .locals 1

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getMaxPosition()I

    move-result v0

    return v0
.end method

.method public getNextSection()Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3368
    const/4 v0, 0x0

    .line 3370
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v1, :cond_1

    .line 3372
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->hasToc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3374
    new-instance v0, Ljava/io/IOException;

    const-string v1, "There is not TOC defined for the current eBook"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3378
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    if-eqz v1, :cond_1

    .line 3381
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentSection()Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 3382
    if-eqz v0, :cond_1

    .line 3383
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getNext(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3391
    :cond_1
    return-object v0

    .line 3385
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOFException when trying to get the section from position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPageBeginPosition(I)I
    .locals 2
    .parameter "displacement"

    .prologue
    .line 3497
    const/4 v0, 0x0

    .line 3498
    .local v0, pos:I
    packed-switch p1, :pswitch_data_0

    .line 3526
    :pswitch_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_0

    .line 3528
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 3533
    :cond_0
    :goto_0
    return v0

    .line 3501
    :pswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3504
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3506
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 3509
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    goto :goto_0

    .line 3513
    :pswitch_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3516
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3518
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 3521
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    goto :goto_0

    .line 3498
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageBeginUserLocation()I
    .locals 1

    .prologue
    .line 3459
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getPageEndPosition(I)I
    .locals 2
    .parameter "displacement"

    .prologue
    .line 3549
    const/4 v0, 0x0

    .line 3550
    .local v0, pos:I
    packed-switch p1, :pswitch_data_0

    .line 3578
    :pswitch_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_0

    .line 3580
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v0

    .line 3585
    :cond_0
    :goto_0
    return v0

    .line 3553
    :pswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3556
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3558
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$4200(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 3561
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v0

    goto :goto_0

    .line 3565
    :pswitch_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3568
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->isTaskLaunched()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3570
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$3300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/util/SingleThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->waitForLaunchedTaskCompletion()V

    .line 3573
    :cond_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v0

    goto :goto_0

    .line 3550
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageEndUserLocation()I
    .locals 1

    .prologue
    .line 3482
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getPreviousSection()Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3403
    const/4 v0, 0x0

    .line 3405
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v1, :cond_2

    .line 3407
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->hasToc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3409
    new-instance v0, Ljava/io/IOException;

    const-string v1, "There is not TOC defined for the current eBook"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3413
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    if-eqz v1, :cond_2

    .line 3416
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentSection()Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 3418
    if-eqz v0, :cond_1

    .line 3419
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getPrevious(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 3422
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->isPreviousPagePossible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3424
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/TOCItem;->getStartPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 3426
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getPrevious(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3431
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOFException when trying to get the section from position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3437
    :cond_2
    return-object v0
.end method

.method public getSectionAtPosition(I)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3313
    const/4 v0, 0x0

    .line 3314
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v1, :cond_1

    .line 3316
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->hasToc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3318
    new-instance v0, Ljava/io/IOException;

    const-string v1, "There is not TOC defined for the current eBook"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3322
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    if-eqz v1, :cond_1

    .line 3325
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->tocImplementation:Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v0, v1, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getSectionFromPosition(Lcom/mobipocket/common/library/reader/bookreader/EBook;I)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3333
    :cond_1
    return-object v0

    .line 3327
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOFException when trying to get the section from position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartReadingPosition()I
    .locals 1

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getStartReadingPosition()I

    move-result v0

    return v0
.end method
