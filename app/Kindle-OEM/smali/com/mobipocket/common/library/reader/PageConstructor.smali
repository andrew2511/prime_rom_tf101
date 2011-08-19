.class public Lcom/mobipocket/common/library/reader/PageConstructor;
.super Ljava/lang/Object;
.source "PageConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;
    }
.end annotation


# instance fields
.field private beginBookPosition:I

.field private currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

.field decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

.field private defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field expressionSearcher:Lcom/mobipocket/common/parser/HyphenationHelper;

.field private frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

.field private getHighResImages:Z

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field isActiveAreaWaitingEndOfTitle:Z

.field private isStrictHTML:Z

.field private page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

.field private parser:Lcom/mobipocket/common/parser/EBookParser;

.field private prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

.field private stopLayingOut:Z

.field private tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

.field private triggerParserBeforeRendering:Z


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/parser/EBookParser;Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;ILcom/mobipocket/common/parser/HyphenationHelper;)V
    .locals 3
    .parameter "decorationGenerator"
    .parameter "imageFactory"
    .parameter "currentEBook"
    .parameter "parser"
    .parameter "tableLimiter"
    .parameter "prevPageLimiter"
    .parameter "beginBookPosition"
    .parameter "expressionSearcher"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isStrictHTML:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->getHighResImages:Z

    .line 41
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 42
    iput v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    .line 46
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 47
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 48
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    .line 49
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    .line 50
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

    .line 51
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    .line 52
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->expressionSearcher:Lcom/mobipocket/common/parser/HyphenationHelper;

    .line 54
    iput-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 57
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isActiveAreaWaitingEndOfTitle:Z

    .line 58
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->stopLayingOut:Z

    .line 59
    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerParserBeforeRendering:Z

    .line 97
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    .line 98
    iget-object v0, p3, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->isStrictHTML()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isStrictHTML:Z

    .line 99
    iput-object p3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 100
    iput p7, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    .line 101
    iput-object p2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 102
    iput-object p4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    .line 103
    iput-object p6, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

    .line 104
    iput-object p5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    .line 105
    iput-object p8, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->expressionSearcher:Lcom/mobipocket/common/parser/HyphenationHelper;

    .line 106
    return-void
.end method

.method private addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z
    .locals 1
    .parameter "element"

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    .line 1376
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    goto :goto_0
.end method

.method private beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V
    .locals 2
    .parameter "area"
    .parameter "position"

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 1102
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getGenericType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isActiveAreaWaitingEndOfTitle:Z

    .line 1105
    :cond_0
    return-void
.end method

