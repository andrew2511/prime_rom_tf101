.class public Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;
.super Lcom/mobipocket/common/library/reader/AnnotationManager;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Annotations"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4420
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/AnnotationManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4417
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/mobipocket/common/library/reader/AnnotationExport;)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 1
    .parameter "annotationExport"

    .prologue
    .line 4767
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/MBPFile;->add(Lcom/mobipocket/common/library/reader/AnnotationExport;)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0
.end method

.method public addBookmark()Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 2

    .prologue
    .line 4471
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getPageFirstWords()Ljava/lang/String;

    move-result-object v0

    .line 4472
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isCoverPage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4473
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 4480
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->addBookmark(Ljava/lang/String;)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0

    .line 4475
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 4477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addBookmark(Ljava/lang/String;)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4495
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4501
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v2, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 4502
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/mobipocket/common/library/reader/MBPFile;->addPageBookmark(IILjava/lang/String;[B)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0

    .line 4498
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method public addHighlight(IILjava/lang/String;I)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4521
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 4530
    :goto_0
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    if-le p1, v0, :cond_0

    if-lt p2, p1, :cond_0

    .line 4532
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 4533
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v3

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v4

    move v1, p1

    move v2, p2

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/MBPFile;->addHighlight(IIIILjava/lang/String;[BI)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 4540
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 4542
    :goto_1
    return-object v0

    .line 4525
    :catch_0
    move-exception v0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public addNote(IILjava/lang/String;Ljava/lang/String;)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 4588
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 4597
    :goto_0
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    if-le p1, v0, :cond_0

    if-lt p2, p1, :cond_0

    .line 4599
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 4600
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v3

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/MBPFile;->addPageNote(IIILjava/lang/String;Ljava/lang/String;[B)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 4606
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 4609
    :goto_1
    return-object v0

    .line 4592
    :catch_0
    move-exception v0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public addNote(Ljava/lang/String;)Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4556
    :try_start_0
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 4562
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getPageFirstWords()Ljava/lang/String;

    move-result-object v0

    .line 4563
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 4565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 4568
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v2, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 4569
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/MBPFile;->addPageNote(IIILjava/lang/String;Ljava/lang/String;[B)Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0

    .line 4559
    :catch_0
    move-exception v0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    goto :goto_1
.end method

.method public delete(Lcom/mobipocket/common/library/reader/AnnotationExport;)Z
    .locals 1
    .parameter "annotationExport"

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationExport;)Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z
    .locals 3
    .parameter "annotation"

    .prologue
    .line 4634
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/library/reader/MBPFile;->delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z

    move-result v0

    .line 4635
    .local v0, rep:Z
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 4636
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 4637
    return v0
.end method

.method public enableNoteAsSelectableObject(Z)V
    .locals 1
    .parameter

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5302(Lcom/mobipocket/common/library/reader/BookViewManager;Z)Z

    .line 4459
    return-void
.end method

.method public enableNoteDecoration(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 4446
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->enableNoteDecoration(ZZ)V

    .line 4447
    return-void
.end method

.method public enableNoteDecoration(ZZ)V
    .locals 1
    .parameter "enableHighlight"
    .parameter "enableIcon"

    .prologue
    .line 4431
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5600(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/DecorationGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->setEnableNoteHighlight(Z)V

    .line 4432
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$5600(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/DecorationGenerator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->setEnableNoteIcon(Z)V

    .line 4433
    return-void
.end method

.method public getAll()[Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 1

    .prologue
    .line 4742
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/MBPFile;->getAll()[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationExport(Lcom/mobipocket/common/library/reader/AnnotationItem;)Lcom/mobipocket/common/library/reader/AnnotationExport;
    .locals 1
    .parameter "annotation"

    .prologue
    .line 4759
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/MBPFile;->getAnnotationExport(Lcom/mobipocket/common/library/reader/AnnotationItem;)Lcom/mobipocket/common/library/reader/AnnotationExport;

    move-result-object v0

    return-object v0
.end method

.method getAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnnotationsBetween "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4714
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    if-nez v0, :cond_0

    .line 4716
    const/4 v0, 0x0

    .line 4720
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/MBPFile;->getListOfAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPageAnnotations()[Lcom/mobipocket/common/library/reader/AnnotationItem;
    .locals 3

    .prologue
    .line 4702
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_0

    .line 4704
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getAnnotationsBetween(II)[Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v1

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 4707
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    return-object v0
.end method

.method public getLastReadPageExport()Lcom/mobipocket/common/library/reader/AnnotationExport;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4649
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_0

    .line 4653
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->getStackImageOfCurrentPage()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4659
    :goto_0
    new-instance v1, Lcom/mobipocket/common/library/reader/AnnotationExport;

    invoke-direct {v1}, Lcom/mobipocket/common/library/reader/AnnotationExport;-><init>()V

    .line 4660
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->begin:I

    .line 4661
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->end:I

    .line 4662
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->pos:I

    .line 4663
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageNumber()I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->page:I

    .line 4664
    const/4 v2, 0x0

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->effect:I

    .line 4665
    const/16 v2, 0x80

    iput v2, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->type:I

    .line 4666
    iput-object v0, v1, Lcom/mobipocket/common/library/reader/AnnotationExport;->state:[B

    move-object v0, v1

    .line 4669
    :goto_1
    return-object v0

    .line 4656
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4669
    goto :goto_1
.end method

.method public getLineBegin(Lcom/mobipocket/common/library/reader/AnnotationItem;)I
    .locals 3
    .parameter "annotation"

    .prologue
    .line 4680
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLineFromPosition(IZ)I

    move-result v0

    return v0
.end method

.method public getLineEnd(Lcom/mobipocket/common/library/reader/AnnotationItem;)I
    .locals 3
    .parameter "annotation"

    .prologue
    .line 4690
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getEndPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getLineFromPosition(IZ)I

    move-result v0

    return v0
.end method

.method getStackImageOfCurrentPage()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4747
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$5800(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)I

    move-result v0

    .line 4748
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4749
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$5900(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Ljava/io/OutputStream;)V

    .line 4750
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 4751
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public modifyTitle(Lcom/mobipocket/common/library/reader/AnnotationItem;Ljava/lang/String;)Z
    .locals 2
    .parameter "annotation"
    .parameter "title"

    .prologue
    .line 4622
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 4623
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/MBPFile;->modifyTitle(Lcom/mobipocket/common/library/reader/AnnotationItem;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public open(Lcom/mobipocket/common/library/reader/AnnotationItem;)V
    .locals 1
    .parameter "annotation"

    .prologue
    .line 4731
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 4732
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->access$5700(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    .line 4733
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    .line 4734
    return-void
.end method

.method public saveFile()Z
    .locals 1

    .prologue
    .line 4783
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/MBPFile;->saveFile()Z

    move-result v0

    return v0
.end method
