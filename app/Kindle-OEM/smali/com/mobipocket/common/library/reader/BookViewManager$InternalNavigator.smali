.class Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalNavigator"
.end annotation


# static fields
.field static final MAX_TABLE_SLICE_COUNT:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3100(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->parseNextPage(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->initializePreviousPage()V

    return-void
.end method

.method static synthetic access$3600(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->doPageLayout(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoTOC()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->hasTOC()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoCoverPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Lcom/mobipocket/common/library/reader/GuideItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoGuideItem(Lcom/mobipocket/common/library/reader/GuideItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->calculateHeightToScrollDown()I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Lcom/mobipocket/common/library/reader/DisplayableFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->scrollDown(Lcom/mobipocket/common/library/reader/DisplayableFrame;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPreviousLine()V

    return-void
.end method

.method static synthetic access$5000(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 388
    invoke-direct/range {p0 .. p5}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->parseKnownPage(ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V

    return-void
.end method

.method static synthetic access$5700(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Lcom/mobipocket/common/library/reader/AnnotationItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->openAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getStackStateSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->saveStackState(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->init(Z)V

    return-void
.end method

.method private calculateHeightToScrollDown()I
    .locals 8

    .prologue
    .line 1024
    const/4 v1, 0x0

    .line 1025
    .local v1, heightToCrop:I
    const/4 v0, 0x0

    .line 1026
    .local v0, firstTableLineSpanOnNextScreen:Z
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 1028
    const/4 v2, 0x0

    .line 1029
    .local v2, lineIdx:I
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 1032
    .local v3, lineInfo:Lcom/mobipocket/common/library/reader/LineInformation;
    :goto_0
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v2, v6, :cond_0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1034
    add-int/lit8 v2, v2, 0x1

    .line 1035
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lineInfo:Lcom/mobipocket/common/library/reader/LineInformation;
    check-cast v3, Lcom/mobipocket/common/library/reader/LineInformation;

    .restart local v3       #lineInfo:Lcom/mobipocket/common/library/reader/LineInformation;
    goto :goto_0

    .line 1039
    :cond_0
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1042
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->getTableElement()Lcom/mobipocket/common/library/reader/TableElement;

    move-result-object v4

    .line 1043
    .local v4, tableElement:Lcom/mobipocket/common/library/reader/TableElement;
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableElement;->getFirstDisplayedLine()I

    move-result v5

    .line 1046
    .local v5, tableLineNum:I
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableElement;->isFirstLineSpanOnNextScreen()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1048
    const/4 v0, 0x1

    .line 1076
    .end local v4           #tableElement:Lcom/mobipocket/common/library/reader/TableElement;
    .end local v5           #tableLineNum:I
    :cond_1
    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 1079
    add-int/lit8 v2, v2, 0x1

    .line 1083
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 1087
    :cond_2
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #lineInfo:Lcom/mobipocket/common/library/reader/LineInformation;
    check-cast v3, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 1090
    .restart local v3       #lineInfo:Lcom/mobipocket/common/library/reader/LineInformation;
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1092
    :cond_3
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->getY()I

    move-result v6

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->getTopMargin()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v7

    sub-int v1, v6, v7

    .line 1094
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1097
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    if-lez v1, :cond_2

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1101
    .end local v2           #lineIdx:I
    .end local v3           #lineInfo:Lcom/mobipocket/common/library/reader/LineInformation;
    :cond_5
    return v1

    .line 1053
    .restart local v2       #lineIdx:I
    .restart local v3       #lineInfo:Lcom/mobipocket/common/library/reader/LineInformation;
    .restart local v4       #tableElement:Lcom/mobipocket/common/library/reader/TableElement;
    .restart local v5       #tableLineNum:I
    :cond_6
    :goto_1
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableElement;->getLastDisplayedLine()I

    move-result v6

    if-ge v5, v6, :cond_1

    if-gtz v1, :cond_1

    .line 1056
    invoke-virtual {v4, v5}, Lcom/mobipocket/common/library/reader/TableElement;->getBottomLineRelativeYPosition(I)I

    move-result v6

    iget-object v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v7

    sub-int v1, v6, v7

    .line 1064
    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableElement;->getLastDisplayedLine()I

    move-result v6

    if-ne v5, v6, :cond_7

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveDown()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1067
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/PageConstructor;->getLineSpacing()I

    move-result v6

    add-int/2addr v1, v6

    .line 1069
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;
    .locals 2

    .prologue
    .line 395
    new-instance v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;-><init>()V

    .line 396
    .local v0, layoutSettings:Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$800(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->paragraphSpacing:I

    .line 397
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$900(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->paragraphIndentation:I

    .line 398
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1000(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->lineSpacing:I

    .line 399
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->pHyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->hyphenationManager:Lcom/mobipocket/common/library/reader/hyphenation/HyphenationManager;

    .line 400
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->tableBkgColor:I

    .line 401
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1200(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->tableCellPadding:I

    .line 402
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->width:I

    .line 403
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->height:I

    .line 404
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->xMargin:I

    .line 405
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iput v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->yMargin:I

    .line 406
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1700(Lcom/mobipocket/common/library/reader/BookViewManager;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->getHighResImages:Z

    .line 407
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 409
    return-object v0
.end method

.method private doPageLayout(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1365
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->renderPage()Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    .line 1366
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->loadPageImages()V

    .line 1369
    packed-switch p1, :pswitch_data_0

    move-object v1, v4

    .line 1389
    :goto_0
    if-eqz v1, :cond_0

    .line 1391
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    .line 1392
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iput v2, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    .line 1393
    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V

    .line 1394
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-static {v2, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 1395
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v2

    if-lez v2, :cond_0

    .line 1397
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->scrollDown(Lcom/mobipocket/common/library/reader/DisplayableFrame;I)V

    .line 1400
    :cond_0
    return-void

    .line 1372
    :pswitch_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 1373
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2702(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 1374
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v0, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 1375
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iput-object v4, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    goto :goto_0

    .line 1379
    :pswitch_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pNextDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 1380
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2802(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/LayoutedFrame;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    goto :goto_0

    .line 1384
    :pswitch_2
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pPreviousDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    .line 1385
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2902(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/LayoutedFrame;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    goto :goto_0

    .line 1369
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentPageBeginParserState()[B
    .locals 4

    .prologue
    .line 1783
    const/4 v0, 0x0

    .line 1784
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1786
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    .line 1787
    if-eqz v1, :cond_0

    .line 1791
    :try_start_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/mobipocket/common/parser/EBookParser;->saveParserState(Lcom/mobipocket/common/parser/TagAndAttributeStack;I)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1800
    :cond_0
    :goto_0
    return-object v0

    .line 1793
    :catch_0
    move-exception v1

    .line 1795
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getGuideItem(Ljava/lang/String;B)Lcom/mobipocket/common/library/reader/GuideItem;
    .locals 3
    .parameter "name"
    .parameter "type"

    .prologue
    .line 587
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2000(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 589
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2000(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/GuideItem;

    .line 590
    .local v0, currentGuideItem:Lcom/mobipocket/common/library/reader/GuideItem;
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/GuideItem;->getType()B

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/GuideItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 596
    .end local v0           #currentGuideItem:Lcom/mobipocket/common/library/reader/GuideItem;
    :goto_1
    return-object v2

    .line 587
    .restart local v0       #currentGuideItem:Lcom/mobipocket/common/library/reader/GuideItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    .end local v0           #currentGuideItem:Lcom/mobipocket/common/library/reader/GuideItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getPreviousLayoutedPage()Lcom/mobipocket/common/library/reader/LayoutedFrame;
    .locals 1

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->initializePreviousPage()V

    .line 1210
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->renderPage()Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    return-object v0
.end method

.method private getStackStateSize()I
    .locals 3

    .prologue
    .line 1610
    const/16 v0, 0x30

    .line 1611
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    .line 1612
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 1614
    const/4 v1, 0x0

    .line 1617
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1619
    const/16 v1, 0xc

    .line 1621
    :cond_1
    add-int/2addr v0, v1

    .line 1623
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getCurrentPageBeginParserState()[B

    move-result-object v1

    .line 1624
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    .line 1625
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1628
    array-length v1, v1

    .line 1629
    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getSaveStateSize()I

    move-result v2

    .line 1630
    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1633
    :cond_2
    return v0
.end method

.method private gotoCoverPage()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 831
    .line 834
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverRecord:I

    .line 836
    if-ltz v0, :cond_0

    .line 839
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 842
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v1

    .line 845
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v3, v0, v1}, Lcom/mobipocket/common/library/reader/PageConstructor;->renderCoverPage(ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v0

    iput-object v0, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 847
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V

    .line 848
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->loadPageImages()V

    .line 849
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 850
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 851
    const/4 v0, 0x1

    .line 853
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private gotoGuideItem(Lcom/mobipocket/common/library/reader/GuideItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 767
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/GuideItem;->getAbsPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 774
    :goto_0
    return v0

    .line 773
    :cond_1
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/GuideItem;->getAbsPosition()I

    move-result v0

    invoke-virtual {p0, v0, v2, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    move v0, v3

    .line 774
    goto :goto_0
.end method

.method private gotoPreviousLine()V
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_0

    .line 1224
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->initializePreviousLine()V

    .line 1226
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->doPageLayout(I)V

    .line 1230
    :cond_0
    return-void
.end method

.method private gotoTOC()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 607
    const-string v0, "toc"

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getGuideItem(Ljava/lang/String;B)Lcom/mobipocket/common/library/reader/GuideItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "start"

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getGuideItem(Ljava/lang/String;B)Lcom/mobipocket/common/library/reader/GuideItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 613
    :cond_0
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoGuideItem(Lcom/mobipocket/common/library/reader/GuideItem;)Z

    move-result v0

    .line 620
    :goto_0
    if-nez v0, :cond_1

    .line 622
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->firstPage(Z)V

    .line 625
    :cond_1
    return v0

    .line 618
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasTOC()Z
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 634
    const-string v0, "toc"

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getGuideItem(Ljava/lang/String;B)Lcom/mobipocket/common/library/reader/GuideItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "start"

    invoke-direct {p0, v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getGuideItem(Ljava/lang/String;B)Lcom/mobipocket/common/library/reader/GuideItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    const/4 v0, 0x1

    .line 641
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Z)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size invalid:width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size incompatible with margin:width-xMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height-yMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 867
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 870
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1}, Lcom/mobipocket/common/parser/EBookParser;->init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    .line 872
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v0

    .line 873
    :goto_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v0

    goto :goto_0

    .line 875
    :cond_0
    if-nez p1, :cond_1

    move v0, v4

    :goto_1
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->passHeader(Z)V

    .line 876
    return-void

    :cond_1
    move v0, v3

    .line 875
    goto :goto_1
.end method

.method private initializePreviousLine()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1318
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_0

    .line 1323
    const/4 v0, 0x0

    .line 1326
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    .line 1327
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2600(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/mobipocket/common/library/reader/NavigationCache;->getDestOf(II)Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    move-result-object v5

    .line 1328
    if-eqz v5, :cond_1

    move v1, v3

    .line 1329
    :goto_0
    if-eqz v1, :cond_5

    .line 1331
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2500(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    move-result-object v0

    iget v2, v5, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    .line 1332
    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    move-object v6, v0

    move v0, v2

    move-object v2, v6

    .line 1335
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1337
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget v3, v5, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    iget v5, v5, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->prepareKnownPageLayout(ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V

    .line 1348
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v1, v4

    .line 1328
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1332
    goto :goto_1

    .line 1339
    :cond_3
    if-eqz v1, :cond_4

    .line 1341
    iget v0, v5, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    invoke-direct {p0, v0, v3, v4}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->prepareGotoPosition(IZZ)V

    goto :goto_3

    .line 1345
    :cond_4
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->prepareUnknownPreviousLine()V

    goto :goto_3

    :cond_5
    move-object v2, v0

    move v0, v4

    goto :goto_2
.end method

.method private initializePreviousPage()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1167
    .line 1170
    const/4 v0, 0x0

    .line 1175
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    .line 1176
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2400(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/mobipocket/common/library/reader/NavigationCache;->getDestOf(II)Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;

    move-result-object v5

    .line 1177
    if-eqz v5, :cond_0

    move v1, v6

    .line 1178
    :goto_0
    if-eqz v1, :cond_4

    .line 1180
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2500(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    move-result-object v0

    iget v2, v5, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    .line 1181
    if-eqz v0, :cond_1

    move v2, v6

    :goto_1
    move-object v7, v0

    move v0, v2

    move-object v2, v7

    .line 1184
    :goto_2
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget v3, v5, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    iget v5, v5, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->yOffset:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->prepareKnownPageLayout(ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V

    .line 1198
    :goto_3
    return-void

    :cond_0
    move v1, v4

    .line 1177
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1181
    goto :goto_1

    .line 1190
    :cond_2
    if-eqz v1, :cond_3

    .line 1192
    iget v0, v5, Lcom/mobipocket/common/library/reader/PageBeginPositionDesc;->position:I

    invoke-direct {p0, v0, v6, v4}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->prepareGotoPosition(IZZ)V

    goto :goto_3

    .line 1196
    :cond_3
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->prepareUnknownPreviousPage()V

    goto :goto_3

    :cond_4
    move-object v2, v0

    move v0, v4

    goto :goto_2
.end method

.method private openAnnotation(Lcom/mobipocket/common/library/reader/AnnotationItem;)V
    .locals 4
    .parameter

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/historizer/HistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/historizer/HistoryManager;->addHistoryState()V

    .line 1500
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPosition()I

    move-result v0

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[openAnnotation] Open annotation. So restoring tagStack. Annotation position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1502
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v2, p1}, Lcom/mobipocket/common/library/reader/MBPFile;->getStateInfo(Lcom/mobipocket/common/library/reader/AnnotationItem;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getPageNumber()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->restoreStateFromStack(Ljava/io/InputStream;II)Z

    move-result v0

    .line 1503
    if-eqz v0, :cond_0

    .line 1506
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getBeginPosition()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isEndOfFlow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->parseNextPage(Z)V

    goto :goto_0

    .line 1513
    :cond_0
    return-void
.end method

.method private parseKnownPage(ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1560
    if-gtz p3, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->isCoverPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->isCoverInBookFlow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoCoverPage()Z

    .line 1569
    :goto_0
    return-void

    .line 1566
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->prepareKnownPageLayout(ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V

    .line 1567
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->doPageLayout(I)V

    goto :goto_0
.end method

.method private parseNextPage(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size invalid:width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size incompatible with margin:width-xMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height-yMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 940
    const/4 v1, 0x0

    .line 941
    const/4 v2, -0x1

    .line 944
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 946
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int v3, v0, v7

    .line 947
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 950
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v4, v7

    :goto_0
    move v8, v4

    move v4, v3

    move-object v3, v0

    move v0, v8

    .line 952
    :goto_1
    if-lez v4, :cond_4

    if-nez v0, :cond_4

    .line 954
    add-int/lit8 v3, v4, -0x1

    .line 955
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/LayoutedFrame;->linesInformation:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/library/reader/LineInformation;

    .line 956
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v4, v7

    :goto_2
    move v8, v4

    move v4, v3

    move-object v3, v0

    move v0, v8

    goto :goto_1

    :cond_2
    move v4, v6

    .line 950
    goto :goto_0

    :cond_3
    move v4, v6

    .line 956
    goto :goto_2

    .line 958
    :cond_4
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->containsTable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 960
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/LineInformation;->getTableElement()Lcom/mobipocket/common/library/reader/TableElement;

    move-result-object v0

    .line 961
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/TableElement;->getOffsetOfLastLine()I

    move-result v1

    .line 965
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v2

    if-ge v2, v1, :cond_8

    .line 966
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 976
    :goto_3
    if-ltz v0, :cond_5

    if-eqz v1, :cond_5

    .line 978
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/TableElement;->getLastDisplayedLine()I

    move-result v2

    .line 979
    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/TableElement;->getLineBeginPosition(I)I

    move-result v1

    .line 980
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    move v5, v0

    move-object v0, v2

    move v2, v1

    .line 994
    :goto_4
    if-nez v0, :cond_7

    .line 996
    new-instance v0, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>(Lcom/mobipocket/common/parser/TagAndAttributeStack;Z)V

    move-object v1, v0

    .line 1000
    :goto_5
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v3

    .line 1003
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/PageConstructor;->initKnownPageParsing(Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;I)I

    .line 1006
    if-eqz p1, :cond_6

    .line 1008
    invoke-direct {p0, v6}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->doPageLayout(I)V

    .line 1013
    :goto_6
    return-void

    .line 987
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    .line 990
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndPosition()I

    move-result v1

    move v2, v1

    move v5, v6

    .line 991
    goto :goto_4

    .line 1011
    :cond_6
    invoke-direct {p0, v7}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->doPageLayout(I)V

    goto :goto_6

    :cond_7
    move-object v1, v0

    goto :goto_5

    :cond_8
    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_3
.end method

.method private passHeader(Z)V
    .locals 25
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 422
    const/4 v5, 0x0

    .line 423
    const/16 v6, 0x64

    .line 424
    const/4 v7, 0x0

    .line 425
    const/4 v8, 0x0

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v9, v0

    invoke-static {v9}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mobipocket/common/parser/EBookParser;->get_cur_entity()I

    move-result v9

    .line 427
    if-nez v9, :cond_0

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v9, v0

    invoke-static {v9}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v9

    .line 430
    :cond_0
    const/4 v10, 0x0

    .line 431
    new-instance v17, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct/range {v17 .. v17}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>()V

    move/from16 v18, v10

    move/from16 v19, v8

    move/from16 v20, v7

    move/from16 v21, v6

    move/from16 v22, v5

    move v5, v9

    .line 434
    :goto_0
    if-nez v22, :cond_a

    if-eqz v5, :cond_a

    if-lez v21, :cond_a

    .line 436
    packed-switch v5, :pswitch_data_0

    :cond_1
    :pswitch_0
    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    .line 558
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v10, v0

    invoke-static {v10}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v10

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move v5, v10

    goto :goto_0

    .line 439
    :pswitch_1
    const/4 v5, 0x1

    new-array v5, v5, [Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v7, v5, v6

    .line 440
    const/4 v6, 0x1

    new-array v6, v6, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v7, v0

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/mobipocket/common/parser/EBookParser;->get_tag([Z[Z)S

    move-result v6

    .line 442
    sparse-switch v6, :sswitch_data_0

    .line 542
    if-nez v20, :cond_1

    .line 544
    add-int/lit8 v5, v21, -0x1

    move/from16 v6, v19

    move/from16 v7, v20

    move v8, v5

    move/from16 v9, v22

    move/from16 v5, v18

    goto :goto_1

    .line 446
    :sswitch_0
    const/4 v5, 0x1

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v7, v0

    invoke-static {v7}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v8, v0

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v8

    move-object/from16 v0, v17

    move v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->addTag(SLcom/mobipocket/common/parser/AttributeStack;I)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v6, v0

    invoke-static {v6}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v6

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v7, v0

    iput v6, v7, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    move/from16 v7, v20

    move/from16 v8, v21

    move v9, v5

    move v5, v6

    move/from16 v6, v19

    .line 450
    goto/16 :goto_1

    .line 454
    :sswitch_1
    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    move/from16 v6, v19

    move v7, v5

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v5, v18

    .line 455
    goto/16 :goto_1

    .line 454
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 460
    :sswitch_2
    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_3
    move v6, v5

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v5, v18

    .line 461
    goto/16 :goto_1

    .line 460
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 466
    :sswitch_3
    if-nez p1, :cond_1

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-nez v5, :cond_1

    if-eqz v19, :cond_1

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v23

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v5

    const/16 v6, 0x42

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v24

    .line 470
    if-eqz v23, :cond_4

    if-nez v24, :cond_5

    :cond_4
    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    .line 472
    goto/16 :goto_1

    .line 477
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/AttributeStack;->attributeIntValue(S)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 479
    new-instance v6, Lcom/mobipocket/common/library/reader/GuideItem;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v6

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move v3, v7

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/GuideItem;-><init>(Ljava/lang/String;Ljava/lang/String;BLcom/mobipocket/common/library/reader/IndexDescriptor;)V

    .line 480
    invoke-virtual {v6, v5}, Lcom/mobipocket/common/library/reader/GuideItem;->setAbsPosition(I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2000(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    .line 537
    goto/16 :goto_1

    .line 483
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v5

    const/16 v6, 0x75

    invoke-virtual {v5, v6}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 485
    new-instance v6, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;

    invoke-direct {v6, v5}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;-><init>(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v6}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunctionCallParser;->getJavaScriptFunction()Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;

    move-result-object v6

    .line 487
    if-eqz v6, :cond_6

    .line 489
    const-string v5, ""

    .line 490
    const-string v7, ""

    .line 491
    const-string v8, ""

    .line 492
    const-string v9, ""

    .line 493
    const-string v10, ""

    .line 494
    const/4 v11, 0x0

    .line 495
    invoke-virtual {v6}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isIndexSearchFunction()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 497
    move-object v0, v6

    check-cast v0, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->getIndexName()Ljava/lang/String;

    move-result-object v5

    .line 498
    check-cast v6, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/javascript/IndexSearchFunction;->getCaption1()Ljava/lang/String;

    move-result-object v6

    .line 499
    const/4 v9, 0x0

    move/from16 v16, v9

    move-object v15, v10

    move-object v14, v6

    move-object v13, v8

    move-object v12, v7

    move-object v11, v5

    .line 519
    :goto_5
    new-instance v5, Lcom/mobipocket/common/library/reader/IndexDescriptor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v6, v0

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v6}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v7, v0

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/BookItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v8, v0

    iget-object v8, v8, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v8, v8, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v8, v8, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->idx_dic:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v9, v0

    iget-object v9, v9, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v9, v9, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v9, v9, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_in:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v10, v0

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v10, v10, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v10, v10, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->dic_lang_ou:I

    invoke-direct/range {v5 .. v16}, Lcom/mobipocket/common/library/reader/IndexDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    new-instance v6, Lcom/mobipocket/common/library/reader/GuideItem;

    const/4 v7, 0x2

    move-object v0, v6

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move v3, v7

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/GuideItem;-><init>(Ljava/lang/String;Ljava/lang/String;BLcom/mobipocket/common/library/reader/IndexDescriptor;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v5, v0

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2000(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 501
    :cond_8
    invoke-virtual {v6}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isFilteredIndexSearchFunction()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 503
    move-object v0, v6

    check-cast v0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->getIndexName()Ljava/lang/String;

    move-result-object v5

    .line 504
    move-object v0, v6

    check-cast v0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->getKeyIndexName()Ljava/lang/String;

    move-result-object v9

    .line 505
    move-object v0, v6

    check-cast v0, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->getCaption1()Ljava/lang/String;

    move-result-object v7

    .line 506
    check-cast v6, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/javascript/FilteredIndexSearchFunction;->getCaption2()Ljava/lang/String;

    move-result-object v6

    .line 507
    const/4 v10, 0x2

    move/from16 v16, v10

    move-object v15, v6

    move-object v14, v7

    move-object v13, v8

    move-object v12, v9

    move-object v11, v5

    goto/16 :goto_5

    .line 509
    :cond_9
    invoke-virtual {v6}, Lcom/mobipocket/common/parser/javascript/JavaScriptFunction;->isCondIndexSearchFunction()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 511
    move-object v0, v6

    check-cast v0, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->getIndexName()Ljava/lang/String;

    move-result-object v5

    .line 512
    move-object v0, v6

    check-cast v0, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->getKeyIndexName()Ljava/lang/String;

    move-result-object v8

    .line 513
    move-object v0, v6

    check-cast v0, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->getKeyName()Ljava/lang/String;

    move-result-object v9

    .line 514
    move-object v0, v6

    check-cast v0, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->getCaption1()Ljava/lang/String;

    move-result-object v7

    .line 515
    check-cast v6, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;

    invoke-virtual {v6}, Lcom/mobipocket/common/parser/javascript/CondIndexSearchFunction;->getCaption2()Ljava/lang/String;

    move-result-object v6

    .line 516
    const/4 v10, 0x1

    move/from16 v16, v10

    move-object v15, v6

    move-object v14, v7

    move-object v13, v9

    move-object v12, v8

    move-object v11, v5

    goto/16 :goto_5

    .line 552
    :pswitch_2
    if-nez v20, :cond_1

    .line 554
    add-int/lit8 v5, v21, -0x1

    move/from16 v6, v19

    move/from16 v7, v20

    move v8, v5

    move/from16 v9, v22

    move/from16 v5, v18

    goto/16 :goto_1

    .line 560
    :cond_a
    if-nez v22, :cond_b

    .line 562
    new-instance v5, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v6, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 564
    :cond_b
    if-eqz p1, :cond_c

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/mobipocket/common/library/reader/FlowElement;

    const/4 v7, 0x0

    new-instance v8, Lcom/mobipocket/common/library/reader/BreakElement;

    const/4 v9, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    move-object v10, v0

    invoke-static {v10}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mobipocket/common/parser/EBookParser;->getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v10

    move-object v0, v8

    move v1, v9

    move-object v2, v10

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/BreakElement;-><init>(ILcom/mobipocket/common/parser/styles/StyleDescriptor;I)V

    aput-object v8, v6, v7

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v18

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->reInit([Lcom/mobipocket/common/library/reader/FlowElement;ILcom/mobipocket/common/parser/TagAndAttributeStack;)V

    .line 574
    :cond_c
    return-void

    :cond_d
    move/from16 v16, v11

    move-object v15, v10

    move-object v14, v9

    move-object v13, v8

    move-object v12, v7

    move-object v11, v5

    goto/16 :goto_5

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 442
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x40 -> :sswitch_3
        0x41 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method private prepareGotoPosition(IZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    if-ge p1, v0, :cond_2

    .line 1477
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    .line 1478
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v0

    const/16 v1, 0x1a4

    sub-int/2addr v0, v1

    .line 1481
    const/4 v1, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1483
    :goto_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v4

    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->setAverageCharPerPage(III)V

    .line 1484
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->pageFromPosition(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 1486
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 1488
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/historizer/HistoryManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/mobipocket/common/library/historizer/HistoryManager;->addHistoryState()V

    .line 1491
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v2

    .line 1494
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/mobipocket/common/library/reader/PageConstructor;->initUnknownPageParsing(ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;ZLcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)I

    .line 1495
    return-void

    :cond_1
    move v1, v0

    move v0, p2

    goto :goto_1

    :cond_2
    move v0, p1

    goto/16 :goto_0
.end method

.method private prepareKnownPageLayout(ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1529
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v3

    .line 1533
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    move-object v1, p2

    move v2, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/PageConstructor;->initKnownPageParsing(Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;I)I

    .line 1534
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 1537
    if-eqz p4, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cleanPreviousPageHistory()V

    .line 1541
    :cond_0
    return-void
.end method

.method private prepareUnknownPreviousLine()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1243
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_4

    .line 1246
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 1248
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v3

    .line 1251
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getPreviousLayoutedPage()Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-result-object v5

    .line 1253
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    .line 1255
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getNumberOfLineInScreen()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .line 1257
    invoke-virtual {v5, v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLineEndingPositions(I)I

    move-result v4

    .line 1261
    add-int/lit8 v2, v2, -0x1

    move v9, v4

    move v4, v2

    move v2, v9

    .line 1264
    :goto_0
    if-ltz v4, :cond_0

    if-ge v0, v2, :cond_0

    .line 1266
    invoke-virtual {v5, v4}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLineEndingPositions(I)I

    move-result v2

    .line 1267
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1274
    :goto_1
    if-gt v2, v0, :cond_5

    .line 1276
    if-gez v4, :cond_2

    move v2, v1

    :goto_2
    move v0, v8

    .line 1289
    :goto_3
    if-gt v1, v2, :cond_3

    .line 1291
    invoke-virtual {v5, v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLineEndingPositions(I)I

    move-result v4

    .line 1292
    if-eq v4, v1, :cond_1

    .line 1294
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v6}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2600(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/NavigationCache;

    move-result-object v6

    invoke-virtual {v6, v4, v8, v1, v8}, Lcom/mobipocket/common/library/reader/NavigationCache;->add(IIII)V

    .line 1295
    iget-object v6, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v6}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2500(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/mobipocket/common/library/reader/TagAndAttributeStackCache;->add(Lcom/mobipocket/common/parser/TagAndAttributeStack;I)V

    .line 1289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_3

    .line 1282
    :cond_2
    invoke-virtual {v5, v4}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getLineEndingPositions(I)I

    move-result v0

    .line 1283
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1301
    :cond_3
    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    .line 1303
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v5}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/PageConstructor;->initKnownPageParsing(Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;I)I

    .line 1305
    :cond_4
    return-void

    :cond_5
    move v2, v0

    goto :goto_2
.end method

.method private prepareUnknownPreviousPage()V
    .locals 6

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    .line 1408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getPreviousPage] Computing unknown previous page. Current page begin position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1410
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 1412
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->setAverageCharPerPage(III)V

    .line 1413
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->pageFromPosition(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 1416
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v3

    .line 1418
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v1

    .line 1420
    if-lez v1, :cond_3

    .line 1423
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$3000(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;)I

    move-result v0

    sub-int v0, v1, v0

    .line 1424
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1425
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1429
    :cond_1
    if-gtz v0, :cond_4

    .line 1431
    const/4 v0, 0x0

    move v5, v0

    .line 1434
    :goto_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->getTagAndAttributeStackAt(I)Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v2

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/PageConstructor;->initKnownPageParsing(Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;I)I

    move-result v0

    .line 1442
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    if-gt v0, v1, :cond_2

    .line 1444
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2102(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 1446
    :cond_2
    return-void

    .line 1440
    :cond_3
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageTableData:Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;

    invoke-virtual {v1, v0, v3, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->initUnknownPreviousPageParsing(ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;Lcom/mobipocket/common/library/reader/LayoutedFrame$PageTableData;)I

    move-result v0

    goto :goto_1

    :cond_4
    move v5, v0

    goto :goto_0
.end method

.method private restoreStateFromStack(Ljava/io/InputStream;II)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v4, 0x0

    .line 1701
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getCurrentBook()Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getMaxPosition()I

    move-result v0

    if-le p2, v0, :cond_0

    move v0, v4

    .line 1774
    :goto_0
    return v0

    .line 1707
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1712
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const v2, 0x44415441

    if-eq v1, v2, :cond_1

    move v0, v4

    .line 1713
    goto :goto_0

    .line 1714
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1715
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const v3, 0x45424152

    if-eq v2, v3, :cond_2

    move v0, v4

    .line 1716
    goto :goto_0

    .line 1717
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-eq v2, v8, :cond_3

    .line 1718
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "version not supported"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1762
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    .line 1719
    :cond_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1720
    shl-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1726
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const v5, 0x45425653

    if-eq v3, v5, :cond_4

    .line 1727
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Wrong format"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1728
    :cond_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-eq v3, v7, :cond_5

    .line 1729
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Must read 4 I don\'t know why"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1730
    :cond_5
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1731
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 1733
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1735
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1737
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 1739
    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x3

    .line 1740
    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 1743
    add-int/lit8 v5, v5, 0x8

    if-eq v3, v5, :cond_6

    .line 1745
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 1746
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 1747
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 1751
    :goto_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1752
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 1753
    sub-int v7, v6, v7

    new-array v7, v7, [B

    .line 1754
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1755
    shl-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    sub-int/2addr v1, v6

    const/16 v2, 0x24

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 1756
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1757
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    .line 1758
    new-instance v2, Lcom/mobipocket/common/parser/TagAndAttributeStack;

    invoke-direct {v2, v1}, Lcom/mobipocket/common/parser/TagAndAttributeStack;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1766
    :try_start_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/mobipocket/common/parser/EBookParser;->loadParserState([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1769
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[restoreStateFromStack] Restoring state from Tag Stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, p0

    move v1, p3

    move v3, p2

    .line 1773
    invoke-direct/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->parseKnownPage(ILcom/mobipocket/common/parser/TagAndAttributeStack;IZI)V

    move v0, v8

    .line 1774
    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_6
    move v5, v4

    goto :goto_1
.end method

.method private saveStackState(Ljava/io/OutputStream;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1643
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    .line 1647
    :cond_0
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1649
    const v1, 0x44415441

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1650
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getStackStateSize()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1651
    const v1, 0x45424152

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1652
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1653
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1655
    const v1, 0x45425653

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1656
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1657
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v1, v1, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->random_id:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1658
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1660
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v1

    .line 1661
    if-eqz v1, :cond_2

    .line 1663
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1664
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1665
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1666
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1667
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1668
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1680
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1682
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getCurrentPageBeginParserState()[B

    move-result-object v1

    .line 1683
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    .line 1684
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1686
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 1687
    invoke-virtual {v2, v0}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->saveState(Ljava/io/OutputStream;)V

    .line 1690
    :cond_1
    return-void

    .line 1672
    :cond_2
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1673
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1674
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method private scrollDown(Lcom/mobipocket/common/library/reader/DisplayableFrame;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 1114
    if-lez p2, :cond_1

    .line 1116
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->createLayoutSettings()Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;

    move-result-object v0

    .line 1117
    iget-object v1, p1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 1120
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v2

    .line 1122
    iget v3, v0, Lcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;->yMargin:I

    invoke-virtual {v1, p2, v3}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->yTranslate(II)I

    move-result v3

    .line 1124
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v4

    .line 1130
    if-eq v2, v4, :cond_0

    .line 1131
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->setBeginYOffset(I)V

    .line 1135
    :cond_0
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getEndTagAndAttributeStack()Lcom/mobipocket/common/parser/TagAndAttributeStack;

    move-result-object v2

    .line 1136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current page begin position and TagStack:@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - TG:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    invoke-virtual {v2, v4, v3}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->continueSavingClosedTags(II)Z

    .line 1141
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/mobipocket/common/library/reader/PageConstructor;->initRenderRestOfPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;Lcom/mobipocket/common/parser/TagAndAttributeStack;ILcom/mobipocket/common/library/reader/PageConstructor$PageConstructorLayoutSettings;)V

    .line 1142
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pageConstructor:Lcom/mobipocket/common/library/reader/PageConstructor;

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/library/reader/PageConstructor;->renderRestOfPage(Lcom/mobipocket/common/parser/TagAndAttributeStack;)Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 1146
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->loadPageImages()V

    .line 1147
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 1148
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-static {v0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 1149
    :cond_1
    return-void
.end method


# virtual methods
.method protected firstPage(Z)V
    .locals 3
    .parameter

    .prologue
    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size invalid:width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size incompatible with margin:width-xMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height-yMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 890
    if-eqz p1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2300(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/library/historizer/HistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobipocket/common/library/historizer/HistoryManager;->addHistoryState()V

    .line 895
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->init(Z)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->parseNextPage(Z)V

    .line 901
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getStartReadingPosition()I
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 651
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->hasDefaultIndex()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->hasNonCrossable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v7

    .line 753
    :cond_1
    :goto_0
    return v0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->startReadingPosition:I

    if-ltz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v0

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->startReadingPosition:I

    goto :goto_0

    .line 661
    :cond_3
    const-string v0, "start"

    invoke-direct {p0, v0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getGuideItem(Ljava/lang/String;B)Lcom/mobipocket/common/library/reader/GuideItem;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "other.ms-firstpage"

    invoke-direct {p0, v0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getGuideItem(Ljava/lang/String;B)Lcom/mobipocket/common/library/reader/GuideItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 664
    :cond_4
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/GuideItem;->getAbsPosition()I

    move-result v1

    if-eq v1, v7, :cond_5

    .line 666
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/GuideItem;->getAbsPosition()I

    move-result v0

    goto :goto_0

    .line 668
    :cond_5
    const-string v0, "toc"

    invoke-direct {p0, v0, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getGuideItem(Ljava/lang/String;B)Lcom/mobipocket/common/library/reader/GuideItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 682
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/GuideItem;->getAbsPosition()I

    move-result v1

    .line 683
    if-ne v1, v7, :cond_6

    move v0, v7

    .line 685
    goto :goto_0

    .line 688
    :cond_6
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/GuideItem;->getAbsPosition()I

    move-result v0

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1800(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-result-object v4

    invoke-static {v2, v3, v0, v6, v4}, Lcom/mobipocket/common/library/reader/PageConstructor;->initParserAtPosition(Lcom/mobipocket/common/parser/EBookParser;Lcom/mobipocket/common/library/reader/LayoutedFrame;IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    .line 689
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v2

    move v0, v6

    .line 694
    :cond_7
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v3

    .line 695
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v4}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v4

    sub-int/2addr v4, v1

    const/16 v5, 0x800

    if-le v4, v5, :cond_b

    move v4, v8

    .line 699
    :goto_1
    packed-switch v3, :pswitch_data_0

    :cond_8
    :goto_2
    :pswitch_0
    move v0, v4

    .line 740
    :goto_3
    if-eqz v0, :cond_7

    :cond_9
    move v0, v7

    .line 753
    goto/16 :goto_0

    :pswitch_1
    move v0, v8

    .line 704
    goto :goto_3

    .line 708
    :pswitch_2
    new-array v0, v8, [Z

    aput-boolean v6, v0, v6

    .line 709
    new-array v3, v8, [Z

    aput-boolean v6, v3, v6

    .line 710
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v5}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lcom/mobipocket/common/parser/EBookParser;->get_tag([Z[Z)S

    move-result v3

    .line 711
    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 715
    :sswitch_0
    aget-boolean v0, v0, v6

    goto :goto_3

    .line 720
    :sswitch_1
    aget-boolean v0, v0, v6

    if-nez v0, :cond_8

    .line 722
    new-instance v3, Lcom/mobipocket/common/library/reader/ActiveArea;

    invoke-direct {v3, v6}, Lcom/mobipocket/common/library/reader/ActiveArea;-><init>(I)V

    .line 723
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1900(Lcom/mobipocket/common/library/reader/BookViewManager;)Lcom/mobipocket/common/parser/EBookParser;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    .line 724
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mobipocket/common/library/reader/ActiveArea;->computeLink(Lcom/mobipocket/common/parser/AttributeStack;)Z

    move-result v0

    .line 725
    if-eqz v0, :cond_8

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getType()I

    move-result v0

    if-nez v0, :cond_8

    .line 727
    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/ActiveArea;->getPosition()I

    move-result v0

    .line 728
    if-gez v0, :cond_a

    move v0, v4

    .line 730
    goto :goto_3

    .line 734
    :cond_a
    shr-int/lit8 v3, v2, 0x1

    if-ge v0, v3, :cond_8

    shr-int/lit8 v3, v2, 0x1

    if-gt v1, v3, :cond_1

    if-le v0, v1, :cond_8

    goto/16 :goto_0

    :cond_b
    move v4, v0

    goto :goto_1

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 711
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x30 -> :sswitch_1
    .end sparse-switch
.end method

.method gotoPosition(IZZ)V
    .locals 1
    .parameter "position"
    .parameter "recover"
    .parameter "saveJump"

    .prologue
    .line 1462
    invoke-direct {p0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->prepareGotoPosition(IZZ)V

    .line 1464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->doPageLayout(I)V

    .line 1465
    return-void
.end method

.method protected gotoStartReading(Z)Z
    .locals 4
    .parameter "historizeIt"

    .prologue
    .line 910
    const/4 v0, 0x0

    .line 912
    .local v0, result:Z
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->getStartReadingPosition()I

    move-result v1

    .local v1, startReadingPosition:I
    if-lez v1, :cond_0

    .line 914
    const/4 v0, 0x1

    .line 915
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    .line 917
    :cond_0
    return v0
.end method

.method public isCoverPage()Z
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCoverPageAvailable()Z
    .locals 3

    .prologue
    .line 803
    const/4 v1, 0x0

    .line 804
    .local v1, ret:Z
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v2, :cond_0

    .line 805
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->currentBookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookItem;->getFullMetaData()Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;

    move-result-object v2

    iget v0, v2, Lcom/mobipocket/common/library/reader/book/FullMetaDataCollection;->coverRecord:I

    .line 806
    .local v0, coverImageRecordIdx:I
    if-ltz v0, :cond_0

    .line 807
    const/4 v1, 0x1

    .line 810
    .end local v0           #coverImageRecordIdx:I
    :cond_0
    return v1
.end method

.method isFirstPage()Z
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageBeginPosition()I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->beginBookPosition:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getBeginYOffset()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextPagePossible()Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isEndOfFlow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected restoreClosedPage()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size invalid:width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size incompatible with margin:width-xMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; height-yMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1586
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/MBPFile;->getLastOpenedPageStackInformation()[B

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    .line 1596
    :goto_0
    return v0

    .line 1591
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/MBPFile;->getLastOpenedPagePosition()I

    move-result v0

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBookParameter:Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/MBPFile;->getLastOpenedPageNumber()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->restoreStateFromStack(Ljava/io/InputStream;II)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    .line 1594
    goto :goto_0

    .line 1596
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreState(Ljava/io/InputStream;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation

    .prologue
    .line 1835
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1836
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1837
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1838
    invoke-direct {p0, p1, v1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->restoreStateFromStack(Ljava/io/InputStream;II)Z

    .line 1839
    return-void
.end method

.method public saveState(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1820
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1823
    .local v0, dataOutputStream:Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1826
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2100(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1828
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-direct {v1, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->saveStackState(Ljava/io/OutputStream;)V

    .line 1831
    return-void
.end method
