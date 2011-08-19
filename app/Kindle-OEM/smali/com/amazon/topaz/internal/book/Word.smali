.class public final Lcom/amazon/topaz/internal/book/Word;
.super Lcom/amazon/topaz/internal/book/Drawable;
.source "Word.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/Word$1;,
        Lcom/amazon/topaz/internal/book/Word$Clear;,
        Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;,
        Lcom/amazon/topaz/internal/book/Word$Builder;
    }
.end annotation


# instance fields
.field private bounds_:Lcom/amazon/system/drawing/Rectangle;

.field private clearGlyphs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private clearRect_:Lcom/amazon/system/drawing/Rectangle;

.field private clears_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/book/Word$Clear;",
            ">;"
        }
    .end annotation
.end field

.field private comesFrom_:Lcom/amazon/topaz/internal/book/Word;

.field private continued_:Lcom/amazon/topaz/internal/book/Word;

.field private final glommedAltTextIDs:[I

.field private final glommedShWidths:[I

.field private glommed_:Lcom/amazon/topaz/internal/book/Word;

.field private final glyphs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;",
            ">;"
        }
    .end annotation
.end field

.field private final isForeign_:Z

.field private stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;


# direct methods
.method private constructor <init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/system/drawing/Rectangle;[I[ILcom/amazon/topaz/internal/book/PageParser$WordStemProvider;Z)V
    .locals 8
    .parameter "pageNum"
    .parameter "id"
    .parameter "baseline"
    .parameter "altTextID"
    .parameter
    .parameter
    .parameter "clearRect"
    .parameter "glommedShWidths"
    .parameter "glommedAltTextIDs"
    .parameter "stemProvider"
    .parameter "isForeign"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/system/drawing/Rectangle;",
            "[I[I",
            "Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p5, glyphs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;>;"
    .local p6, clearGlyphs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v5}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/amazon/topaz/internal/book/Drawable;-><init>(IILcom/amazon/system/drawing/Rectangle;II)V

    .line 239
    move/from16 v0, p11

    move-object v1, p0

    iput-boolean v0, v1, Lcom/amazon/topaz/internal/book/Word;->isForeign_:Z

    .line 241
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    .line 243
    iput-object p6, p0, Lcom/amazon/topaz/internal/book/Word;->clearGlyphs_:Ljava/util/List;

    .line 244
    iput-object p7, p0, Lcom/amazon/topaz/internal/book/Word;->clearRect_:Lcom/amazon/system/drawing/Rectangle;

    .line 245
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/book/Word;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;

    .line 246
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/book/Word;->glommedShWidths:[I

    .line 247
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/topaz/internal/book/Word;->glommedAltTextIDs:[I

    .line 248
    return-void
.end method

.method synthetic constructor <init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/system/drawing/Rectangle;[I[ILcom/amazon/topaz/internal/book/PageParser$WordStemProvider;ZLcom/amazon/topaz/internal/book/Word$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p11}, Lcom/amazon/topaz/internal/book/Word;-><init>(IIIILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/amazon/system/drawing/Rectangle;[I[ILcom/amazon/topaz/internal/book/PageParser$WordStemProvider;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/internal/book/Word;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/internal/book/Word;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glommedShWidths:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/topaz/internal/book/Word;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glommedAltTextIDs:[I

    return-object v0
.end method

.method private computeClears()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 391
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->clears_:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->clearGlyphs_:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->clearGlyphs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Word;->clearGlyphs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->clears_:Ljava/util/List;

    .line 395
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->clearGlyphs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 400
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    .line 401
    new-instance v3, Lcom/amazon/topaz/internal/book/Word$Clear;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->clearRect_:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v0, v4}, Lcom/amazon/system/drawing/Rectangle;->union(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Lcom/amazon/topaz/internal/book/Word$Clear;-><init>(ILcom/amazon/system/drawing/Rectangle;)V

    .line 402
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->clears_:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    :cond_0
    iput-object v5, p0, Lcom/amazon/topaz/internal/book/Word;->clearGlyphs_:Ljava/util/List;

    .line 406
    iput-object v5, p0, Lcom/amazon/topaz/internal/book/Word;->clearRect_:Lcom/amazon/system/drawing/Rectangle;

    .line 408
    :cond_1
    return-void
.end method

.method private dehyphen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->getStem()Lcom/amazon/topaz/internal/book/Word;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Word;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;->getShWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/topaz/internal/book/Word;->continued(Lcom/amazon/topaz/internal/book/Word;I)V

    .line 462
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->stemProvider:Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;

    .line 464
    :cond_0
    return-void
.end method

.method private glom(Lcom/amazon/topaz/internal/book/Word;I)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 471
    const/4 v2, 0x0

    .line 473
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/Word;->glommed_:Lcom/amazon/topaz/internal/book/Word;

    if-nez v3, :cond_2

    .line 476
    new-instance v3, Lcom/amazon/topaz/internal/book/Word$Builder;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->getAltTextID()I

    move-result v4

    invoke-direct {v3, p0, p2, v4}, Lcom/amazon/topaz/internal/book/Word$Builder;-><init>(Lcom/amazon/topaz/internal/book/Word;II)V

    .line 479
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p1, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/amazon/topaz/internal/book/Word$Builder;->reserveGlyphSpace(I)Lcom/amazon/topaz/internal/book/Word$Builder;

    .line 482
    if-eqz p2, :cond_6

    .line 484
    const/4 v2, 0x1

    .line 485
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 489
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    iget v5, v0, Lcom/amazon/system/drawing/Rectangle;->x:I

    add-int/2addr v5, p2

    iget v6, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v7, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int/2addr v7, p2

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    move-object v0, v4

    .line 506
    :goto_0
    iput p2, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    move-object v12, v3

    move v3, v2

    move-object v2, v12

    .line 515
    :goto_1
    invoke-static {v1}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->x2(Lcom/amazon/system/drawing/Rectangle;)I

    move-result v4

    .line 516
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 519
    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBaseline()I

    move-result v6

    add-int/2addr v1, v6

    .line 521
    sub-int/2addr v4, v5

    .line 522
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Word;->getBaseline()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v5, v1, v5

    .line 526
    iget-object v6, p1, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 527
    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 528
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    .line 529
    new-instance v7, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    iget-object v8, p1, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->glyph:Lcom/amazon/topaz/internal/book/Glyph;

    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->access$500(Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;)I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {p1}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->access$600(Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;)I

    move-result v10

    add-int/2addr v10, v5

    const/4 v11, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;-><init>(Lcom/amazon/topaz/internal/book/Glyph;IILcom/amazon/topaz/internal/book/Word$1;)V

    invoke-virtual {v2, v7}, Lcom/amazon/topaz/internal/book/Word$Builder;->addGlyph(Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;)Lcom/amazon/topaz/internal/book/Word$Builder;

    .line 530
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Word$Builder;->numGlyphs()I

    move-result v7

    if-eqz v7, :cond_0

    .line 532
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Word$Builder;->numGlyphs()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    .line 534
    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Word$Builder;->setClearRect(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/topaz/internal/book/Word$Builder;

    .line 536
    const/4 v7, 0x0

    .line 539
    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/book/Word$Builder;->addClear(I)Lcom/amazon/topaz/internal/book/Word$Builder;

    move v3, v7

    goto :goto_2

    .line 496
    :cond_1
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 497
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 498
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 499
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    .line 500
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v7, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-le v6, v7, :cond_4

    .line 501
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    move-object v0, v4

    :goto_4
    move-object v4, v0

    .line 502
    goto :goto_3

    .line 511
    :cond_2
    new-instance v3, Lcom/amazon/topaz/internal/book/Word$Builder;

    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->glommed_:Lcom/amazon/topaz/internal/book/Word;

    invoke-direct {v3, v4}, Lcom/amazon/topaz/internal/book/Word$Builder;-><init>(Lcom/amazon/topaz/internal/book/Word;)V

    move-object v12, v2

    move-object v2, v3

    move v3, v0

    move-object v0, v12

    goto/16 :goto_1

    .line 543
    :cond_3
    invoke-virtual {v2, v1}, Lcom/amazon/topaz/internal/book/Word$Builder;->setBaseline(I)Lcom/amazon/topaz/internal/book/Drawable$Builder;

    .line 545
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/book/Word$Builder;->build()Lcom/amazon/topaz/internal/book/Drawable;

    move-result-object p1

    check-cast p1, Lcom/amazon/topaz/internal/book/Word;

    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Word;->glommed_:Lcom/amazon/topaz/internal/book/Word;

    .line 546
    return-void

    :cond_4
    move-object v0, v4

    goto :goto_4

    :cond_5
    move-object v0, v4

    goto/16 :goto_0

    :cond_6
    move-object v12, v2

    move-object v2, v3

    move v3, v0

    move-object v0, v12

    goto/16 :goto_1
.end method


# virtual methods
.method public comesFrom()Lcom/amazon/topaz/internal/book/Word;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->comesFrom_:Lcom/amazon/topaz/internal/book/Word;

    return-object v0
.end method

.method public continued()Lcom/amazon/topaz/internal/book/Word;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Word;->dehyphen()V

    .line 449
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->continued_:Lcom/amazon/topaz/internal/book/Word;

    return-object v0
.end method

.method continued(Lcom/amazon/topaz/internal/book/Word;I)V
    .locals 1
    .parameter "tgt"
    .parameter "shWidth"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/Word;->continued_:Lcom/amazon/topaz/internal/book/Word;

    .line 320
    if-eqz p1, :cond_0

    .line 322
    iput-object p0, p1, Lcom/amazon/topaz/internal/book/Word;->comesFrom_:Lcom/amazon/topaz/internal/book/Word;

    .line 326
    :cond_0
    move-object v0, p0

    .line 327
    .local v0, where:Lcom/amazon/topaz/internal/book/Word;
    :goto_0
    if-eqz v0, :cond_1

    .line 328
    invoke-direct {v0, p1, p2}, Lcom/amazon/topaz/internal/book/Word;->glom(Lcom/amazon/topaz/internal/book/Word;I)V

    .line 329
    iget-object v0, v0, Lcom/amazon/topaz/internal/book/Word;->comesFrom_:Lcom/amazon/topaz/internal/book/Word;

    goto :goto_0

    .line 331
    :cond_1
    return-void
.end method

.method public draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V
    .locals 11
    .parameter "c"
    .parameter "tgt"

    .prologue
    const/4 v9, 0x0

    .line 346
    iget v7, p2, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    iget v8, v8, Lcom/amazon/system/drawing/Rectangle;->width:I

    if-ne v7, v8, :cond_0

    iget v7, p2, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    iget v8, v8, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-eq v7, v8, :cond_3

    :cond_0
    const/4 v7, 0x1

    move v6, v7

    .line 348
    .local v6, zoom:Z
    :goto_0
    new-instance v4, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v4, v9, v9, v9, v9}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 349
    .local v4, ofs:Lcom/amazon/system/drawing/Rectangle;
    if-nez v6, :cond_1

    .line 350
    iget v7, p2, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    iget v8, v8, Lcom/amazon/system/drawing/Rectangle;->x:I

    sub-int/2addr v7, v8

    iput v7, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 351
    iget v7, p2, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    iget v8, v8, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int/2addr v7, v8

    iput v7, v4, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Word;->computeClears()V

    .line 355
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    .line 356
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/Word;->clears_:Ljava/util/List;

    if-eqz v7, :cond_5

    .line 358
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/Word;->clears_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 359
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/Word;->clears_:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Word$Clear;

    .line 361
    .local v0, clear:Lcom/amazon/topaz/internal/book/Word$Clear;
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/Word;->clears_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    iget v7, v0, Lcom/amazon/topaz/internal/book/Word$Clear;->glyphNum:I

    if-ne v7, v2, :cond_2

    .line 363
    if-eqz v6, :cond_4

    .line 364
    iget-object v7, v0, Lcom/amazon/topaz/internal/book/Word$Clear;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    invoke-static {v7, v8, p2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/amazon/topaz/internal/drawing/Canvas;->clearRect(Lcom/amazon/system/drawing/Rectangle;)V

    .line 358
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0           #clear:Lcom/amazon/topaz/internal/book/Word$Clear;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #ofs:Lcom/amazon/system/drawing/Rectangle;
    .end local v6           #zoom:Z
    :cond_3
    move v6, v9

    .line 346
    goto :goto_0

    .line 366
    .restart local v0       #clear:Lcom/amazon/topaz/internal/book/Word$Clear;
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #ofs:Lcom/amazon/system/drawing/Rectangle;
    .restart local v6       #zoom:Z
    :cond_4
    iget-object v7, v0, Lcom/amazon/topaz/internal/book/Word$Clear;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-static {v7, v4}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->sum(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/amazon/topaz/internal/drawing/Canvas;->clearRect(Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_3

    .line 372
    .end local v0           #clear:Lcom/amazon/topaz/internal/book/Word$Clear;
    .end local v3           #j:I
    :cond_5
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    .line 373
    .local v5, positionedGlyph:Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;
    if-eqz v6, :cond_6

    .line 374
    iget-object v7, v5, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->glyph:Lcom/amazon/topaz/internal/book/Glyph;

    invoke-interface {v7}, Lcom/amazon/topaz/internal/book/Glyph;->getImage()Lcom/amazon/topaz/internal/book/IImage;

    move-result-object v7

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v9

    invoke-static {v8, v9, p2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/topaz/internal/book/IImage;Lcom/amazon/system/drawing/Rectangle;)V

    .line 355
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 376
    :cond_6
    iget-object v7, v5, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->glyph:Lcom/amazon/topaz/internal/book/Glyph;

    invoke-interface {v7}, Lcom/amazon/topaz/internal/book/Glyph;->getImage()Lcom/amazon/topaz/internal/book/IImage;

    move-result-object v7

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->sum(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lcom/amazon/topaz/internal/drawing/Canvas;->draw(Lcom/amazon/topaz/internal/book/IImage;Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_4

    .line 380
    .end local v5           #positionedGlyph:Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;
    :cond_7
    new-instance v7, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v7, p2}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    invoke-virtual {p1, p0, v7}, Lcom/amazon/topaz/internal/drawing/Canvas;->drawMeta(Lcom/amazon/topaz/internal/book/Word;Lcom/amazon/system/drawing/Rectangle;)V

    .line 382
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 383
    .local v1, glyphsIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 384
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    .line 385
    .restart local v5       #positionedGlyph:Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;
    sget-object v7, Lcom/amazon/topaz/internal/TopazStrings;->CANVAS_TYPE_GLYPH:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v9

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v10

    invoke-static {v9, v10, p2}, Lcom/amazon/topaz/internal/drawing/RectangleUtils;->remap(Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v9

    invoke-virtual {p1, v7, v8, v9}, Lcom/amazon/topaz/internal/drawing/Canvas;->drawMeta(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Rectangle;)V

    goto :goto_5

    .line 387
    .end local v5           #positionedGlyph:Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;
    :cond_8
    return-void
.end method

.method public getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;
    .locals 7
    .parameter "dict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 411
    iget-boolean v4, p0, Lcom/amazon/topaz/internal/book/Word;->isForeign_:Z

    if-eqz v4, :cond_0

    .line 412
    sget-object v4, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    .line 443
    :goto_0
    return-object v4

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Word;->dehyphen()V

    .line 415
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->glommed_:Lcom/amazon/topaz/internal/book/Word;

    if-eqz v4, :cond_1

    .line 416
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->glommed_:Lcom/amazon/topaz/internal/book/Word;

    invoke-virtual {v4, p1}, Lcom/amazon/topaz/internal/book/Word;->getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 419
    :cond_1
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->glommedAltTextIDs:[I

    if-eqz v4, :cond_4

    .line 422
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->glommedAltTextIDs:[I

    aget v4, v4, v6

    invoke-virtual {p1, v4}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, glomAlt:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->glommedAltTextIDs:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 426
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/Word;->glommedShWidths:[I

    const/4 v5, 0x1

    sub-int v5, v2, v5

    aget v3, v4, v5

    .line 427
    .local v3, shWidth:I
    if-eqz v3, :cond_2

    .line 430
    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 431
    .local v1, hpos:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 432
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 436
    .end local v1           #hpos:I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/topaz/internal/book/Word;->glommedAltTextIDs:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3           #shWidth:I
    :cond_3
    move-object v4, v0

    .line 439
    goto :goto_0

    .line 443
    .end local v0           #glomAlt:Ljava/lang/String;
    .end local v2           #i:I
    :cond_4
    invoke-super {p0, p1}, Lcom/amazon/topaz/internal/book/Drawable;->getAltText(Lcom/amazon/topaz/internal/binxml/Dictionary;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Word;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    .line 306
    :cond_0
    invoke-super {p0}, Lcom/amazon/topaz/internal/book/Drawable;->getBaseline()I

    move-result v0

    .line 308
    if-eqz v0, :cond_1

    .line 310
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/Word;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int/2addr v0, v1

    .line 313
    :cond_1
    return v0
.end method

.method public getBounds()Lcom/amazon/system/drawing/Rectangle;
    .locals 14

    .prologue
    .line 252
    iget-object v11, p0, Lcom/amazon/topaz/internal/book/Word;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    if-nez v11, :cond_5

    .line 256
    const v7, 0x7fffffff

    .line 257
    .local v7, minX:I
    const v8, 0x7fffffff

    .line 258
    .local v8, minY:I
    const/high16 v5, -0x8000

    .line 259
    .local v5, maxX:I
    const/high16 v6, -0x8000

    .line 260
    .local v6, maxY:I
    iget-object v11, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 261
    .local v4, glyphsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 263
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 265
    .local v10, next:Ljava/lang/Object;
    move-object v0, v10

    check-cast v0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    move-object v9, v0

    .line 267
    .local v9, newGlyph:Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;
    invoke-virtual {v9}, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v1

    .line 268
    .local v1, glyphBounds:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v1}, Lcom/amazon/system/drawing/Rectangle;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 270
    iget v11, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-ge v11, v7, :cond_1

    .line 272
    iget v7, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 274
    :cond_1
    iget v11, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-ge v11, v8, :cond_2

    .line 276
    iget v8, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 279
    :cond_2
    iget v11, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v12, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int v2, v11, v12

    .line 280
    .local v2, glyphMaxX:I
    iget v11, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v12, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int v3, v11, v12

    .line 282
    .local v3, glyphMaxY:I
    if-le v2, v5, :cond_3

    .line 284
    move v5, v2

    .line 286
    :cond_3
    if-le v3, v6, :cond_0

    .line 288
    move v6, v3

    goto :goto_0

    .line 293
    .end local v1           #glyphBounds:Lcom/amazon/system/drawing/Rectangle;
    .end local v2           #glyphMaxX:I
    .end local v3           #glyphMaxY:I
    .end local v9           #newGlyph:Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;
    .end local v10           #next:Ljava/lang/Object;
    :cond_4
    new-instance v11, Lcom/amazon/system/drawing/Rectangle;

    sub-int v12, v5, v7

    sub-int v13, v6, v8

    invoke-direct {v11, v7, v8, v12, v13}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    iput-object v11, p0, Lcom/amazon/topaz/internal/book/Word;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    .line 296
    .end local v4           #glyphsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;>;"
    .end local v5           #maxX:I
    .end local v6           #maxY:I
    .end local v7           #minX:I
    .end local v8           #minY:I
    :cond_5
    new-instance v11, Lcom/amazon/system/drawing/Rectangle;

    iget-object v12, p0, Lcom/amazon/topaz/internal/book/Word;->bounds_:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v11, v12}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    return-object v11
.end method

.method public getNthGlyph(I)Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;
    .locals 1
    .parameter "n"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/book/Word$PositionedGlyph;

    return-object p0
.end method

.method public getNumGlyphs()I
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glyphs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public glommed()Lcom/amazon/topaz/internal/book/Word;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/Word;->dehyphen()V

    .line 454
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->glommed_:Lcom/amazon/topaz/internal/book/Word;

    return-object v0
.end method

.method public isForeign()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/amazon/topaz/internal/book/Word;->isForeign_:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/topaz/internal/book/Word;->comesFrom_:Lcom/amazon/topaz/internal/book/Word;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
