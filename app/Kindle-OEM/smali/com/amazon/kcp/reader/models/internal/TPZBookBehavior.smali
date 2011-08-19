.class Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;
.super Ljava/lang/Object;
.source "TPZBookBehavior.java"

# interfaces
.implements Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;


# static fields
.field private static stylesheet:Lcom/amazon/topaz/styles/StyleSheet;


# instance fields
.field private final book:Lcom/amazon/topaz/TPZBook;

.field private currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

.field private final document:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

.field private final recycledOffscreens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/system/drawing/BufferedImageExtended;",
            ">;"
        }
    .end annotation
.end field

.field private final viewer:Lcom/amazon/topaz/Viewer;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;Lcom/amazon/topaz/TPZBook;Lcom/amazon/system/xml/SAXParserFactory;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->document:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    .line 62
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->book:Lcom/amazon/topaz/TPZBook;

    .line 63
    new-instance v0, Lcom/amazon/topaz/Viewer;

    invoke-direct {v0, p2}, Lcom/amazon/topaz/Viewer;-><init>(Lcom/amazon/topaz/TPZBook;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    .line 64
    new-instance v0, Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-direct {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->recycledOffscreens:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    .line 67
    sget-object v0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->stylesheet:Lcom/amazon/topaz/styles/StyleSheet;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 72
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "<stylesheet><style><rule attr=\'min-scale\' value=\'100\' /><rule attr=\'baseline-expand\' value=\'25\'/><rule attr=\'tracking\' value=\'30\' /><rule attr=\'zoomable\' value=\'true\' /></style><style _tag=\'link\'><rule attr=\'display\' value=\'inline\' /></style><style _tag=\'page\'><rule attr=\'display\' value=\'block\' /><rule attr=\'layout\' value=\'reflow\' /></style><style _tag=\'page\' _after_type=\'copyrt\' _after_same_type=\'false\'><rule attr=\'new-page\' value=\'true\'/></style><style _tag=\'page\' type=\'copyrt\' _after_same_type=\'false\'><rule attr=\'new-page\' value=\'true\'/></style><style _tag=\'empty\'><rule attr=\'new-page\' value=\'true\' /></style><style _tag=\'region\'><rule attr=\'display\' value=\'block\' /></style><style type=\'vertical\'><rule attr=\'display\' value=\'block\' /></style><style type=\'suppress\'><rule attr=\'display\' value=\'none\' /></style><style type=\'chapterheading\'><rule attr=\'new-page\' value=\'true\' /><rule attr=\'zoomable\' value=\'false\' /></style><style _tag=\'page\' type=\'fflap\'><rule attr=\'display\' value=\'none\' /></style><style _tag=\'page\' type=\'bflap\'><rule attr=\'display\' value=\'none\' /></style><style _tag=\'page\' type=\'fface\'><rule attr=\'display\' value=\'none\' /></style><style _tag=\'page\' type=\'bface\'><rule attr=\'display\' value=\'none\' /></style><style _tag=\'word\'><rule attr=\'display\' value=\'inline\' /></style><style type=\'packed\'><rule attr=\'///pack\' value=\'condense\' /></style><style type=\'header\'><rule attr=\'display\' value=\'none\' /></style><style type=\'footer\'><rule attr=\'display\' value=\'none\' /></style><style _tag=\'page\' type=\'suppress\'><rule attr=\'display\' value=\'none\' /></style><style _tag=\'page\' type=\'spine\'><rule attr=\'display\' value=\'none\' /></style><style type=\'footnote\'><rule attr=\'display\' value=\'popup\' /></style><style _tag=\'extratokens\'><rule attr=\'display\' value=\'if-relative\' /></style><style _tag=\'word_semantic\' type=\'LOCATION_INFORMATION\'><rule attr=\'display\' value=\'none\' /></style><style _tag=\'_span\'><rule attr=\'display\' value=\'inline\' /></style><style type=\'insert\'><rule attr=\'background\' value=\'220 220 220\' /></style><style type=\'sidebar\'><rule attr=\'display\' value=\'iconify\' /><rule attr=\'icon-image\' value=\'insert\' /></style></stylesheet>"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/amazon/topaz/exception/StyleSheetParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    new-instance v0, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    invoke-direct {v0, v1, p3}, Lcom/amazon/topaz/styles/StyleSheet$Builder;-><init>(Ljava/io/InputStream;Lcom/amazon/system/xml/SAXParserFactory;)V

    invoke-virtual {v0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->build()Lcom/amazon/topaz/styles/StyleSheet;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->stylesheet:Lcom/amazon/topaz/styles/StyleSheet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/amazon/topaz/exception/StyleSheetParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    sget-object v1, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->stylesheet:Lcom/amazon/topaz/styles/StyleSheet;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/Viewer;->setStyleSheet(Lcom/amazon/topaz/styles/StyleSheet;)V

    .line 119
    return-void

    .line 106
    :catch_0
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/amazon/topaz/styles/StyleSheet;->EMPTY:Lcom/amazon/topaz/styles/StyleSheet;

    sput-object v1, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->stylesheet:Lcom/amazon/topaz/styles/StyleSheet;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 111
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0

    .line 111
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 106
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;)Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->document:Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;

    return-object v0
.end method

.method private getCleanOffscreen()Lcom/amazon/system/drawing/BufferedImageExtended;
    .locals 5

    .prologue
    .line 262
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v3}, Lcom/amazon/topaz/Viewer;->getWidth()I

    move-result v2

    .line 263
    .local v2, viewerWidth:I
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v3}, Lcom/amazon/topaz/Viewer;->getHeight()I

    move-result v1

    .line 265
    .local v1, viewerHeight:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->recycledOffscreens:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 267
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->recycledOffscreens:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/BufferedImageExtended;

    .line 269
    .local v0, offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;
    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 273
    :cond_0
    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->dispose()V

    goto :goto_0

    :cond_1
    move-object v3, v0

    .line 281
    .end local v0           #offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;
    :goto_1
    return-object v3

    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v3}, Lcom/amazon/topaz/Viewer;->createScreenBuffer()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v3

    goto :goto_1
