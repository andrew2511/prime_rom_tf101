.class Lcom/mobipocket/common/library/reader/DisplayableFrame;
.super Ljava/lang/Object;
.source "DisplayableFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;,
        Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;,
        Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;,
        Lcom/mobipocket/common/library/reader/DisplayableFrame$SelectableActiveArea;,
        Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;
    }
.end annotation


# instance fields
.field private final GET_FIRST_WORDS_COUNT:I

.field public final activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

.field layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

.field marginX:I

.field marginY:I

.field private offsetX:I

.field private offsetY:I

.field public final tableViewPort:Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;

.field public final temporaryDecorations:Ljava/util/Vector;

.field public final wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginX:I

    .line 29
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->marginY:I

    .line 30
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->offsetX:I

    .line 31
    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->offsetY:I

    .line 33
    const/16 v0, 0x28

    iput v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->GET_FIRST_WORDS_COUNT:I

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->temporaryDecorations:Ljava/util/Vector;

    .line 38
    new-instance v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;-><init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    .line 39
    new-instance v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;-><init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    .line 40
    new-instance v0, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;-><init>(Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->tableViewPort:Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;

    .line 41
    return-void
.end method

.method static synthetic access$200(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->offsetX:I

    return v0
.end method

.method static synthetic access$300(Lcom/mobipocket/common/library/reader/DisplayableFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->offsetY:I

    return v0
.end method

.method static synthetic access$400(Lcom/mobipocket/common/library/reader/DisplayableFrame;Lcom/mobipocket/common/library/reader/ActiveArea;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->getDecorationTypeFromActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;)I

    move-result v0

    return v0
.end method

.method private drawActiveObjectSelection(Lcom/amazon/system/drawing/Graphics;IIII)V
    .locals 7
    .parameter "graphics"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2908
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->isSelectionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2912
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->getSelectedActiveArea()Lcom/mobipocket/common/library/reader/ActiveArea;

    move-result-object v6

    .line 2913
    .local v6, aa:Lcom/mobipocket/common/library/reader/ActiveArea;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->access$1100(Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;)Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v0

    .local v0, frame:Lcom/mobipocket/common/library/reader/DisplayableFrame;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2915
    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawActiveObjectSelectionOnCurrentFrame(Lcom/amazon/system/drawing/Graphics;IIIILcom/mobipocket/common/library/reader/ActiveArea;)V

    .line 2917
    .end local v0           #frame:Lcom/mobipocket/common/library/reader/DisplayableFrame;
    .end local v6           #aa:Lcom/mobipocket/common/library/reader/ActiveArea;
    :cond_0
    return-void
.end method

.method private drawActiveObjectSelectionOnCurrentFrame(Lcom/amazon/system/drawing/Graphics;IIIILcom/mobipocket/common/library/reader/ActiveArea;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2896
    invoke-virtual {p6}, Lcom/mobipocket/common/library/reader/ActiveArea;->getBegin()I

    move-result v0

    .line 2897
    invoke-virtual {p6}, Lcom/mobipocket/common/library/reader/ActiveArea;->getEnd()I

    move-result v1

    .line 2898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error invertMode begin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2900
    invoke-direct {p0, p6}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->getDecorationTypeFromActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;)I

    move-result v2

    .line 2901
    iget-object v3, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->getDecoration(IILjava/util/Vector;I)Lcom/mobipocket/common/library/reader/Decoration;

    move-result-object v0

    .line 2902
    invoke-virtual {p6}, Lcom/mobipocket/common/library/reader/ActiveArea;->getDisplayableAnnotationNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/Decoration;->setDisplayableNumber(I)V

    .line 2903
    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->offsetX:I

    add-int v2, p2, v1

    iget v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->offsetY:I

    add-int v3, p3, v1

    const/4 v4, 0x1

    const/4 v5, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/Decoration;->draw(Lcom/amazon/system/drawing/Graphics;IIZI)V

    .line 2904
    return-void
.end method

.method private declared-synchronized drawSelectionOnCurrentFrame(Lcom/amazon/system/drawing/Graphics;IIIIZI)V
    .locals 8
    .parameter "graphics"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "useInvert"
    .parameter "selectionColor"

    .prologue
    .line 2810
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getPageObjectIndexSelectionBegin()I

    move-result v6

    .line 2811
    .local v6, begin:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getPageObjectIndexSelectionEnd()I

    move-result v7

    .line 2813
    .local v7, end:I
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v3, 0x2

    invoke-virtual {v1, v6, v7, v2, v3}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->getDecoration(IILjava/util/Vector;I)Lcom/mobipocket/common/library/reader/Decoration;

    move-result-object v0

    .line 2814
    .local v0, decoration:Lcom/mobipocket/common/library/reader/Decoration;
    const/4 v5, 0x3

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/Decoration;->draw(Lcom/amazon/system/drawing/Graphics;IIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2815
    monitor-exit p0

    return-void

    .line 2810
    .end local v0           #decoration:Lcom/mobipocket/common/library/reader/Decoration;
    .end local v6           #begin:I
    .end local v7           #end:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private drawTemporaryDecorations(Lcom/amazon/system/drawing/Graphics;III)V
    .locals 9
    .parameter "graphics"
    .parameter "x"
    .parameter "y"
    .parameter "filter"

    .prologue
    .line 2838
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->temporaryDecorations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 2840
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->temporaryDecorations:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobipocket/common/library/reader/Range;

    .line 2841
    .local v6, currentDecoration:Lcom/mobipocket/common/library/reader/Range;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-static {v1, v6}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->getPageObjectIndexesFromFilePositions(Ljava/util/Vector;Lcom/mobipocket/common/library/reader/Range;)Lcom/mobipocket/common/library/reader/Range;

    move-result-object v8

    .line 2843
    .local v8, pageObjectRange:Lcom/mobipocket/common/library/reader/Range;
    iget v1, v8, Lcom/mobipocket/common/library/reader/Range;->begin:I

    if-ltz v1, :cond_0

    iget v1, v8, Lcom/mobipocket/common/library/reader/Range;->end:I

    if-ltz v1, :cond_0

    .line 2845
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/LayoutedFrame;->decorationGenerator:Lcom/mobipocket/common/library/reader/DecorationGenerator;

    iget v2, v8, Lcom/mobipocket/common/library/reader/Range;->begin:I

    iget v3, v8, Lcom/mobipocket/common/library/reader/Range;->end:I

    iget-object v4, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mobipocket/common/library/reader/DecorationGenerator;->getDecoration(IILjava/util/Vector;I)Lcom/mobipocket/common/library/reader/Decoration;

    move-result-object v0

    .line 2846
    .local v0, decoration:Lcom/mobipocket/common/library/reader/Decoration;
    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mobipocket/common/library/reader/Decoration;->draw(Lcom/amazon/system/drawing/Graphics;IIZI)V

    .line 2838
    .end local v0           #decoration:Lcom/mobipocket/common/library/reader/Decoration;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2849
    .end local v6           #currentDecoration:Lcom/mobipocket/common/library/reader/Range;
    .end local v8           #pageObjectRange:Lcom/mobipocket/common/library/reader/Range;
    :cond_1
    return-void
.end method

.method private getDecorationTypeFromActiveArea(Lcom/mobipocket/common/library/reader/ActiveArea;)I
    .locals 4
    .parameter "aa"

    .prologue
    .line 2921
    const/4 v1, 0x2

    .line 2922
    .local v1, type:I
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/ActiveArea;->getAnnotationCallback()Lcom/mobipocket/common/library/reader/AnnotationItem;

    move-result-object v0

    .line 2923
    .local v0, annotation:Lcom/mobipocket/common/library/reader/AnnotationItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/AnnotationItem;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2925
    const/4 v1, 0x1

    .line 2927
    :cond_0
    return v1
.end method


# virtual methods
.method public declared-synchronized drawPage(Lcom/amazon/system/drawing/Graphics;IIIIIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2854
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 2888
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2859
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isPreBufferingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2861
    invoke-interface {p1, p6}, Lcom/amazon/system/drawing/Graphics;->setColor(I)V

    .line 2862
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/amazon/system/drawing/Graphics;->fillRect(IIII)V

    .line 2864
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawTemporaryDecorations(Lcom/amazon/system/drawing/Graphics;III)V

    .line 2868
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionColor()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isPreBufferingEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2870
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawSelection(Lcom/amazon/system/drawing/Graphics;IIIIZ)V

    .line 2873
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;IIIII)V

    .line 2874
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isPreBufferingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2876
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawTemporaryDecorations(Lcom/amazon/system/drawing/Graphics;III)V

    .line 2880
    :cond_4
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionColor()I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/LayoutedFrame;->isPreBufferingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2881
    :cond_5
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionColor()I

    move-result v0

    if-gez v0, :cond_7

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 2882
    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawSelection(Lcom/amazon/system/drawing/Graphics;IIIIZ)V

    .line 2885
    :cond_6
    if-eqz p7, :cond_0

    .line 2886
    invoke-direct/range {p0 .. p5}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawActiveObjectSelection(Lcom/amazon/system/drawing/Graphics;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2854
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2881
    :cond_7
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1
.end method

.method public declared-synchronized drawPage(Lcom/amazon/system/drawing/Graphics;IIIZ)V
    .locals 8
    .parameter "graphics"
    .parameter "width"
    .parameter "height"
    .parameter "bgColor"
    .parameter "drawActiveObjectSelection"

    .prologue
    .line 2801
    monitor-enter p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawPage(Lcom/amazon/system/drawing/Graphics;IIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2802
    monitor-exit p0

    return-void

    .line 2801
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized drawSelection(Lcom/amazon/system/drawing/Graphics;IIIIZ)V
    .locals 11
    .parameter "graphics"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "useInvert"

    .prologue
    .line 2823
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionFrameList()Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 2824
    .local v9, frameList:Ljava/util/Vector;
    if-nez v9, :cond_1

    .line 2834
    :cond_0
    monitor-exit p0

    return-void

    .line 2828
    :cond_1
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 2831
    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;

    .line 2832
    .local v8, frame:Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;
    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->getFrame()Lcom/mobipocket/common/library/reader/DisplayableFrame;

    move-result-object v0

    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->getDrawOffsetX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {v8}, Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;->getDrawOffsetY()I

    move-result v1

    add-int v3, v1, p3

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->getSelectionColor()I

    move-result v7

    move-object v1, p1

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/mobipocket/common/library/reader/DisplayableFrame;->drawSelectionOnCurrentFrame(Lcom/amazon/system/drawing/Graphics;IIIIZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2828
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2823
    .end local v8           #frame:Lcom/mobipocket/common/library/reader/DisplayableFrame$PositionnedFrame;
    .end local v9           #frameList:Ljava/util/Vector;
    .end local v10           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method endAllSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2791
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->setSelectionEnabled(Z)V

    .line 2792
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->setSelectionEnabled(Z)V

    .line 2793
    return-void
.end method

.method public declared-synchronized releaseAll()V
    .locals 1

    .prologue
    .line 2936
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->reset()V

    .line 2937
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->reset()V

    .line 2938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2939
    monitor-exit p0

    return-void

    .line 2936
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setOffset(II)V
    .locals 0
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 57
    iput p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->offsetX:I

    .line 58
    iput p2, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->offsetY:I

    .line 59
    return-void
.end method

.method setPage(Lcom/mobipocket/common/library/reader/LayoutedFrame;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 49
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->temporaryDecorations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 51
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->activeAreaSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$ActiveAreaSelection;->reset()V

    .line 52
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->reset()V

    .line 53
    return-void
.end method
