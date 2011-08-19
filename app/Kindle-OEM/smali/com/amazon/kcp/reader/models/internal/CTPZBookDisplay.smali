.class public Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;
.super Ljava/lang/Object;
.source "CTPZBookDisplay.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/IBookDisplay;


# instance fields
.field private final NOTE_ICON_MIN_SIZE:I

.field private annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

.field private currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

.field private enableNoteHighlight:Z

.field private enableNoteIcon:Z

.field private forceRefresh:Lcom/amazon/foundation/internal/EventProvider;

.field private height:I

.field private navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

.field private noteIconHeight:I

.field private noteIconWidth:I

.field private final renderFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private tpzAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field private width:I

.field private worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/xml/SAXParserFactory;)V
    .locals 2
    .parameter "navigator"
    .parameter "bookAnnotationsManager"
    .parameter "imageFactory"
    .parameter "saxFactory"

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v0, 0xb

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->NOTE_ICON_MIN_SIZE:I

    .line 128
    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->width:I

    .line 129
    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->height:I

    .line 130
    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->noteIconWidth:I

    .line 131
    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->noteIconHeight:I

    .line 132
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->enableNoteHighlight:Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->enableNoteIcon:Z

    .line 134
    sget-object v0, Lcom/amazon/kcp/reader/models/ColorMode;->EMPTY_COLOR_MODE:Lcom/amazon/kcp/reader/models/ColorMode;

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    .line 135
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    .line 136
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    .line 137
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->forceRefresh:Lcom/amazon/foundation/internal/EventProvider;

    .line 138
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay$1;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->renderFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 145
    return-void
.end method

.method private drawAnnotations(Lcom/amazon/kcp/reader/models/internal/CTPZPage;Lcom/amazon/system/drawing/GraphicsExtended;)V
    .locals 0
    .parameter "page"
    .parameter "graphics"

    .prologue
    .line 468
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawHighlights(Lcom/amazon/kcp/reader/models/internal/CTPZPage;Lcom/amazon/system/drawing/GraphicsExtended;)V

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawNotes(Lcom/amazon/kcp/reader/models/internal/CTPZPage;Lcom/amazon/system/drawing/GraphicsExtended;)V

    .line 471
    return-void
.end method

.method private drawHighlights(Lcom/amazon/kcp/reader/models/internal/CTPZPage;Lcom/amazon/system/drawing/GraphicsExtended;)V
    .locals 7
    .parameter "page"
    .parameter "graphics"

    .prologue
    .line 619
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllHighlightAreaPositions()Ljava/util/ArrayList;

    move-result-object v4

    .line 620
    .local v4, positions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 622
    iget-object v6, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/models/ColorMode;->getHighlightColor()I

    move-result v5

    .line 623
    .local v5, projectedColor:I
    const/4 v0, 0x2

    .line 624
    .local v0, blitOp:I
    const/4 v2, 0x0

    .end local p0
    .local v2, highlightIndex:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 626
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;

    .line 627
    .local v1, data:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;
    const/4 v3, 0x0

    .local v3, positionIndex:I
    :goto_1
    iget-object v6, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;->rectangles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 629
    iget-object v6, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;->rectangles:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/system/drawing/Rectangle;

    invoke-interface {p2, p0, v5, v0}, Lcom/amazon/system/drawing/GraphicsExtended;->colorBlit(Lcom/amazon/system/drawing/Rectangle;II)V

    .line 627
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 624
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    .end local v0           #blitOp:I
    .end local v1           #data:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;
    .end local v2           #highlightIndex:I
    .end local v3           #positionIndex:I
    .end local v5           #projectedColor:I
    :cond_1
    return-void
.end method