.end method

.method private static getDefaultFontSizeInPoint(Lcom/amazon/topaz/TPZBook;)F
    .locals 3
    .parameter "book"

    .prologue
    .line 541
    const-string v1, "fontSize"

    invoke-virtual {p0, v1}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, topazFontSize:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->getScaleFactor()F

    move-result v2

    div-float/2addr v1, v2

    return v1
.end method

.method private static getScaleFactor()F
    .locals 1

    .prologue
    .line 551
    const v0, 0x41092492

    return v0
.end method

.method private renderWithDisplacement(Lcom/amazon/foundation/internal/ICancelRequester;I)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 427
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_6

    .line 429
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v3

    .line 502
    :goto_0
    return v0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->getStartID()I

    move-result v0

    .line 436
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 454
    goto :goto_0

    .line 439
    :pswitch_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    .line 458
    :goto_1
    if-eqz v1, :cond_6

    .line 460
    iget-object v2, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    if-nez v2, :cond_5

    .line 464
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->getCleanOffscreen()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v2

    iput-object v2, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    .line 466
    iget-object v2, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v2}, Lcom/amazon/system/drawing/BufferedImageExtended;->createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v2

    .line 467
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v3}, Lcom/amazon/topaz/Viewer;->getTextColor()Lcom/amazon/system/drawing/Color;

    move-result-object v3

    iget v3, v3, Lcom/amazon/system/drawing/Color;->color:I

    invoke-interface {v2, v3}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 468
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v3}, Lcom/amazon/topaz/Viewer;->getBackgroundColor()Lcom/amazon/system/drawing/Color;

    move-result-object v3

    iget v3, v3, Lcom/amazon/system/drawing/Color;->color:I

    invoke-interface {v2, v3}, Lcom/amazon/system/drawing/GraphicsExtended;->setBackground(I)V

    .line 469
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v3, v2, p1}, Lcom/amazon/topaz/Viewer;->render(Lcom/amazon/system/drawing/GraphicsExtended;Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v2

    .line 471
    if-nez v2, :cond_4

    .line 475
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->recycledOffscreens:Ljava/util/List;

    iget-object v4, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    iput-object v5, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    :goto_2
    move v1, v2

    .line 493
    :goto_3
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, -0x2

    if-ne p2, v2, :cond_3

    .line 495
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/Viewer;->setStartID(I)V

    :cond_3
    move v0, v1

    .line 498
    goto :goto_0

    .line 442
    :pswitch_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v1, p1}, Lcom/amazon/topaz/Viewer;->nextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 444
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getNextPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    goto :goto_1

    .line 448
    :pswitch_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v1, p1}, Lcom/amazon/topaz/Viewer;->prevPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 450
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getPreviousPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v1

    goto :goto_1

    .line 481
    :cond_4
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    new-instance v4, Lcom/amazon/foundation/internal/SimpleCanceler;

    invoke-direct {v4}, Lcom/amazon/foundation/internal/SimpleCanceler;-><init>()V

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/Viewer;->getLines(Lcom/amazon/foundation/internal/ICancelRequester;)Ljava/util/List;

    move-result-object v3

    .line 483
    const/16 v4, 0x8

    const/4 v5, 0x4

    invoke-virtual {v1, v3, v4, v5}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->updatePositions(Ljava/util/List;II)V

    goto :goto_2

    :cond_5
    move v1, v3

    .line 490
    goto :goto_3

    :cond_6
    move v0, v2

    .line 502
    goto/16 :goto_0

    :cond_7
    move-object v1, v5

    goto :goto_1

    .line 436
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public executeActiveArea(Ljava/lang/Object;Lcom/amazon/foundation/internal/ICancelRequester;)Ljava/lang/String;
    .locals 4
    .parameter "o"
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-interface {p2}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 509
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    move-object v1, v0

    .line 511
    .local v1, activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    iget v2, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 513
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v2}, Lcom/amazon/topaz/Viewer;->pushLocation()V

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 517
    iget-object v2, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->callback:Lcom/amazon/topaz/Callback;

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/Callback;->run(Lcom/amazon/topaz/Viewer;)Ljava/lang/String;

    move-result-object v2

    .line 519
    .end local v1           #activeArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->getStartID()I

    move-result v0

    return v0
