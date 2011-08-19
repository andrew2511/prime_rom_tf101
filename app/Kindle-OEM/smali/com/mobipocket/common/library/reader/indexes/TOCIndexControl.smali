.class public Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;
.super Ljava/lang/Object;
.source "TOCIndexControl.java"

# interfaces
.implements Lcom/mobipocket/common/library/reader/TOC;


# instance fields
.field private final TOC_TARGET_ENTRY_TEXT_PREFIX:Ljava/lang/String;

.field private authorColumn:I

.field private descriptionColumn:I

.field eBookIdentifier:Ljava/lang/String;

.field embedBase:I

.field idx:I

.field idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

.field index:Lcom/mobipocket/common/library/reader/indexes/Index;

.field private mastheadImageColumn:I

.field nameIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

.field nameIndex_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x8000

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->eBookIdentifier:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    .line 31
    iput-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    .line 39
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->authorColumn:I

    .line 40
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->descriptionColumn:I

    .line 41
    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->mastheadImageColumn:I

    .line 43
    const-string v0, "|"

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->TOC_TARGET_ENTRY_TEXT_PREFIX:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->clearColumnCache()V

    .line 51
    return-void
.end method

.method private addExtendedInformation(Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x8000

    .line 690
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->authorColumn:I

    if-ne v0, v3, :cond_2

    .line 697
    const-string v0, "author"

    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getAttributeColumnValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->authorColumn:I

    .line 699
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->authorColumn:I

    if-eq v0, v4, :cond_3

    .line 701
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->authorColumn:I

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedStringValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setAuthors([Ljava/lang/String;)V

    .line 704
    :cond_3
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->descriptionColumn:I

    if-ne v0, v3, :cond_4

    .line 706
    const-string v0, "description"

    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getAttributeColumnValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->descriptionColumn:I

    .line 708
    :cond_4
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->descriptionColumn:I

    if-eq v0, v4, :cond_0

    .line 710
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    iget v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->descriptionColumn:I

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedStringValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setDescs([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/io/EOFException;->printStackTrace()V

    goto :goto_0
.end method

.method private clearColumnCache()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 105
    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->authorColumn:I

    .line 106
    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->descriptionColumn:I

    .line 107
    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->mastheadImageColumn:I

    .line 108
    return-void
.end method

.method private getAttributeColumnValue(Ljava/lang/String;I)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 628
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 629
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    if-nez v0, :cond_0

    move v0, v5

    .line 681
    :goto_0
    return v0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    if-nez v0, :cond_1

    .line 636
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-direct {v0, v2}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    .line 641
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/Index;->searchCombo(Ljava/lang/String;Ljava/util/Vector;Z)Z

    move v2, v3

    .line 643
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 645
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;

    .line 648
    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    .line 653
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/16 v4, 0x30b

    invoke-virtual {v3, v0, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[I

    move-result-object v0

    .line 658
    if-nez v0, :cond_3

    .line 643
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 663
    :cond_3
    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 666
    const/4 v3, 0x0

    aget v3, v0, v3

    if-ne v3, p2, :cond_2

    .line 669
    const/4 v3, 0x1

    aget v3, v0, v3

    iget v4, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx:I

    if-ne v3, v4, :cond_2

    .line 670
    const/4 v1, 0x2

    aget v0, v0, v1
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    move v0, v5

    goto :goto_0

    .line 679
    :catch_1
    move-exception v0

    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v5

    .line 681
    goto :goto_0
.end method

.method private getLinkedSection(Lcom/mobipocket/common/library/reader/TOCItem;I)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 5
    .parameter "origin"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 733
    const/4 v1, 0x0

    .line 734
    .local v1, retSection:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 736
    check-cast p1, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    .end local p1
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v2

    .line 737
    .local v2, state:Lcom/mobipocket/common/library/reader/indexes/IndexState;
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    int-to-byte v4, p2

    invoke-virtual {v3, v2, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->followLink(Lcom/mobipocket/common/library/reader/indexes/IndexState;B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getTocSection(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    .line 742
    .end local v2           #state:Lcom/mobipocket/common/library/reader/indexes/IndexState;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getFirstChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    :try_start_0
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/16 v0, 0x116

    invoke-direct {p0, p1, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getLinkedSection(Lcom/mobipocket/common/library/reader/TOCItem;I)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 238
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOFException when trying to get the first child TOCItem from a parent TOCItem"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "IndexException when trying to get the first child TOCItem from a parent TOCItem"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 4
    .parameter "section"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    const/4 v2, 0x0

    .line 369
    .local v2, retSection:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getFirstChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    .line 372
    .local v1, firstChildSection:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz v1, :cond_1

    .line 376
    :cond_0
    move-object v2, v1

    .line 377
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getFirstChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    .line 379
    if-nez v1, :cond_0

    .line 382
    .end local v1           #firstChildSection:Lcom/mobipocket/common/library/reader/TOCItem;
    :cond_1
    return-object v2
.end method

.method public getFirstTocSection()Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 202
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->reset()V

    .line 203
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getTocSection(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 212
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOFException when trying to get the First Toc TOCItem entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "IndexException when trying to get the First Toc TOCItem entry"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstTocTarget()Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 188
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexState;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/indexes/IndexState;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    const-string v2, "|"

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;->search(Ljava/lang/String;Lcom/mobipocket/common/library/reader/indexes/IndexState;ZZ)Z

    .line 191
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getTocSection(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 192
    return-object v0
.end method

.method getImages(Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;)[[B
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 583
    const/4 v0, 0x0

    check-cast v0, [[B

    .line 584
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->mastheadImageColumn:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 586
    const-string v1, "mastheadImage"

    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getAttributeColumnValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->mastheadImageColumn:I

    .line 588
    :cond_0
    iget v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->mastheadImageColumn:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v2

    iget v3, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->mastheadImageColumn:I

    invoke-virtual {v1, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValueArray(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)[I

    move-result-object v1

    .line 593
    if-eqz v1, :cond_2

    .line 595
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, v7

    .line 596
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 598
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    aget v5, v1, v3

    iget v6, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->embedBase:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/library/reader/indexes/Index;->getRecord(I)[B

    move-result-object v4

    .line 599
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 603
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [[B

    move v1, v7

    .line 604
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 606
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    aput-object p0, v0, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 611
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 613
    invoke-virtual {v0}, Ljava/io/EOFException;->printStackTrace()V

    move-object v0, v1

    .line 616
    :cond_2
    if-nez v0, :cond_3

    new-array v0, v7, [[B

    :cond_3
    return-object v0
.end method

.method public getLastChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    :try_start_0
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/16 v0, 0x117

    invoke-direct {p0, p1, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getLinkedSection(Lcom/mobipocket/common/library/reader/TOCItem;I)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 254
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOFException when trying to get the last child TOCItem from a parent TOCItem"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "IndexException when trying to get the last child TOCItem from a parent TOCItem"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 4
    .parameter "section"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, retSection:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getLastChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    .line 412
    .local v1, lastChildSection:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz v1, :cond_1

    .line 416
    :cond_0
    move-object v2, v1

    .line 417
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getLastChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    .line 419
    if-nez v1, :cond_0

    .line 422
    .end local v1           #lastChildSection:Lcom/mobipocket/common/library/reader/TOCItem;
    :cond_1
    return-object v2
.end method

.method public getNext(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getFirstChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 148
    if-nez v0, :cond_0

    move-object v0, p1

    move-object v1, p1

    .line 151
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getNextSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getParent(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 155
    const/4 v0, 0x0

    .line 160
    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 157
    goto :goto_0
.end method

.method public getNextLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 4
    .parameter "section"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, retSection:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getFirstLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v2

    if-nez v2, :cond_2

    .line 459
    move-object v2, p1

    .line 460
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getNextSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 462
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getParent(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v2

    if-nez v2, :cond_0

    .line 464
    const/4 v3, 0x0

    .line 473
    :goto_1
    return-object v3

    .line 466
    :cond_0
    move-object p1, v2

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getFirstLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    .line 469
    .local v1, firstLeaf:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz v1, :cond_2

    .line 470
    move-object v2, v1

    .end local v1           #firstLeaf:Lcom/mobipocket/common/library/reader/TOCItem;
    :cond_2
    move-object v3, v2

    .line 473
    goto :goto_1
.end method

.method public getNextSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 310
    if-eqz p1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    check-cast p1, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    .line 313
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v3, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->getEntryText(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Ljava/lang/String;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/16 v4, 0x115

    invoke-virtual {v3, v1, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I

    move-result v3

    .line 321
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v4, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setNextState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 325
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/16 v5, 0x115

    invoke-virtual {v4, v1, v5}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I

    move-result v4

    .line 328
    if-ne v4, v3, :cond_0

    .line 330
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getTocSection(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 342
    :goto_0
    return-object v1

    .line 336
    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOFException when trying to get the next sibling"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :catch_1
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "IndexException when trying to get the next sibling"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public getParent(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/16 v0, 0x115

    invoke-direct {p0, p1, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getLinkedSection(Lcom/mobipocket/common/library/reader/TOCItem;I)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 222
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOFException when trying to get parent TOCItem from the child TOCItem"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "IndexException when trying to get parent TOCItem from the child TOCItem"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrevious(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getPreviousSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 168
    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getParent(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v0

    .line 178
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getLastLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 176
    goto :goto_0
.end method

.method public getPreviousLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 4
    .parameter "section"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v2, 0x0

    .line 506
    .local v2, retSection:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getLastLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v2

    if-nez v2, :cond_2

    .line 510
    move-object v2, p1

    .line 511
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getPreviousSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v2

    if-nez v2, :cond_1

    .line 513
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getParent(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v2

    if-nez v2, :cond_0

    .line 515
    const/4 v3, 0x0

    .line 524
    :goto_1
    return-object v3

    .line 517
    :cond_0
    move-object p1, v2

    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getLastLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    .line 520
    .local v1, lastLeaf:Lcom/mobipocket/common/library/reader/TOCItem;
    if-eqz v1, :cond_2

    .line 521
    move-object v2, v1

    .end local v1           #lastLeaf:Lcom/mobipocket/common/library/reader/TOCItem;
    :cond_2
    move-object v3, v2

    .line 524
    goto :goto_1
.end method

.method public getPreviousSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v2, 0x0

    .line 269
    if-eqz p1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    check-cast p1, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->getState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    .line 272
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v3, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->getEntryText(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Ljava/lang/String;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_0

    .line 277
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/16 v4, 0x115

    invoke-virtual {v3, v1, v4}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I

    move-result v3

    .line 280
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v4, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->setPreviousState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    const/16 v5, 0x115

    invoke-virtual {v4, v1, v5}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I

    move-result v4

    .line 287
    if-ne v4, v3, :cond_0

    .line 289
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getTocSection(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 301
    :goto_0
    return-object v1

    .line 295
    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOFException when trying to get the previous sibling"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :catch_1
    move-exception v1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "IndexException when trying to get the previous sibling"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public getSectionFromPosition(Lcom/mobipocket/common/library/reader/bookreader/EBook;I)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {p1, p2, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getCurrentEntry(ILcom/mobipocket/common/library/reader/indexes/Index;)Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getTocSection(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Lcom/mobipocket/common/library/reader/TOCItem;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 139
    :cond_0
    return-object v0

    .line 133
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOFException when trying to get the TOCItem from a position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "IndexException when trying to get the TOCItem from a position"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getTocSection(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Lcom/mobipocket/common/library/reader/TOCItem;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Lcom/mobipocket/common/library/reader/indexes/IndexException;
        }
    .end annotation

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 540
    new-instance v1, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;

    invoke-direct {v1, p0}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;-><init>(Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;)V

    .line 541
    if-eqz p1, :cond_0

    .line 542
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/library/reader/indexes/Index;->getEntryText(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Ljava/lang/String;

    move-result-object v2

    .line 543
    if-eqz v2, :cond_0

    .line 546
    invoke-static {}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;->theOne()Lcom/mobipocket/common/library/reader/indexes/IndexEntryControlData;

    .line 547
    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setID(Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    const/16 v3, 0x103

    invoke-virtual {v2, p1, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedStringValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setTitle(Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    const/16 v3, 0x104

    invoke-virtual {v2, p1, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setLevel(I)V

    .line 551
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    const/16 v3, 0x101

    invoke-virtual {v2, p1, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setPosition(I)V

    .line 552
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    const/16 v3, 0x102

    invoke-virtual {v2, p1, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedIntegerValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setLength(I)V

    .line 553
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    const/16 v3, 0x105

    invoke-virtual {v2, p1, v3}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->getTaggedStringValue(Lcom/mobipocket/common/library/reader/indexes/IndexState;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setTocClass(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/indexes/IndexState;->cloneIndexState()Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setState(Lcom/mobipocket/common/library/reader/indexes/IndexState;)V

    .line 555
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->eBookIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->setEBookIdentifier(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->addExtendedInformation(Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;)V

    .line 557
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/indexes/TOCItemImpl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 563
    :cond_0
    return-object v0
.end method

.method public isLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Z
    .locals 2
    .parameter "origin"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, ret:Z
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->getFirstChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 571
    const/4 v0, 0x1

    .line 573
    :cond_0
    return v0
.end method

.method public setIndex(Lcom/mobipocket/common/library/reader/indexes/Index;Ljava/lang/String;)V
    .locals 2
    .parameter "localIndex"
    .parameter "eBookIdentifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The index should not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    .line 69
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The eBookIdentifier should not be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->eBookIdentifier:Ljava/lang/String;

    .line 78
    new-instance v0, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->index:Lcom/mobipocket/common/library/reader/indexes/Index;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    .line 79
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->clearColumnCache()V

    .line 80
    return-void
.end method

.method public setNamingTable(Lcom/mobipocket/common/library/reader/indexes/Index;II)V
    .locals 1
    .parameter "nameIndex"
    .parameter "embed_base"
    .parameter "idx"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex:Lcom/mobipocket/common/library/reader/indexes/Index;

    .line 92
    iput p3, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->idx:I

    .line 93
    iput p2, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->embedBase:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->nameIndex_ctrl:Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    .line 95
    iget v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->embedBase:I

    if-gez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->embedBase:I

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/indexes/TOCIndexControl;->clearColumnCache()V

    .line 98
    return-void
.end method