.method private drawLinks(Lcom/amazon/kcp/reader/models/internal/CTPZPage;Lcom/amazon/system/drawing/GraphicsExtended;)V
    .locals 10
    .parameter "page"
    .parameter "graphics"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xff

    .line 480
    invoke-virtual {p1, v9}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllActiveAreaPositions(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 481
    .local v0, activeAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/ColorMode;->getLinkColor()I

    move-result v4

    .line 482
    .local v4, projectedColor:I
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/ColorMode;->hasDarkBackground()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 484
    new-instance v1, Lcom/amazon/system/drawing/Color;

    invoke-direct {v1, v4}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    .line 485
    .local v1, color:Lcom/amazon/system/drawing/Color;
    new-instance v3, Lcom/amazon/system/drawing/Color;

    invoke-virtual {v1}, Lcom/amazon/system/drawing/Color;->getRed()I

    move-result v5

    sub-int v5, v8, v5

    invoke-virtual {v1}, Lcom/amazon/system/drawing/Color;->getGreen()I

    move-result v6

    sub-int v6, v8, v6

    invoke-virtual {v1}, Lcom/amazon/system/drawing/Color;->getBlue()I

    move-result v7

    sub-int v7, v8, v7

    invoke-virtual {v1}, Lcom/amazon/system/drawing/Color;->getAlpha()I

    move-result v8

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/amazon/system/drawing/Color;-><init>(IIII)V

    .line 486
    .local v3, newColor:Lcom/amazon/system/drawing/Color;
    invoke-virtual {v3}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v4

    .line 488
    .end local v1           #color:Lcom/amazon/system/drawing/Color;
    .end local v3           #newColor:Lcom/amazon/system/drawing/Color;
    :cond_0
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 490
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/system/drawing/Rectangle;

    invoke-interface {p2, p0, v4, v9}, Lcom/amazon/system/drawing/GraphicsExtended;->colorBlit(Lcom/amazon/system/drawing/Rectangle;II)V

    .line 488
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_1
    return-void
.end method

.method private drawNote(Lcom/amazon/system/drawing/GraphicsExtended;Ljava/util/List;ZI)V
    .locals 9
    .parameter "graphics"
    .parameter
    .parameter "invert"
    .parameter "displayNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/system/drawing/GraphicsExtended;",
            "Ljava/util/List",
            "<*>;ZI)V"
        }
    .end annotation

    .prologue
    .local p2, positions:Ljava/util/List;,"Ljava/util/List<*>;"
    const/16 v8, 0xff

    .line 699
    iget-boolean v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->enableNoteHighlight:Z

    if-eqz v5, :cond_2

    .line 701
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/ColorMode;->getNoteColor()I

    move-result v4

    .line 702
    .local v4, projectedColor:I
    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/ColorMode;->hasDarkBackground()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 704
    new-instance v0, Lcom/amazon/system/drawing/Color;

    invoke-direct {v0, v4}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    .line 705
    .local v0, color:Lcom/amazon/system/drawing/Color;
    new-instance v1, Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0}, Lcom/amazon/system/drawing/Color;->getRed()I

    move-result v5

    sub-int v5, v8, v5

    invoke-virtual {v0}, Lcom/amazon/system/drawing/Color;->getGreen()I

    move-result v6

    sub-int v6, v8, v6

    invoke-virtual {v0}, Lcom/amazon/system/drawing/Color;->getBlue()I

    move-result v7

    sub-int v7, v8, v7

    invoke-virtual {v0}, Lcom/amazon/system/drawing/Color;->getAlpha()I

    move-result v8

    invoke-direct {v1, v5, v6, v7, v8}, Lcom/amazon/system/drawing/Color;-><init>(IIII)V

    .line 706
    .local v1, newColor:Lcom/amazon/system/drawing/Color;
    invoke-virtual {v1}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v4

    .line 708
    .end local v0           #color:Lcom/amazon/system/drawing/Color;
    .end local v1           #newColor:Lcom/amazon/system/drawing/Color;
    :cond_0
    const/4 v3, 0x0

    .local v3, positionIndex:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 710
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/system/drawing/Rectangle;

    .line 711
    .local v2, pos:Lcom/amazon/system/drawing/Rectangle;
    if-nez p3, :cond_1

    .line 713
    const/4 v5, 0x2

    invoke-interface {p1, v2, v4, v5}, Lcom/amazon/system/drawing/GraphicsExtended;->colorBlit(Lcom/amazon/system/drawing/Rectangle;II)V

    .line 708
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 717
    :cond_1
    iget v5, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v6, v2, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v7, v2, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v8, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {p1, v5, v6, v7, v8}, Lcom/amazon/system/drawing/GraphicsExtended;->invert(IIII)V

    goto :goto_1

    .line 721
    .end local v2           #pos:Lcom/amazon/system/drawing/Rectangle;
    .end local v3           #positionIndex:I
    .end local v4           #projectedColor:I
    :cond_2
    iget-boolean v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->enableNoteIcon:Z

    if-eqz v5, :cond_3

    .line 725
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/system/drawing/Rectangle;

    .line 726
    .restart local v2       #pos:Lcom/amazon/system/drawing/Rectangle;
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawNoteIcon(Lcom/amazon/system/drawing/GraphicsExtended;Lcom/amazon/system/drawing/Rectangle;ZI)V

    .line 728
    .end local v2           #pos:Lcom/amazon/system/drawing/Rectangle;
    :cond_3
    return-void