.method private createMainFrame(ZLcom/mobipocket/common/parser/TagAndAttributeStack;I)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getLastTagPosition()I

    move-result v0

    .line 632
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startSavingClosedTags(I)V

    .line 633
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerParserBeforeRendering:Z

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerTheParser(Lcom/mobipocket/common/parser/EBookParser;)I

    move-result v1

    :cond_0
    :goto_0
    move v6, p1

    move v7, v0

    move v0, v1

    .line 670
    :goto_1
    if-nez v6, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    :cond_1
    if-eqz v0, :cond_17

    .line 672
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->stopLayingOut:Z

    if-eqz v1, :cond_4

    .line 674
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->stopSavingClosedTags(I)V

    .line 994
    :cond_2
    :goto_2
    return-void

    .line 640
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->get_cur_entity()I

    move-result v1

    .line 641
    if-nez v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v1

    goto :goto_0

    .line 678
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 882
    :goto_3
    :pswitch_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableLimitExceeded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 904
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->getTableExceedingLimitID()I

    move-result v8

    .line 905
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMainFrame] Table begin position @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " page begin position @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 911
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    if-ge v0, v8, :cond_16

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[createMainFrame] The parser will be taken to the beginning of table @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v8

    .line 922
    :goto_4
    const/16 v0, 0x2c

    invoke-virtual {p2, v0, v8}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closeTag(SI)V

    .line 925
    new-instance v4, Lcom/mobipocket/common/parser/TagStack;

    invoke-direct {v4}, Lcom/mobipocket/common/parser/TagStack;-><init>()V

    .line 926
    new-instance v5, Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-direct {v5}, Lcom/mobipocket/common/parser/styles/StyleStack;-><init>()V

    .line 927
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 929
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {p2, v4, v5, v2, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->completeStacks(Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;Lcom/mobipocket/common/parser/styles/StyleDescriptor;[Lcom/mobipocket/common/library/reader/ActiveArea;)V

    .line 930
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->setLastPositionToLastSeenTagPosition()V

    .line 931
    invoke-virtual {p2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getLastTagPosition()I

    move-result v2

    .line 933
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/parser/EBookParser;->init(IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;)V

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMainFrame] A table which exceed the limit was encountered table id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". The parser was initialized @"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->flushInProgressTable()V

    .line 941
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0, v8}, Lcom/mobipocket/common/parser/EBookParser;->addTableToFlattenID(I)V

    .line 944
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookParser;->setTableEnabled(Z)V

    .line 946
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    if-lt v0, p3, :cond_1c

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->canStopParsing(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 953
    const/4 v0, 0x0

    .line 954
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->finishPage()V

    .line 957
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 958
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->flushInProgressTable()V

    .line 961
    :cond_6
    :goto_5
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v1

    move v6, v0

    move v0, v1

    goto/16 :goto_1

    .line 683
    :pswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    .line 685
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->get_text()Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v2

    .line 686
    iget v3, v2, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    .line 688
    :cond_7
    if-eqz v2, :cond_9

    iget v3, v2, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v3, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v3

    const/16 v4, 0x200c

    if-eq v3, v4, :cond_9

    .line 690
    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->isLastElementASpace()Z

    move-result v3

    if-nez v3, :cond_8

    .line 692
    new-instance v3, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;II)V

    invoke-direct {p0, v3}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    .line 694
    :cond_8
    new-instance v3, Lcom/mobipocket/common/library/reader/TextElement;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v4

    invoke-direct {v3, v2, v1, v4}, Lcom/mobipocket/common/library/reader/TextElement;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    invoke-direct {p0, v3}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v2

    .line 702
    :goto_6
    const/4 v3, 0x5

    if-ne v0, v3, :cond_20

    .line 704
    if-eqz v2, :cond_20

    .line 706
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;II)V

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    move v6, v0

    goto/16 :goto_3

    .line 698
    :cond_9
    const/4 v2, 0x1

    goto :goto_6

    .line 713
    :pswitch_2
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    move v6, v0

    .line 715
    goto/16 :goto_3

    .line 720
    :pswitch_3
    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-boolean v1, v8, v0

    .line 721
    const/4 v0, 0x1

    new-array v9, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-boolean v1, v9, v0

    .line 722
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0, v8, v9}, Lcom/mobipocket/common/parser/EBookParser;->get_tag([Z[Z)S

    move-result v1

    .line 725
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v5

    .line 726
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v4

    .line 729
    const/4 v0, 0x0

    aget-boolean v0, v8, v0

    invoke-direct {p0, v1, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->getFlowBreakFromTag(IZ)S

    move-result v2

    .line 730
    const/4 v0, 0x0

    aget-boolean v3, v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/PageConstructor;->insertFlowBreak(ISZII)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 731
    const/4 v0, 0x0

    .line 736
    :goto_7
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 738
    const/4 v0, 0x0

    .line 744
    :cond_a
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v3

    const/16 v6, 0x3b

    invoke-virtual {v3, v6}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    .line 747
    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    if-nez v3, :cond_b

    .line 749
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->addTitleProperty(Ljava/lang/String;)V

    .line 751
    :cond_b
    new-instance v3, Lcom/mobipocket/common/library/reader/ActiveArea;

    const/4 v6, 0x6

    invoke-direct {v3, v6}, Lcom/mobipocket/common/library/reader/ActiveArea;-><init>(I)V

    .line 752
    invoke-virtual {v3, v2}, Lcom/mobipocket/common/library/reader/ActiveArea;->computeTitle(Ljava/lang/String;)V

    .line 753
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v6

    invoke-direct {p0, v3, v6}, Lcom/mobipocket/common/library/reader/PageConstructor;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 755
    :cond_c
    const/4 v3, 0x0

    aget-boolean v3, v8, v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    :cond_d
    if-eqz v2, :cond_f

    const/4 v2, 0x0

    aget-boolean v2, v9, v2

    if-eqz v2, :cond_f

    .line 759
    :cond_e
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->endOfActiveArea(I)V

    .line 762
    :cond_f
    sparse-switch v1, :sswitch_data_0

    .line 794
    :cond_10
    :goto_8
    const/4 v6, 0x0

    .line 797
    invoke-static {v1}, Lcom/mobipocket/common/parser/EBookDTD;->isTagTableComponent(S)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 799
    const/4 v10, -0x1

    .line 801
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v5

    .line 803
    const/4 v0, -0x1

    .line 805
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v2, :cond_1d

    .line 807
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, v5}, Lcom/mobipocket/common/library/reader/TableLayout;->isTagInsideParsedTable(I)I

    move-result v0

    move v3, v0

    .line 812
    :goto_9
    const/4 v0, -0x1

    if-le v3, v0, :cond_13

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/TableLayout;->getTableLineFirstElementPosition(I)I

    move-result v0

    if-lt p3, v0, :cond_13

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMainFrame] Table tag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " encountered. Table @"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "already parsed. Taking the parser at the end of the table:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMainFrame] Looking inside the TagStack for an opening <table> tag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    const/16 v0, 0x2c

    if-ne v1, v0, :cond_11

    const/4 v0, 0x0

    aget-boolean v0, v8, v0

    if-nez v0, :cond_11

    .line 827
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->getAbsoluteTableBeginningPosition()I

    move-result v2

    invoke-virtual {p2, v1, v0, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    .line 836
    :cond_11
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    .line 837
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->removeTableTagsFromStack(Lcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 838
    new-instance v6, Lcom/mobipocket/common/parser/TagStack;

    invoke-direct {v6}, Lcom/mobipocket/common/parser/TagStack;-><init>()V

    .line 839
    new-instance v7, Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-direct {v7}, Lcom/mobipocket/common/parser/styles/StyleStack;-><init>()V

    .line 840
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 841
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v0, v6, v7, v4, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->completeStacks(Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;Lcom/mobipocket/common/parser/styles/StyleDescriptor;[Lcom/mobipocket/common/library/reader/ActiveArea;)V

    .line 842
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->setLastPositionToLastSeenTagPosition()V

    .line 843
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getLastTagPosition()I

    move-result v4

    .line 844
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual/range {v2 .. v7}, Lcom/mobipocket/common/parser/EBookParser;->init(IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;)V

    .line 845
    const/4 v0, 0x1

    .line 846
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->reuseAlreadyParsedTable(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    move-result v2

    .line 848
    const/16 v3, 0x2c

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closeTag(SI)V

    move v3, v10

    .line 861
    :goto_a
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_15

    :cond_12
    if-nez v0, :cond_15

    .line 864
    const/4 v0, 0x0

    aget-boolean v0, v8, v0

    if-eqz v0, :cond_14

    .line 866
    const/4 v0, 0x0

    aget-boolean v0, v9, v0

    if-nez v0, :cond_15

    .line 867
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closeTag(SI)V

    move v6, v2

    move v7, v3

    goto/16 :goto_3

    .line 767
    :sswitch_0
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    invoke-direct {p0, v7, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->insertTagLink(IZ)V

    goto/16 :goto_8

    .line 772
    :sswitch_1
    invoke-direct {p0, v4, v5}, Lcom/mobipocket/common/library/reader/PageConstructor;->insertTagImage(II)Z

    move-result v2

    if-nez v2, :cond_10

    .line 773
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 779
    :sswitch_2
    invoke-direct {p0, v4}, Lcom/mobipocket/common/library/reader/PageConstructor;->insertTagHR(I)Z

    move-result v2

    if-nez v2, :cond_10

    .line 780
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 786
    :sswitch_3
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    invoke-direct {p0, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->insertTagList(Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 787
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 855
    :cond_13
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    const/4 v3, 0x0

    aget-boolean v3, v9, v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->insertTableComponent(IZZLcom/mobipocket/common/parser/AttributeStack;I)Z

    move-result v0

    move v2, v0

    move v3, v10

    move v0, v6

    goto :goto_a

    .line 871
    :cond_14
    const/4 v0, 0x0

    aget-boolean v0, v9, v0

    if-nez v0, :cond_15

    .line 872
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v4

    invoke-virtual {p2, v1, v0, v4}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    :cond_15
    move v6, v2

    move v7, v3

    goto/16 :goto_3

    .line 917
    :cond_16
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMainFrame] The parser will be taken to the beginning of page @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    goto/16 :goto_4

    .line 963
    :cond_17
    if-nez v0, :cond_18

    .line 965
    new-instance v1, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    .line 968
    :cond_18
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->stopSavingClosedTags(I)V

    .line 969
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setEndInformations(ILcom/mobipocket/common/parser/TagAndAttributeStack;)Z

    move-result v1

    .line 971
    if-eqz v1, :cond_19

    if-eqz v0, :cond_1a

    :cond_19
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 975
    :cond_1a
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 977
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 978
    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    .line 979
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2, v0, v1}, Lcom/mobipocket/common/parser/EBookParser;->get_tag([Z[Z)S

    move-result v0

    .line 980
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 985
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isTablePresentOnNextPage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 986
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->endOfFlow()V

    goto/16 :goto_2

    .line 991
    :cond_1b
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->endOfFlow()V

    goto/16 :goto_2

    :cond_1c
    move v0, v6

    goto/16 :goto_5

    :cond_1d
    move v3, v0

    goto/16 :goto_9

    :cond_1e
    move v2, v0

    move v3, v7

    move v0, v6

    goto/16 :goto_a

    :cond_1f
    move v0, v6

    goto/16 :goto_7

    :cond_20
    move v6, v2

    goto/16 :goto_3

    .line 678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 762
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x28 -> :sswitch_3
        0x30 -> :sswitch_0
        0x32 -> :sswitch_1
    .end sparse-switch
.end method

.method private endOfActiveArea(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1109
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isActiveAreaWaitingEndOfTitle:Z

    if-nez v0, :cond_0

    .line 1115
    :goto_0
    return-void

    .line 1113
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isActiveAreaWaitingEndOfTitle:Z

    .line 1114
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->endOfActiveArea(I)V

    goto :goto_0
.end method

.method private findTableFreePosition(Lcom/mobipocket/common/parser/EBookParser;IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/library/reader/LayoutedFrame;I)I
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1396
    const/4 v5, 0x0

    .line 1399
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[findTableFreePosition] first Position @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end Position @"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v6, p2

    .line 1401
    :cond_0
    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move v2, v6

    move v3, v7

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/PageConstructor;->initParserAtPosition(Lcom/mobipocket/common/parser/EBookParser;Lcom/mobipocket/common/library/reader/LayoutedFrame;IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1402
    const/4 v7, 0x0

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

    move-object v8, v0

    invoke-interface {v8}, Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;->getMaxMultiJump()I

    move-result v8

    if-ge v5, v8, :cond_5

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookParser;->setReturnUnautorizedTableTag(Z)V

    .line 1410
    const/4 v8, -0x1

    .line 1412
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v9

    move v0, v9

    move/from16 v1, p3

    if-lt v0, v1, :cond_6

    const/4 v9, 0x0

    .line 1413
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v10

    move v0, v10

    move/from16 v1, p3

    if-lt v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->get_cur_entity()I

    move-result v10

    :goto_2
    move v15, v10

    move v10, v7

    move v7, v15

    move/from16 v16, v8

    move v8, v9

    move/from16 v9, v16

    .line 1414
    :cond_1
    :goto_3
    if-eqz v8, :cond_a

    if-eqz v7, :cond_a

    .line 1416
    packed-switch v7, :pswitch_data_0

    .line 1480
    :cond_2
    :goto_4
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v11

    move v0, v11

    move/from16 v1, p3

    if-lt v0, v1, :cond_3

    .line 1487
    const/4 v8, 0x0

    .line 1489
    :cond_3
    if-nez v8, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->hasMoreEntityAtCurrentPosition()Z

    move-result v11

    if-nez v11, :cond_4

    const/4 v11, 0x4

    if-ne v7, v11, :cond_1

    .line 1491
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v7

    .line 1492
    const/4 v8, 0x1

    goto :goto_3

    .line 1406
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 1412
    :cond_6
    const/4 v9, 0x1

    goto :goto_1

    .line 1413
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v10

    goto :goto_2

    .line 1424
    :pswitch_1
    const/4 v11, -0x1

    if-le v9, v11, :cond_2

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    move-object v11, v0

    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-interface {v11, v12}, Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;->limitReached(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1426
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    move v11, v0

    if-eqz v11, :cond_2

    .line 1427
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[findTableFreePosition]A table which exceed the limit was found (ID:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") during step 0. Adding it in the table to flatten array !"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1429
    move-object/from16 v0, p1

    check-cast v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->addTableToFlattenID(I)V

    .line 1431
    const/4 v9, -0x1

    goto :goto_4

    .line 1438
    :pswitch_2
    const/4 v11, 0x1

    new-array v11, v11, [Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput-boolean v13, v11, v12

    .line 1439
    const/4 v12, 0x1

    new-array v12, v12, [Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    .line 1440
    move-object/from16 v0, p1

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/parser/EBookParser;->get_tag([Z[Z)S

    move-result v12

    .line 1442
    const/16 v13, 0x2c

    if-ne v12, v13, :cond_9

    .line 1445
    const/4 v9, 0x0

    aget-boolean v9, v11, v9

    if-nez v9, :cond_8

    .line 1447
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v9

    goto/16 :goto_4

    .line 1452
    :cond_8
    const/4 v9, -0x1

    goto/16 :goto_4

    .line 1460
    :cond_9
    const/4 v11, -0x1

    if-le v9, v11, :cond_2

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    move-object v11, v0

    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-interface {v11, v12}, Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;->limitReached(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1462
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    move v11, v0

    if-eqz v11, :cond_2

    .line 1463
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[findTableFreePosition]A table which exceed the limit was found (ID:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") during step 0. Adding it in the table to flatten array !"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    move-object/from16 v0, p1

    check-cast v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->addTableToFlattenID(I)V

    .line 1467
    const/4 v9, -0x1

    goto/16 :goto_4

    .line 1477
    :pswitch_3
    const/4 v8, 0x1

    .line 1479
    const/4 v10, 0x0

    move v15, v10

    move v10, v8

    move v8, v15

    goto/16 :goto_4

    .line 1497
    :cond_a
    if-eqz v10, :cond_b

    .line 1499
    add-int/lit8 v5, v5, 0x1

    .line 1500
    const/16 v7, 0x3e8

    sub-int v7, v6, v7

    move v0, v7

    move/from16 v1, p6

    if-le v0, v1, :cond_d

    const/16 v7, 0x3e8

    sub-int/2addr v6, v7

    .line 1503
    :cond_b
    :goto_5
    if-nez v10, :cond_0

    .line 1506
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookParser;->setReturnUnautorizedTableTag(Z)V

    .line 1510
    move v0, v6

    move/from16 v1, p6

    if-ge v0, v1, :cond_c

    move/from16 v6, p6

    .line 1515
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[findTableFreePosition] Table free position @"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". To find it "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " backward jump was made"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    return v6

    :cond_d
    move/from16 v6, p6

    .line 1500
    goto :goto_5

    .line 1416
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getCurrentActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;
    .locals 1

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getCurrentActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    return-object v0
.end method

.method private getFlowBreakElement(ISZII)Lcom/mobipocket/common/library/reader/BreakElement;
    .locals 8
    .parameter "tag"
    .parameter "flowBreak"
    .parameter "isClosing"
    .parameter "widthAttr"
    .parameter "heightAttr"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1021
    const/4 v0, 0x0

    .line 1022
    .local v0, bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    packed-switch p2, :pswitch_data_0

    .line 1095
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 1036
    :pswitch_1
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .end local v0           #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    .line 1037
    .restart local v0       #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    goto :goto_0

    .line 1041
    :pswitch_2
    if-eq p4, v4, :cond_2

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_2

    .line 1043
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .end local v0           #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget v3, v3, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_INDENT:I

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;II)V

    .line 1044
    .restart local v0       #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, p4, v1}, Lcom/mobipocket/common/library/reader/BreakElement;->setWidth(II)V

    .line 1045
    if-gez p4, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    iget v2, v0, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->addBqIndent(I)V

    .line 1048
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BreakElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1055
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, p5, v1, v5}, Lcom/mobipocket/common/library/reader/BreakElement;->setHeight(IIZ)V

    goto :goto_0

    .line 1053
    :cond_2
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .end local v0           #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v2

    invoke-direct {v0, v6, v1, v2}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    .restart local v0       #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    goto :goto_1

    .line 1058
    :pswitch_3
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .end local v0           #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    .line 1059
    .restart local v0       #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    goto/16 :goto_0

    .line 1063
    :pswitch_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p4, v4, :cond_3

    .line 1064
    const/4 p4, 0x0

    .line 1066
    :cond_3
    const/16 v1, 0x1f

    if-ne p1, v1, :cond_5

    if-nez p3, :cond_5

    .line 1068
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .end local v0           #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget v3, v3, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_INDENT:I

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;II)V

    .line 1069
    .restart local v0       #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, p4, v1}, Lcom/mobipocket/common/library/reader/BreakElement;->setWidth(II)V

    .line 1070
    if-gez p4, :cond_4

    if-eq p4, v4, :cond_4

    .line 1072
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    iget v2, v0, Lcom/mobipocket/common/library/reader/BreakElement;->pParagraphIndentation:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->addBqIndent(I)V

    .line 1073
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BreakElement;->setStyleDescriptor(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 1081
    :cond_4
    :goto_2
    if-nez p3, :cond_0

    .line 1082
    if-ne p5, v4, :cond_6

    .line 1084
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->PAR_SPACING:I

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2, v6}, Lcom/mobipocket/common/library/reader/BreakElement;->setHeight(IIZ)V

    goto/16 :goto_0

    .line 1078
    :cond_5
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    .end local v0           #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    .restart local v0       #bElement:Lcom/mobipocket/common/library/reader/BreakElement;
    goto :goto_2

    .line 1088
    :cond_6
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, p5, v1, v5}, Lcom/mobipocket/common/library/reader/BreakElement;->setHeight(IIZ)V

    goto/16 :goto_0

    .line 1022
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFlowBreakFromTag(IZ)S
    .locals 1
    .parameter "tag"
    .parameter "isClosing"

    .prologue
    .line 1014
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isStrictHTML:Z

    invoke-static {p1, p2, v0}, Lcom/mobipocket/common/parser/styles/EBookCSS;->isFlowBreakTag(IZZ)S

    move-result v0

    return v0
.end method

.method private getTagHR(I)Lcom/mobipocket/common/library/reader/MobiImageElement;
    .locals 8
    .parameter "widthAttr"

    .prologue
    .line 1305
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isStrictHTML:Z

    if-nez v1, :cond_0

    .line 1306
    const/4 v1, 0x0

    .line 1321
    :goto_0
    return-object v1

    .line 1310
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidthWithStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)I

    move-result v4

    .line 1311
    .local v4, pageWidth:I
    new-instance v0, Lcom/mobipocket/common/library/reader/MobiImageElement;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v5

    const/16 v6, 0x34

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v6

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v7

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/MobiImageElement;-><init>(SLcom/mobipocket/common/parser/styles/StyleDescriptor;IIIII)V

    .local v0, mie:Lcom/mobipocket/common/library/reader/MobiImageElement;
    move-object v1, v0

    .line 1321
    goto :goto_0
.end method

.method private getTagImage(II)Lcom/mobipocket/common/library/reader/ImageElement;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1224
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    check-cast v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    .line 1225
    new-array v1, v9, [S

    .line 1228
    const/4 v2, 0x0

    .line 1229
    iget-boolean v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->getHighResImages:Z

    if-eqz v3, :cond_0

    .line 1231
    const/16 v3, 0x83

    aput-short v3, v1, v4

    .line 1232
    const/16 v3, 0x3a

    aput-short v3, v1, v6

    .line 1233
    const/16 v3, 0x82

    aput-short v3, v1, v7

    :goto_0
    move v3, v4

    move v4, v8

    .line 1243
    :goto_1
    if-ne v4, v8, :cond_1

    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 1245
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v4

    aget-short v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v4

    .line 1246
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1237
    :cond_0
    const/16 v3, 0x3a

    aput-short v3, v1, v4

    .line 1238
    const/16 v3, 0x83

    aput-short v3, v1, v6

    .line 1239
    const/16 v3, 0x82

    aput-short v3, v1, v7

    goto :goto_0

    .line 1248
    :cond_1
    if-eq v4, v8, :cond_6

    .line 1251
    sub-int v2, v3, v6

    aget-short v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    move v6, v7

    .line 1268
    :goto_2
    :sswitch_0
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v0

    .line 1269
    if-gtz v0, :cond_5

    .line 1270
    const/16 v0, 0x1a

    move v5, v0

    .line 1274
    :goto_3
    if-lez p1, :cond_2

    if-lez p2, :cond_2

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v0

    if-le p2, v0, :cond_4

    .line 1281
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getAvailableHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    invoke-interface {v7}, Lcom/amazon/system/drawing/ImageFactory;->getImageThresholdPercentage()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v2, v7

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->isTableInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1284
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getAvailableHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    move-object v7, v0

    .line 1295
    :goto_4
    new-instance v0, Lcom/mobipocket/common/library/reader/ImageElement;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v8}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/ImageElement;-><init>(Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/library/reader/bookreader/EBook;IIILcom/amazon/system/drawing/Dimension;I)V

    .line 1298
    :goto_5
    return-object v0

    :sswitch_1
    move v6, v7

    .line 1258
    goto/16 :goto_2

    :sswitch_2
    move v6, v9

    .line 1261
    goto/16 :goto_2

    .line 1288
    :cond_3
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    move-object v7, v0

    goto :goto_4

    .line 1293
    :cond_4
    new-instance v0, Lcom/amazon/system/drawing/Dimension;

    invoke-direct {v0, p1, p2}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    move-object v7, v0

    goto :goto_4

    :cond_5
    move v5, v0

    goto/16 :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_5

    .line 1251
    nop

    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x82 -> :sswitch_0
        0x83 -> :sswitch_2
    .end sparse-switch
.end method

.method private getTagList(Z)Lcom/mobipocket/common/library/reader/MobiImageElement;
    .locals 9
    .parameter "isClosing"

    .prologue
    .line 1326
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBulletType()S

    move-result v8

    .line 1327
    .local v8, liStyle:S
    if-nez p1, :cond_0

    const/4 v2, 0x1

    if-eq v8, v2, :cond_1

    const/4 v2, 0x2

    if-eq v8, v2, :cond_1

    .line 1329
    :cond_0
    const/4 v2, 0x0

    .line 1360
    :goto_0
    return-object v2

    .line 1332
    :cond_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getBulletStyle()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1348
    const/4 v1, 0x2

    .line 1351
    .local v1, mobiIEStyle:S
    :goto_1
    new-instance v0, Lcom/mobipocket/common/library/reader/MobiImageElement;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v3

    const/16 v4, 0x69

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v6

    const/16 v7, 0x34

    invoke-virtual {v6, v7}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v6

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/MobiImageElement;-><init>(SLcom/mobipocket/common/parser/styles/StyleDescriptor;IIIII)V

    .local v0, mie:Lcom/mobipocket/common/library/reader/MobiImageElement;
    move-object v2, v0

    .line 1360
    goto :goto_0

    .line 1335
    .end local v0           #mie:Lcom/mobipocket/common/library/reader/MobiImageElement;
    .end local v1           #mobiIEStyle:S
    :sswitch_0
    const/4 v1, 0x4

    .line 1336
    .restart local v1       #mobiIEStyle:S
    goto :goto_1

    .line 1338
    .end local v1           #mobiIEStyle:S
    :sswitch_1
    const/4 v1, 0x3

    .line 1339
    .restart local v1       #mobiIEStyle:S
    goto :goto_1

    .line 1345
    .end local v1           #mobiIEStyle:S
    :sswitch_2
    const/16 v1, 0xa

    .line 1346
    .restart local v1       #mobiIEStyle:S
    goto :goto_1

    .line 1332
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x68 -> :sswitch_2
    .end sparse-switch
.end method

.method private initPageConstrutor(Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)V
    .locals 6
    .parameter "layoutSettings"

    .prologue
    .line 121
    iget-boolean v0, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->getHighResImages:Z

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->getHighResImages:Z

    .line 124
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 127
    new-instance v0, Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->tableLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager$TableLimiter;Lcom/mobipocket/common/library/reader/DecorationGenerator;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    .line 128
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setDefaultStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 129
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    iget v1, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->paragraphSpacing:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setParagraphSpacing(I)V

    .line 130
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    iget v1, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->paragraphIndentation:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setParagraphDefaultIndentation(I)V

    .line 131
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    iget v1, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->lineSpacing:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setLineSpacing(I)V

    .line 132
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    iget v1, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->xMargin:I

    iget v2, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->yMargin:I

    iget v3, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->width:I

    iget v4, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->xMargin:I

    sub-int/2addr v3, v4

    iget v4, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->height:I

    iget v5, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->yMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setSize(IIII)V

    .line 133
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    iget v1, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->tableBkgColor:I

    iget v2, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->tableCellPadding:I

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->setDefaultValues(IILcom/amazon/system/drawing/ImageFactory;)V

    .line 134
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->expressionSearcher:Lcom/mobipocket/common/parser/HyphenationHelper;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setExpressionSearcher(Lcom/mobipocket/common/parser/HyphenationHelper;)V

    .line 135
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    iget-object v1, p1, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->hyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->setHyphenationManager(Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isActiveAreaWaitingEndOfTitle:Z

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerParserBeforeRendering:Z

    .line 141
    return-void
.end method

.method static initParserAtPosition(Lcom/mobipocket/common/parser/EBookParser;Lcom/mobipocket/common/library/reader/LayoutedFrame;IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1643
    invoke-virtual {p0, p2, p3, p4}, Lcom/mobipocket/common/parser/EBookParser;->init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 1645
    if-eqz p3, :cond_0

    .line 1647
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    .line 1653
    :goto_0
    new-instance v1, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>()V

    .line 1654
    const/4 v2, 0x2

    new-instance v3, Lcom/mobipocket/common/parser/AttributeStack;

    invoke-direct {v3}, Lcom/mobipocket/common/parser/AttributeStack;-><init>()V

    invoke-virtual {v1, v2, v3, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initParserAtPosition(int, bool)] Current page reinit - Current page begin position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Parser end position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1656
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mobipocket/common/library/reader/FlowElement;

    new-instance v3, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    aput-object v3, v2, v6

    invoke-virtual {p1, v2, v0, v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->reInit([Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 1660
    return-void

    :cond_0
    move v0, p2

    .line 1651
    goto :goto_0
.end method

.method private insertFlowBreak(ISZII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1001
    invoke-direct/range {p0 .. p5}, Lcom/mobipocket/common/library/reader/PageConstructor;->getFlowBreakElement(ISZII)Lcom/mobipocket/common/library/reader/BreakElement;

    move-result-object v0

    .line 1004
    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x1

    .line 1009
    :goto_0
    return v0

    .line 1007
    :cond_0
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    goto :goto_0
.end method

.method private insertTagHR(I)Z
    .locals 2
    .parameter "widthAttr"

    .prologue
    .line 1196
    const/4 v0, 0x1

    .line 1198
    .local v0, inserted:Z
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/PageConstructor;->getTagHR(I)Lcom/mobipocket/common/library/reader/MobiImageElement;

    move-result-object v1

    .line 1200
    .local v1, mie:Lcom/mobipocket/common/library/reader/MobiImageElement;
    if-eqz v1, :cond_0

    .line 1201
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    .line 1204
    :cond_0
    return v0
.end method

.method private insertTagImage(II)Z
    .locals 8
    .parameter "widthAttr"
    .parameter "heightAttr"

    .prologue
    const/4 v7, 0x5

    .line 1157
    const/4 v2, 0x1

    .line 1159
    .local v2, inserted:Z
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/PageConstructor;->getTagImage(II)Lcom/mobipocket/common/library/reader/ImageElement;

    move-result-object v0

    .line 1160
    .local v0, ie:Lcom/mobipocket/common/library/reader/ImageElement;
    if-nez v0, :cond_0

    .line 1161
    const/4 v5, 0x1

    .line 1188
    :goto_0
    return v5

    .line 1163
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ImageElement;->isImageGenerated()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1165
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ImageElement;->isImageSelectable()Z

    move-result v4

    .line 1166
    .local v4, selectable:Z
    const/4 v1, 0x1

    .line 1167
    .local v1, insertIt:Z
    if-eqz v4, :cond_2

    .line 1169
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/PageConstructor;->getCurrentActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v3

    .line 1170
    .local v3, lastAddedAA:Lcom/mobipocket/common/library/reader/ActiveArea;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getImageRecordIndex()I

    move-result v5

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ImageElement;->getImageRecordIndex()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1174
    const/4 v1, 0x0

    .line 1176
    :cond_1
    if-eqz v1, :cond_2

    .line 1178
    new-instance v5, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-direct {v5, v7}, Lcom/mobipocket/common/library/reader/ActiveArea;-><init>(I)V

    iget-object v6, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/mobipocket/common/library/reader/PageConstructor;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 1181
    .end local v3           #lastAddedAA:Lcom/mobipocket/common/library/reader/ActiveArea;
    :cond_2
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v2

    .line 1182
    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 1184
    invoke-direct {p0, v7}, Lcom/mobipocket/common/library/reader/PageConstructor;->endOfActiveArea(I)V

    .end local v1           #insertIt:Z
    .end local v4           #selectable:Z
    :cond_3
    move v5, v2

    .line 1188
    goto :goto_0
.end method

.method private insertTagLink(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1119
    new-instance v1, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-direct {v1, v2}, Lcom/mobipocket/common/library/reader/ActiveArea;-><init>(I)V

    .line 1121
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    check-cast v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    .line 1124
    if-nez p2, :cond_1

    .line 1125
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->computeLink(Lcom/mobipocket/common/parser/AttributeStack;)Z

    move-result v0

    .line 1126
    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->addLinkProperties()V

    .line 1129
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    if-eqz p2, :cond_0

    .line 1134
    invoke-direct {p0, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->endOfActiveArea(I)V

    goto :goto_0

    .line 1139
    :cond_2
    if-eqz p2, :cond_0

    .line 1146
    invoke-direct {p0, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->endOfActiveArea(I)V

    goto :goto_0
.end method

.method private insertTagList(Z)Z
    .locals 2
    .parameter "isClosing"

    .prologue
    .line 1212
    const/4 v0, 0x1

    .line 1214
    .local v0, inserted:Z
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/PageConstructor;->getTagList(Z)Lcom/mobipocket/common/library/reader/MobiImageElement;

    move-result-object v1

    .line 1215
    .local v1, mie:Lcom/mobipocket/common/library/reader/MobiImageElement;
    if-eqz v1, :cond_0

    .line 1216
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v0

    .line 1219
    :cond_0
    return v0
.end method

.method private lookForTableTag(Lcom/mobipocket/common/parser/TagAndAttributeStack;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x2c

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 524
    move v6, v2

    .line 527
    :goto_0
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 533
    invoke-virtual {p1, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagElementAt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 535
    invoke-virtual {p1, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagElementPositionAt(I)I

    move-result v5

    .line 536
    invoke-virtual {p1, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->attributeStackAt(I)Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v4

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lookForTableTag] Tag <table> found @"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 541
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    if-eqz v0, :cond_3

    .line 543
    iget-object v0, p2, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    invoke-virtual {v0, v5}, Lcom/mobipocket/common/library/reader/TableLayout;->isTagInsideParsedTable(I)I

    move-result v0

    .line 546
    :goto_1
    if-ne v0, v8, :cond_1

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lookForTableTag] Table @"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " was NOT already parsed so creating a new table..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->createTableBegin(IZZLcom/mobipocket/common/parser/AttributeStack;I)Lcom/mobipocket/common/library/reader/TableLayout;

    move-result-object v0

    .line 550
    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->resetTableData()V

    .line 551
    iput-object v0, p2, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->currentTableData:Lcom/mobipocket/common/library/reader/TableLayout;

    .line 552
    iput-boolean v7, p2, Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;->tableInProgress:Z

    :goto_2
    move v0, v7

    move v1, v5

    .line 566
    :goto_3
    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p1, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->returnToTagElementAt(I)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[lookForTableTag] Returning the TagStack to the position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". New TagStack contains:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    new-instance v4, Lcom/mobipocket/common/parser/TagStack;

    invoke-direct {v4}, Lcom/mobipocket/common/parser/TagStack;-><init>()V

    .line 574
    new-instance v5, Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-direct {v5}, Lcom/mobipocket/common/parser/styles/StyleStack;-><init>()V

    .line 575
    new-array v0, v7, [Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 577
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {p1, v4, v5, v2, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->completeStacks(Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;Lcom/mobipocket/common/parser/styles/StyleDescriptor;[Lcom/mobipocket/common/library/reader/ActiveArea;)V

    .line 578
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->setLastPositionToLastSeenTagPosition()V

    .line 579
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getLastTagPosition()I

    move-result v2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[lookForTableTag] Taking the parser @"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with neutralizeStackPosition:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/parser/EBookParser;->init(IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;)V

    .line 584
    invoke-direct {p0, v7}, Lcom/mobipocket/common/library/reader/PageConstructor;->setTriggerParserBeforeRendering(Z)V

    .line 587
    :cond_0
    return v1

    .line 558
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lookForTableTag] Table @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was already parsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 530
    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :cond_3
    move v0, v8

    goto/16 :goto_1

    :cond_4
    move v0, v2

    move v1, v8

    goto :goto_3
.end method

.method private makeParserEvolveUntilPosition(Lcom/mobipocket/common/parser/EBookParser;ILcom/mobipocket/common/library/reader/LayoutedFrame;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1528
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerParserBeforeRendering:Z

    if-eqz v0, :cond_0

    .line 1530
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerTheParser(Lcom/mobipocket/common/parser/EBookParser;)I

    .line 1532
    :cond_0
    invoke-virtual {p3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    .line 1533
    invoke-virtual {p0, p2, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->makeParserEvolve(ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 1535
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v2

    .line 1540
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Lcom/mobipocket/common/library/reader/FlowElement;

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initParserAtPosition] InitParserAtPosition - Current page begin position @"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1544
    new-instance v0, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v4, 0x6

    invoke-virtual {p1}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v5

    invoke-direct {v0, v4, v5, v2}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    aput-object v0, v3, v6

    move v4, v6

    .line 1549
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 1551
    add-int/lit8 v5, v4, 0x1

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->layoutedPageObjects:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/FlowElement;

    aput-object v0, v3, v5

    .line 1549
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1553
    :cond_1
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    invoke-virtual {p3, v3, v0, v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->reInit([Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 1556
    return v2
.end method

.method private removeTableTagsFromStack(Lcom/mobipocket/common/parser/TagAndAttributeStack;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    move v0, v3

    :goto_0
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 600
    invoke-virtual {p1, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->tagElementAt(I)I

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_0

    .line 602
    sub-int v1, v0, v4

    if-gez v1, :cond_1

    .line 604
    invoke-virtual {p1, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->returnToTagElementAt(I)V

    .line 612
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createMainFrame] Tag table found @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": removing it. New TagStack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_1
    sub-int v1, v0, v4

    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->returnToTagElementAt(I)V

    goto :goto_1

    .line 615
    :cond_2
    return-void
.end method

.method private renderPageInternal(IZ)Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->stopLayingOut:Z

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 507
    :goto_0
    return-object v0

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 502
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getNextPageBeginElements()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;Ljava/util/Vector;)Z

    move-result v1

    .line 503
    if-eqz p2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/FrameConstructor;->infiniteMode:Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->setInfiniteMode()V

    .line 506
    :cond_1
    invoke-direct {p0, v1, v0, p1}, Lcom/mobipocket/common/library/reader/PageConstructor;->createMainFrame(ZLcom/mobipocket/common/parser/TagAndAttributeStack;I)V

    .line 507
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    goto :goto_0
.end method

.method private setTriggerParserBeforeRendering(Z)V
    .locals 0
    .parameter "trigger"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerParserBeforeRendering:Z

    .line 247
    return-void
.end method

.method private triggerTheParser(Lcom/mobipocket/common/parser/EBookParser;)I
    .locals 2
    .parameter "localParser"

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v0

    .line 235
    .local v0, entity:I
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v0

    goto :goto_0

    .line 237
    :cond_0
    if-nez v0, :cond_1

    .line 238
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v0

    .line 240
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerParserBeforeRendering:Z

    .line 241
    return v0
.end method


# virtual methods
.method public cancelPrelayouting()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->stopLayingOut:Z

    .line 431
    return-void
.end method

.method public currentPageSettingsHasChanged()V
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->tableEngine:Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor$TableEngine;->pageSettingsHasChanged()V

    .line 1683
    :cond_0
    return-void
.end method

.method public enablePrelayouting()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->stopLayingOut:Z

    .line 440
    return-void
.end method

.method getLineSpacing()I
    .locals 2

    .prologue
    .line 1686
    const/4 v0, 0x0

    .line 1687
    .local v0, lineSpacing:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    if-eqz v1, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getLineSpacing()I

    move-result v0

    .line 1691
    :cond_0
    return v0
.end method

.method public initKnownPageParsing(Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;I)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p3}, Lcom/mobipocket/common/library/reader/PageConstructor;->initPageConstrutor(Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)V

    .line 156
    new-instance v4, Lcom/mobipocket/common/parser/TagStack;

    invoke-direct {v4}, Lcom/mobipocket/common/parser/TagStack;-><init>()V

    .line 160
    new-instance v5, Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-direct {v5}, Lcom/mobipocket/common/parser/styles/StyleStack;-><init>()V

    .line 161
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 166
    new-instance v8, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    const/4 v0, 0x0

    invoke-direct {v8, p1, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parseKnownPage] Restoring page begin position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p0, v8, p4}, Lcom/mobipocket/common/library/reader/PageConstructor;->lookForTableTag(Lcom/mobipocket/common/parser/TagAndAttributeStack;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)I

    move-result v0

    .line 173
    if-ltz v0, :cond_2

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[parseKnownPage] Table found in the previous page. Table begin position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v0

    .line 180
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[parseKnownPage] Parser begin position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Restoring page begin position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v8, v4, v5, v0, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->completeStacks(Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;Lcom/mobipocket/common/parser/styles/StyleDescriptor;[Lcom/mobipocket/common/library/reader/ActiveArea;)V

    .line 183
    invoke-virtual {v8}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->setLastPositionToLastSeenTagPosition()V

    .line 184
    invoke-virtual {v8}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getLastTagPosition()I

    move-result v2

    .line 186
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/parser/EBookParser;->init(IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;)V

    .line 191
    const/4 v0, 0x0

    aget-object v0, v6, v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mobipocket/common/library/reader/FlowElement;

    .line 194
    const/4 v1, 0x1

    new-instance v2, Lcom/mobipocket/common/library/reader/ActiveAreaElement;

    const/4 v3, 0x0

    aget-object v3, v6, v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v4

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/mobipocket/common/library/reader/ActiveAreaElement;-><init>(Lcom/mobipocket/common/library/reader/ActiveArea;Lcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    aput-object v2, v0, v1

    .line 198
    const/4 v1, 0x0

    aget-object v1, v6, v1

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isActiveAreaWaitingEndOfTitle:Z

    move-object v6, v0

    .line 209
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parseKnownPage] Adding Previous PAGE_BEGIN with position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const/4 v0, 0x0

    new-instance v1, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    aput-object v1, v6, v0

    .line 217
    new-instance v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget v2, p3, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->width:I

    iget v3, p3, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->height:I

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    move-object v5, p4

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/LayoutedFrame;-><init>(Lcom/amazon/system/drawing/ImageFactory;IILcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;[Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 219
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0, p5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->setBeginYOffset(I)V

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->setTriggerParserBeforeRendering(Z)V

    .line 224
    return p2

    .line 205
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/mobipocket/common/library/reader/FlowElement;

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, v0

    goto :goto_1

    :cond_2
    move v1, p2

    goto/16 :goto_0
.end method

.method public initRenderRestOfPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    iget-object v4, p1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/PageConstructor;->initKnownPageParsing(Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;I)I

    .line 465
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 466
    return-void
.end method

.method public initUnknownPageParsing(ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;ZLcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x3e8

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 261
    invoke-direct {p0, p2}, Lcom/mobipocket/common/library/reader/PageConstructor;->initPageConstrutor(Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)V

    .line 262
    new-instance v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget v2, p2, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->width:I

    iget v3, p2, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->height:I

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    move-object v5, p4

    move-object v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/LayoutedFrame;-><init>(Lcom/amazon/system/drawing/ImageFactory;IILcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;[Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 267
    if-eqz p3, :cond_1

    .line 270
    sub-int v0, p1, v10

    iget v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    if-le v0, v1, :cond_0

    sub-int v0, p1, v10

    move v2, v0

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;->getMaxMultiJump()I

    move-result v0

    if-lez v0, :cond_2

    .line 273
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v6, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/PageConstructor;->findTableFreePosition(Lcom/mobipocket/common/parser/EBookParser;IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/library/reader/LayoutedFrame;I)I

    move-result v0

    .line 275
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gotoPosition] GoToLocation with recovery. To position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Recovering position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-static {v1, v2, v0, v9, v3}, Lcom/mobipocket/common/library/reader/PageConstructor;->initParserAtPosition(Lcom/mobipocket/common/parser/EBookParser;Lcom/mobipocket/common/library/reader/LayoutedFrame;IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 279
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-direct {p0, v0, p1, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->makeParserEvolveUntilPosition(Lcom/mobipocket/common/parser/EBookParser;ILcom/mobipocket/common/library/reader/LayoutedFrame;)I

    .line 280
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    .line 281
    invoke-direct {p0, v0, p4}, Lcom/mobipocket/common/library/reader/PageConstructor;->lookForTableTag(Lcom/mobipocket/common/parser/TagAndAttributeStack;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)I

    .line 282
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0, p4}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->setTableCache(Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)V

    .line 291
    :goto_2
    invoke-direct {p0, v9}, Lcom/mobipocket/common/library/reader/PageConstructor;->setTriggerParserBeforeRendering(Z)V

    .line 293
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v0

    return v0

    .line 270
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    move v2, v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-static {v0, v1, p1, v9, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->initParserAtPosition(Lcom/mobipocket/common/parser/EBookParser;Lcom/mobipocket/common/library/reader/LayoutedFrame;IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 287
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public initUnknownPreviousPageParsing(ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iget-object v0, p2, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v0

    .line 306
    iget v1, p2, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->width:I

    iget v2, p2, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->height:I

    invoke-static {v1, v2, v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getMaxCharPerPage(III)I

    move-result v0

    sub-int v0, p1, v0

    .line 307
    iget v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    if-ge v0, v1, :cond_2

    .line 309
    iget v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    move v2, v0

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->prevPageLimiter:Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;

    invoke-interface {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$UnknownPageLimiter;->getMaxMultiJump()I

    move-result v0

    if-lez v0, :cond_1

    .line 314
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget v6, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/PageConstructor;->findTableFreePosition(Lcom/mobipocket/common/parser/EBookParser;IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/library/reader/LayoutedFrame;I)I

    move-result v0

    .line 321
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, p3}, Lcom/mobipocket/common/library/reader/PageConstructor;->initUnknownPageParsing(ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;ZLcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)I

    move-result v0

    .line 324
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->renderPageInternal(IZ)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 325
    iget-boolean v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->stopLayingOut:Z

    if-nez v1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/FrameConstructor;->infiniteMode:Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/library/reader/FrameConstructor$InfiniteMode;->getBeginPosition(I)Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    iget v2, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    .line 332
    iget v2, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    iget v5, v0, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/PageConstructor;->initKnownPageParsing(Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;I)I

    move-result v0

    .line 334
    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public makeParserEvolve(ILcom/mobipocket/common/parser/TagAndAttributeStack;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1565
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    if-le v0, p1, :cond_2

    move v0, v8

    .line 1566
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookParser;->get_cur_entity()I

    move-result v1

    move v2, v0

    .line 1567
    :goto_1
    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    .line 1569
    packed-switch v1, :pswitch_data_0

    .line 1621
    :cond_0
    :goto_2
    :pswitch_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    if-lt v0, p1, :cond_8

    move v0, v8

    .line 1627
    :goto_3
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EBookParser;->hasMoreEntityAtCurrentPosition()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 1629
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v0

    move v1, v0

    move v2, v9

    .line 1630
    goto :goto_1

    :cond_2
    move v0, v9

    .line 1565
    goto :goto_0

    .line 1577
    :pswitch_1
    new-array v3, v9, [Z

    aput-boolean v8, v3, v8

    .line 1578
    new-array v4, v9, [Z

    aput-boolean v8, v4, v8

    .line 1579
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0, v3, v4}, Lcom/mobipocket/common/parser/EBookParser;->get_tag([Z[Z)S

    move-result v5

    .line 1581
    const/16 v0, 0x30

    if-ne v5, v0, :cond_3

    .line 1584
    new-instance v6, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-direct {v6, v8}, Lcom/mobipocket/common/library/reader/ActiveArea;-><init>(I)V

    .line 1585
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    check-cast v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    .line 1586
    aget-boolean v7, v3, v8

    if-nez v7, :cond_9

    .line 1588
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->computeLink(Lcom/mobipocket/common/parser/AttributeStack;)Z

    move-result v0

    .line 1590
    :goto_4
    if-eqz v0, :cond_4

    .line 1592
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->addLinkProperties()V

    .line 1593
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 1595
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    invoke-direct {p0, v6, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->beginningOfActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;I)V

    .line 1608
    :cond_3
    :goto_5
    aget-boolean v0, v3, v8

    if-eqz v0, :cond_5

    .line 1610
    aget-boolean v0, v4, v8

    if-nez v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v0

    invoke-virtual {p2, v5, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->closeTag(SI)V

    goto :goto_2

    .line 1600
    :cond_4
    aget-boolean v0, v3, v8

    if-eqz v0, :cond_3

    .line 1603
    invoke-direct {p0, v8}, Lcom/mobipocket/common/library/reader/PageConstructor;->endOfActiveArea(I)V

    goto :goto_5

    .line 1615
    :cond_5
    aget-boolean v0, v4, v8

    if-nez v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v3

    invoke-virtual {p2, v5, v0, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    goto/16 :goto_2

    .line 1633
    :cond_6
    return-void

    :cond_7
    move v2, v0

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto/16 :goto_3

    :cond_9
    move v0, v8

    goto :goto_4

    .line 1569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/FrameConstructor;->releaseAll()V

    .line 1671
    :cond_0
    return-void
.end method

.method public renderCoverPage(ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 21
    .parameter
    .parameter

    .prologue
    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->initPageConstrutor(Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)V

    .line 347
    new-instance v11, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v11}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>()V

    .line 348
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->startSavingClosedTags(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/mobipocket/common/parser/EBookParser;->init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 354
    new-instance v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    move-object v4, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->width:I

    move v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->height:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/mobipocket/common/library/reader/LayoutedFrame;-><init>(Lcom/amazon/system/drawing/ImageFactory;IILcom/mobipocket/common/library/reader/DecorationGenerator;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;[Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->reInit(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V

    .line 359
    new-instance v3, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    move-result v9

    .line 366
    new-instance v12, Lcom/mobipocket/common/library/reader/ImageElement;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    move-object v15, v0

    add-int/lit8 v16, p1, 0x1

    const/16 v17, 0x1a

    const/16 v18, 0x3

    new-instance v19, Lcom/amazon/system/drawing/Dimension;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    move-object v3, v0

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    move-object v4, v0

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v4

    move-object/from16 v0, v19

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/amazon/system/drawing/Dimension;-><init>(II)V

    const/16 v20, 0x0

    invoke-direct/range {v12 .. v20}, Lcom/mobipocket/common/library/reader/ImageElement;-><init>(Lcom/amazon/system/drawing/ImageFactory;Lcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/library/reader/bookreader/EBook;IIILcom/amazon/system/drawing/Dimension;I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    move-object v3, v0

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/FrameConstructor;->layout:Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/FrameConstructor$Layout;->getMaxHeight()I

    move-result v3

    invoke-virtual {v12}, Lcom/mobipocket/common/library/reader/ImageElement;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v8, v3, 0x1

    .line 380
    const/16 v4, 0x24

    .line 381
    const/4 v6, 0x0

    .line 382
    move-object/from16 v0, p0

    move v1, v4

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->getFlowBreakFromTag(IZ)S

    move-result v5

    .line 383
    const/4 v7, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/mobipocket/common/library/reader/PageConstructor;->insertFlowBreak(ISZII)Z

    move-result v3

    and-int/2addr v3, v9

    .line 386
    new-instance v4, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 387
    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->setParagraphStyle(I)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 391
    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->addElement(Lcom/mobipocket/common/library/reader/FlowElement;)Z

    .line 394
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/library/reader/FrameConstructor;->setNewCurrentStyle(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    move v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/mobipocket/common/parser/EBookParser;->init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    move-object v3, v0

    invoke-static {v3}, Lcom/mobipocket/common/parser/HTMLEBookParser;->isHtml(Lcom/mobipocket/common/library/reader/bookreader/EBook;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    move v5, v0

    invoke-virtual {v11, v3, v4, v5}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    .line 414
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->setTriggerParserBeforeRendering(Z)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->triggerTheParser(Lcom/mobipocket/common/parser/EBookParser;)I

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->stopSavingClosedTags(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->beginBookPosition:I

    move v4, v0

    invoke-virtual {v3, v4, v11}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->saveEndInformation(ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-object v3, v0

    return-object v3
.end method

.method public renderPage()Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 2

    .prologue
    .line 448
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->renderPageInternal(IZ)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 449
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    return-object v0
.end method

.method renderRestOfPage(Lcom/mobipocket/common/parser/TagAndAttributeStack;)Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 6
    .parameter "incompletePageEndTagAndAttributeStack"

    .prologue
    .line 479
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->parser:Lcom/mobipocket/common/parser/EBookParser;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/mobipocket/common/library/reader/FrameConstructor;->reinitWithPartialPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;Lcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    move-result v1

    .line 482
    .local v1, inserted:Z
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->frameConstructor:Lcom/mobipocket/common/library/reader/FrameConstructor;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/FrameConstructor;->getOnGoingActiveArea(I)Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v0

    .line 483
    .local v0, currentAa:Lcom/mobipocket/common/library/reader/ActiveArea;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->isEndingOnPage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->isActiveAreaWaitingEndOfTitle:Z

    .line 488
    :cond_0
    const v2, 0x7fffffff

    invoke-direct {p0, v1, p1, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->createMainFrame(ZLcom/mobipocket/common/parser/TagAndAttributeStack;I)V

    .line 490
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/PageConstructor;->page:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    return-object v2
.end method