.end method

.method public getFontSize()I
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->book:Lcom/amazon/topaz/TPZBook;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->getDefaultFontSizeInPoint(Lcom/amazon/topaz/TPZBook;)F

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v1}, Lcom/amazon/topaz/Viewer;->getZoom()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getPositionFromLocation(I)I
    .locals 1
    .parameter "location"

    .prologue
    .line 214
    invoke-static {p1}, Lcom/amazon/kcp/reader/models/internal/CTPZUserLocation;->getPositionFromAmznUserLocation(I)I

    move-result v0

    return v0
.end method

.method public getState(Lcom/amazon/foundation/internal/ICancelRequester;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;
    .locals 2
    .parameter "cancelRequester"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    .line 221
    .local v0, toReturn:Lcom/amazon/kcp/reader/models/internal/TPZBookState;
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->getFontSize()I

    move-result v1

    iput v1, v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->fontSize:I

    .line 222
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->position:I

    .line 223
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->isBackAvailable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->backAvailable:Z

    .line 227
    new-instance v1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;-><init>(Lcom/amazon/kcp/reader/models/internal/TPZBookState;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    .line 229
    return-object v0
.end method

.method public goBack(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 2
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v1}, Lcom/amazon/topaz/Viewer;->goBack()Z

    move-result v0

    .line 289
    .local v0, retval:Z
    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    :cond_0
    move v1, v0

    .line 296
    .end local v0           #retval:Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public gotoPosition(IZLcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "position"
    .parameter "saveLocation"
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-interface {p3}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    if-eqz p2, :cond_0

    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->pushLocation()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/Viewer;->setStartID(I)V

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 310
    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gotoStartReadingPosition(ZLcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "saveLocation"
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-interface {p2}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    if-eqz p1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->pushLocation()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->goToStartReadingLocation()V

    .line 326
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 327
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gotoTOC(ZLcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "saveLocation"
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-interface {p2}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->pushLocation()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->goToTableOfContents()V

    .line 343
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 344
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBackAvailable()Z
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->isLocationStackEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 358
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/Viewer;->nextLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method

.method public nextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->moveToPrerenderedNextPage()V

    .line 364
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/Viewer;->nextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method

.method public preRenderNextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->renderWithDisplacement(Lcom/amazon/foundation/internal/ICancelRequester;I)Z

    move-result v0

    return v0
.end method

.method public preRenderPreviousPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 374
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->renderWithDisplacement(Lcom/amazon/foundation/internal/ICancelRequester;I)Z

    move-result v0

    return v0
.end method

.method public prevLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/Viewer;->prevLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method

.method public prevPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getCurrentPage()Lcom/amazon/kcp/reader/models/internal/CTPZPage;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v2}, Lcom/amazon/topaz/Viewer;->getStartID()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-rendered curr page (before flipping backwards) starts at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but Topaz library\'s location is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v1}, Lcom/amazon/topaz/Viewer;->getStartID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Clearing cached page."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clearCurrentPage()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->moveToPrerenderedPrevPage()V

    .line 395
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/Viewer;->prevPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    return v0
.end method

.method public recycleState(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 240
    check-cast p1, Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->getOffscreensToRecycle()Ljava/util/List;

    move-result-object v1

    move v2, v6

    .line 242
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 244
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/system/drawing/BufferedImageExtended;

    .line 245
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v3

    .line 248
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v4}, Lcom/amazon/topaz/Viewer;->getTextColor()Lcom/amazon/system/drawing/Color;

    move-result-object v4

    iget v4, v4, Lcom/amazon/system/drawing/Color;->color:I

    invoke-interface {v3, v4}, Lcom/amazon/system/drawing/GraphicsExtended;->setARGBColor(I)V

    .line 249
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v4}, Lcom/amazon/topaz/Viewer;->getBackgroundColor()Lcom/amazon/system/drawing/Color;

    move-result-object v4

    iget v4, v4, Lcom/amazon/system/drawing/Color;->color:I

    invoke-interface {v3, v4}, Lcom/amazon/system/drawing/GraphicsExtended;->setBackground(I)V

    .line 250
    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getWidth()I

    move-result v4

    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->getHeight()I

    move-result v5

    invoke-interface {v3, v6, v6, v4, v5}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    .line 253
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->recycledOffscreens:Ljava/util/List;

    monitor-enter v3

    .line 255
    :try_start_0
    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->recycledOffscreens:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    monitor-exit v3

    .line 242
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 258
    :cond_1
    return-void
.end method

.method public refresh(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"

    .prologue
    .line 524
    invoke-interface {p1}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 527
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 529
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public render(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 2
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->renderWithDisplacement(Lcom/amazon/foundation/internal/ICancelRequester;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 7
    .parameter "query"
    .parameter "resultCallback"
    .parameter "statusTracker"
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-interface {p4}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    new-instance v6, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior$1;

    invoke-direct {v6, p0}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior$1;-><init>(Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;)V

    .line 410
    .local v6, gotoResultExecutor:Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;
    new-instance v0, Lcom/amazon/topaz/Searcher;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->book:Lcom/amazon/topaz/TPZBook;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/topaz/Searcher;-><init>(Ljava/lang/String;Lcom/amazon/topaz/TPZBook;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;)V

    invoke-virtual {v0}, Lcom/amazon/topaz/Searcher;->search()V

    .line 412
    .end local v6           #gotoResultExecutor:Lcom/amazon/topaz/Searcher$GotoSearchResultExecutor;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "textColor"
    .parameter "backgroundColor"
    .parameter "cancelRequester"

    .prologue
    .line 179
    invoke-interface {p3}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->getTextColor()Lcom/amazon/system/drawing/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/system/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->getBackgroundColor()Lcom/amazon/system/drawing/Color;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/system/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/topaz/Viewer;->setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 188
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontSize(ILcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-interface {p2}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    mul-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->book:Lcom/amazon/topaz/TPZBook;

    invoke-static {v1}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->getDefaultFontSizeInPoint(Lcom/amazon/topaz/TPZBook;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 134
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v1}, Lcom/amazon/topaz/Viewer;->getZoom()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/Viewer;->setZoom(I)V
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 152
    const/4 v0, 0x1

    .line 155
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setLineSpacing(ILcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "newSpacing"
    .parameter "cancelRequester"

    .prologue
    .line 163
    invoke-interface {p2}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0}, Lcom/amazon/topaz/Viewer;->getLineSpacing()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/Viewer;->setLineSpacing(I)V

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 170
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(IILcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "newWidth"
    .parameter "newHeight"
    .parameter "cancelRequester"

    .prologue
    .line 197
    invoke-interface {p3}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->viewer:Lcom/amazon/topaz/Viewer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/topaz/Viewer;->resize(II)V

    .line 200
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;->currentState:Lcom/amazon/kcp/reader/models/internal/TPZBookState;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/TPZBookState;->clear()V

    .line 201
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