.end method

.method private drawNoteIcon(Lcom/amazon/system/drawing/GraphicsExtended;Lcom/amazon/system/drawing/Rectangle;ZI)V
    .locals 13
    .parameter "graphics"
    .parameter "rectangle"
    .parameter "invert"
    .parameter "displayNumber"

    .prologue
    .line 651
    invoke-interface {p1}, Lcom/amazon/system/drawing/GraphicsExtended;->getFont()Lcom/amazon/system/drawing/Font;

    move-result-object v8

    .line 652
    .local v8, currentFont:Lcom/amazon/system/drawing/Font;
    invoke-interface {p1}, Lcom/amazon/system/drawing/GraphicsExtended;->getColor()I

    move-result v7

    .line 654
    .local v7, currentColor:I
    if-nez v8, :cond_0

    .line 692
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->getNoteIconSize()I

    move-result v0

    invoke-interface {v8, v0}, Lcom/amazon/system/drawing/Font;->derive(I)Lcom/amazon/system/drawing/Font;

    move-result-object v9

    .line 661
    .local v9, newFont:Lcom/amazon/system/drawing/Font;
    invoke-interface {p1, v9}, Lcom/amazon/system/drawing/GraphicsExtended;->setFont(Lcom/amazon/system/drawing/Font;)V

    .line 665
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 666
    .local v10, num:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v9, v0, v1, v2}, Lcom/amazon/system/drawing/Font;->charsWidth([CII)I

    move-result v11

    .line 667
    .local v11, numWidth:I
    add-int/lit8 v6, v11, 0x1

    .line 668
    .local v6, iconWidth:I
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->getNoteIconSize()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 670
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->getNoteIconSize()I

    move-result v6

    .line 675
    :cond_1
    iget v0, p2, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p2, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int v12, v0, v1

    .line 676
    .local v12, x:I
    add-int v0, v12, v6

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->width:I

    if-le v0, v1, :cond_2

    .line 678
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->width:I

    sub-int v12, v0, v6

    .line 682
    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/ColorMode;->getSelectedIconColor()I

    move-result v0

    :goto_1
    invoke-interface {p1, v0}, Lcom/amazon/system/drawing/GraphicsExtended;->setColor(I)V

    .line 683
    iget v0, p2, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-interface {v9}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v1

    invoke-interface {p1, v12, v0, v6, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->fillRect(IIII)V

    .line 686
    if-eqz p3, :cond_4

    const v0, 0xffffff

    :goto_2
    invoke-interface {p1, v0}, Lcom/amazon/system/drawing/GraphicsExtended;->setColor(I)V

    .line 687
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v6, v11

    div-int/lit8 v0, v0, 0x2

    add-int v4, v12, v0

    iget v5, p2, Lcom/amazon/system/drawing/Rectangle;->y:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/amazon/system/drawing/GraphicsExtended;->drawText([CIIIII)V

    .line 690
    invoke-interface {p1, v8}, Lcom/amazon/system/drawing/GraphicsExtended;->setFont(Lcom/amazon/system/drawing/Font;)V

    .line 691
    invoke-interface {p1, v7}, Lcom/amazon/system/drawing/GraphicsExtended;->setColor(I)V

    goto :goto_0

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/ColorMode;->getIconColor()I

    move-result v0

    goto :goto_1

    .line 686
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private drawNotes(Lcom/amazon/kcp/reader/models/internal/CTPZPage;Lcom/amazon/system/drawing/GraphicsExtended;)V
    .locals 6
    .parameter "page"
    .parameter "graphics"

    .prologue
    .line 637
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAllNotesAreaPositions()Ljava/util/ArrayList;

    move-result-object v2

    .line 638
    .local v2, positions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 640
    const/4 v1, 0x0

    .local v1, noteIndex:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 642
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;

    .line 643
    .local v0, data:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;
    iget-object v3, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;->rectangles:Ljava/util/List;

    const/4 v4, 0x0

    iget v5, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;->typeIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, p2, v3, v4, v5}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawNote(Lcom/amazon/system/drawing/GraphicsExtended;Ljava/util/List;ZI)V

    .line 640
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v0           #data:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;
    .end local v1           #noteIndex:I
    :cond_0
    return-void
.end method

.method private drawSearchResult(Lcom/amazon/system/drawing/GraphicsExtended;)V
    .locals 23
    .parameter "graphics"

    .prologue
    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getCurrentPageSearchResult()Lcom/amazon/topaz/TPZBookSearchResult;

    move-result-object v18

    .line 298
    .local v18, result:Lcom/amazon/topaz/TPZBookSearchResult;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWordCount()I

    move-result v19

    if-nez v19, :cond_1

    .line 357
    :cond_0
    return-void

    .line 304
    :cond_1
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWordID(I)I

    move-result v6

    .line 305
    .local v6, firstWordID:I
    invoke-virtual/range {v18 .. v18}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWordCount()I

    move-result v19

    const/16 v20, 0x1

    sub-int v11, v19, v20

    .line 306
    .local v11, lastWordIdx:I
    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWordID(I)I

    move-result v10

    .line 307
    .local v10, lastWordID:I
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v6

    move v2, v10

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/reader/models/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object v17

    .line 308
    .local v17, rects:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 317
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWordOffset(I)I

    move-result v8

    .line 318
    .local v8, firstWordOffset:I
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move v2, v8

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->getWordRectangleInset(IIZ)I

    move-result v7

    .line 319
    .local v7, firstWordInset:I
    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWord(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBookSearchResult;->getMatchWordLength(I)I

    move-result v20

    sub-int v13, v19, v20

    .line 320
    .local v13, lastWordOffset:I
    if-ne v6, v10, :cond_2

    .line 322
    sub-int/2addr v13, v8

    .line 324
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v13

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->getWordRectangleInset(IIZ)I

    move-result v12

    .line 327
    .local v12, lastWordInset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/kcp/reader/models/ColorMode;->getHighlightColor()I

    move-result v15

    .line 328
    .local v15, projectedColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/kcp/reader/models/ColorMode;->hasDarkBackground()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 330
    new-instance v5, Lcom/amazon/system/drawing/Color;

    invoke-direct {v5, v15}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    .line 331
    .local v5, color:Lcom/amazon/system/drawing/Color;
    new-instance v14, Lcom/amazon/system/drawing/Color;

    const/16 v19, 0xff

    invoke-virtual {v5}, Lcom/amazon/system/drawing/Color;->getRed()I

    move-result v20

    sub-int v19, v19, v20

    const/16 v20, 0xff

    invoke-virtual {v5}, Lcom/amazon/system/drawing/Color;->getGreen()I

    move-result v21

    sub-int v20, v20, v21

    const/16 v21, 0xff

    invoke-virtual {v5}, Lcom/amazon/system/drawing/Color;->getBlue()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual {v5}, Lcom/amazon/system/drawing/Color;->getAlpha()I

    move-result v22

    move-object v0, v14

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Color;-><init>(IIII)V

    .line 332
    .local v14, newColor:Lcom/amazon/system/drawing/Color;
    invoke-virtual {v14}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v15

    .line 336
    .end local v5           #color:Lcom/amazon/system/drawing/Color;
    .end local v14           #newColor:Lcom/amazon/system/drawing/Color;
    :cond_3
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 338
    move-object/from16 v0, v17

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/amazon/system/drawing/Rectangle;

    .line 339
    .local v16, rect:Lcom/amazon/system/drawing/Rectangle;
    if-nez v9, :cond_4

    .line 341
    move-object/from16 v0, v16

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    move/from16 v19, v0

    add-int v19, v19, v7

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 342
    move-object/from16 v0, v16

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move/from16 v19, v0

    sub-int v19, v19, v7

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 344
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v19

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 346
    move-object/from16 v0, v16

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move/from16 v19, v0

    sub-int v19, v19, v12

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 352
    :cond_5
    move-object/from16 v0, v16

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    move/from16 v19, v0

    if-lez v19, :cond_6

    .line 354
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move v2, v15

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/system/drawing/GraphicsExtended;->colorBlit(Lcom/amazon/system/drawing/Rectangle;II)V

    .line 336
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method private drawSelection(Lcom/amazon/system/drawing/GraphicsExtended;)V
    .locals 7
    .parameter "graphics"

    .prologue
    .line 276
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    iget-object v3, v3, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->objectSelector:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->getSelectedPositions()Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;

    move-result-object v2

    .line 277
    .local v2, positions:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;
    iget v3, v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->selectionType:I

    sget v4, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_ACTIVE_AREA:I

    if-ne v3, v4, :cond_0

    .line 279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 281
    iget-object v3, v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/system/drawing/Rectangle;

    .line 282
    .local v1, pos:Lcom/amazon/system/drawing/Rectangle;
    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v6, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {p1, v3, v4, v5, v6}, Lcom/amazon/system/drawing/GraphicsExtended;->invert(IIII)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0           #i:I
    .end local v1           #pos:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    iget v3, v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->selectionType:I

    sget v4, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_NOTE:I

    if-ne v3, v4, :cond_1

    .line 287
    iget-object v3, v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->list:Ljava/util/ArrayList;

    const/4 v4, 0x1

    iget v5, v2, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->typeIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawNote(Lcom/amazon/system/drawing/GraphicsExtended;Ljava/util/List;ZI)V

    .line 289
    :cond_1
    return-void
.end method

.method private getNoteIconSize()I
    .locals 1

    .prologue
    .line 732
    const/16 v0, 0xb

    return v0
.end method

.method private getWordRectangleInset(IIZ)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 368
    if-gtz p2, :cond_0

    move v1, v8

    .line 458
    :goto_0
    return v1

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v1

    invoke-interface {v1, p1, p1}, Lcom/amazon/kcp/reader/models/IDocumentPage;->createCoveringRectangles(II)Ljava/util/Vector;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v1, v8

    .line 377
    goto :goto_0

    .line 379
    :cond_2
    if-eqz p3, :cond_4

    move v2, v8

    .line 380
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/system/drawing/Rectangle;

    .line 382
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getBook()Lcom/amazon/topaz/TPZBook;

    move-result-object v3

    .line 383
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/amazon/topaz/TPZBook;->pageForID(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v2

    .line 390
    if-eqz v2, :cond_3

    .line 392
    invoke-virtual {v2, p1}, Lcom/amazon/topaz/internal/book/Page;->getContainer(I)Lcom/amazon/topaz/internal/book/Container;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 394
    :cond_3
    if-nez v2, :cond_5

    move v1, v8

    .line 396
    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v9

    goto :goto_1

    .line 400
    :cond_5
    const/4 v4, 0x0

    .line 401
    :try_start_1
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Container;->drawables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/internal/book/Drawable;

    .line 404
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v5

    if-le v5, p1, :cond_7

    move-object v2, v4

    .line 414
    :goto_2
    instance-of v4, v2, Lcom/amazon/topaz/internal/book/Word;

    if-nez v4, :cond_8

    move v1, v8

    .line 416
    goto :goto_0

    .line 408
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Drawable;->getID()I

    move-result v5

    if-ne v5, p1, :cond_6

    move-object v2, p0

    .line 411
    goto :goto_2

    .line 419
    :cond_8
    move-object v0, v2

    check-cast v0, Lcom/amazon/topaz/internal/book/Word;

    move-object p0, v0

    .line 420
    iget-object v3, v3, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/book/Drawable;->getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_9

    move v1, v8

    .line 423
    goto :goto_0

    .line 428
    :catch_0
    move-exception v1

    move v1, v8

    goto :goto_0

    .line 433
    :catch_1
    move-exception v1

    move v1, v8

    goto :goto_0

    .line 439
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v3

    .line 440
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getNumGlyphs()I

    move-result v4

    .line 441
    int-to-float v5, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v5, v2

    .line 444
    sub-int v5, v4, v9

    int-to-float v6, p2

    mul-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Lcom/amazon/kcp/util/Utils;->round(D)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 446
    if-eqz p3, :cond_a

    .line 448
    invoke-virtual {p0, v2}, Lcom/amazon/topaz/internal/book/Word;->getNthGlyph(I)Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int/2addr v2, v4

    .line 457
    :goto_3
    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    int-to-float v3, v3

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 458
    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/amazon/kcp/util/Utils;->round(D)I

    move-result v1

    goto/16 :goto_0

    .line 452
    :cond_a
    sub-int v2, v4, v2

    sub-int/2addr v2, v9

    invoke-virtual {p0, v2}, Lcom/amazon/topaz/internal/book/Word;->getNthGlyph(I)Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v2

    .line 453
    iget v4, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v4, v5

    iget v5, v2, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v5

    sub-int v2, v4, v2

    goto :goto_3

    :cond_b
    move-object v2, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public getAnnotation(I)Lcom/amazon/kcp/reader/models/IAnnotation;
    .locals 3
    .parameter "annotationIdx"

    .prologue
    .line 742
    const/4 v0, 0x0

    .line 743
    .local v0, annotation:Lcom/amazon/kcp/reader/models/IAnnotation;
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;

    move-result-object v1

    .line 744
    .local v1, annotationList:[Lcom/amazon/kcp/reader/models/IAnnotation;
    if-ltz p1, :cond_0

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 746
    aget-object v0, v1, p1

    .line 748
    :cond_0
    return-object v0
.end method

.method public getColorMode()Lcom/amazon/kcp/reader/models/ColorMode;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    return-object v0
.end method

.method public getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getFontSize()I

    move-result v0

    return v0
.end method

.method public getForceRefreshEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->forceRefresh:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getImageFromImageId(I)[B
    .locals 1
    .parameter

    .prologue
    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getBook()Lcom/amazon/topaz/TPZBook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/TPZBook;->getImageBytes(I)[B
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 790
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    .line 786
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getLineSpacing()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getLineSpacing()I

    move-result v0

    return v0
.end method

.method public getNextDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getNextPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v0

    return-object v0
.end method

.method public getNoteIconHeight()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->noteIconHeight:I

    return v0
.end method

.method public getNoteIconWidth()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->noteIconWidth:I

    return v0
.end method

.method public getPreviousDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getPreviousPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v0

    return-object v0
.end method

.method public getTpzAnnotations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->tpzAnnotations:Ljava/util/ArrayList;

    return-object v0
.end method

.method notifyRefreshListeners()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->forceRefresh:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 569
    return-void
.end method

.method refreshOverlay()V
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->height:I

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->notifyRefreshListeners()V

    .line 560
    :cond_0
    return-void
.end method

.method public render(Lcom/amazon/system/drawing/GraphicsExtended;I)V
    .locals 6
    .parameter "graphics"
    .parameter "displacement"

    .prologue
    const/4 v4, 0x0

    .line 228
    const/4 v0, 0x0

    .line 230
    .local v0, page:Lcom/amazon/kcp/reader/models/internal/CTPZPage;
    if-nez p2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    .line 247
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-eqz v2, :cond_4

    .line 249
    iget-object v2, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v2}, Lcom/amazon/system/drawing/BufferedImageExtended;->createAffineTransform()Lcom/amazon/system/drawing/AffineTransform;

    move-result-object v1

    .line 250
    .local v1, transform:Lcom/amazon/system/drawing/AffineTransform;
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getMarginX()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getMarginY()I

    move-result v4

    int-to-double v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/amazon/system/drawing/AffineTransform;->translate(DD)V

    .line 251
    iget-object v2, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {p1, v2, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;Lcom/amazon/system/drawing/AffineTransform;)V

    .line 254
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getTpzAnnotations()[Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->computeDecorations([Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V

    .line 255
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawLinks(Lcom/amazon/kcp/reader/models/internal/CTPZPage;Lcom/amazon/system/drawing/GraphicsExtended;)V

    .line 256
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawAnnotations(Lcom/amazon/kcp/reader/models/internal/CTPZPage;Lcom/amazon/system/drawing/GraphicsExtended;)V

    .line 257
    if-nez p2, :cond_1

    .line 260
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawSelection(Lcom/amazon/system/drawing/GraphicsExtended;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->drawSearchResult(Lcom/amazon/system/drawing/GraphicsExtended;)V

    .line 272
    .end local v1           #transform:Lcom/amazon/system/drawing/AffineTransform;
    :cond_1
    :goto_1
    return-void

    .line 235
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getNextPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_3
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getPreviousPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_4
    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->width:I

    if-lez v2, :cond_1

    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->height:I

    if-lez v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/ColorMode;->getBackgroundColor()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/amazon/system/drawing/GraphicsExtended;->setBackground(I)V

    .line 269
    iget v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->width:I

    iget v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->height:I

    invoke-interface {p1, v4, v4, v2, v3}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    goto :goto_1
.end method

.method public setBookWorker(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V
    .locals 4
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getCurrentPageRenderedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->renderFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    new-instance v1, Lcom/amazon/system/drawing/Color;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    new-instance v2, Lcom/amazon/system/drawing/Color;

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/ColorMode;->getBackgroundColor()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V

    .line 156
    return-void
.end method

.method public setColorMode(Lcom/amazon/kcp/reader/models/ColorMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "color mode cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/models/ColorMode;->isEqual(Lcom/amazon/kcp/reader/models/ColorMode;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->refresh()V

    .line 508
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    .line 509
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    new-instance v1, Lcom/amazon/system/drawing/Color;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    new-instance v2, Lcom/amazon/system/drawing/Color;

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->currentColorMode:Lcom/amazon/kcp/reader/models/ColorMode;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/ColorMode;->getBackgroundColor()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/amazon/system/drawing/Color;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V

    .line 514
    :cond_1
    return-void
.end method

.method public setColumnNumber(I)V
    .locals 0
    .parameter "columns"

    .prologue
    .line 533
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .parameter "newFontSizeInPoint"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->setFontSize(I)V

    .line 522
    return-void
.end method

.method public setGutterWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 538
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 1
    .parameter "defaultLineSpacing"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->setLineSpacing(I)V

    .line 528
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 205
    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->width:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->height:I

    if-ne p2, v1, :cond_0

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->width:I

    .line 211
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->height:I

    .line 213
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->setSize(II)V

    .line 217
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    .line 218
    .local v0, state:Lcom/amazon/kcp/reader/models/internal/TPZBookState;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->invalidate()V

    .line 219
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getNextPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->invalidate()V

    .line 220
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getPreviousPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->invalidate()V

    goto :goto_0
.end method
