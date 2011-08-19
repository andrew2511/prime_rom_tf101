.class public Lcom/mobipocket/common/library/reader/BookManager;
.super Ljava/lang/Object;
.source "BookManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/library/reader/BookManager$1;,
        Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;
    }
.end annotation


# static fields
.field public static final ST_AUTHOR:I = 0x1

.field public static final ST_RECENT:I = 0x2

.field public static final ST_SMART_TITLE:I = 0x3

.field public static final ST_TITLE:I


# instance fields
.field private _cache:Lcom/mobipocket/common/library/reader/BookItemCacheHelper;

.field public final bookIndexing:Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;

.field private dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

.field private pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/filesystem/PDBFactory;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    .line 75
    new-instance v0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;-><init>(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/BookManager$1;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager;->bookIndexing:Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;

    .line 77
    new-instance v0, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager;->_cache:Lcom/mobipocket/common/library/reader/BookItemCacheHelper;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/SearchEvents;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/security/Security;II)Lcom/mobipocket/common/library/reader/bookreader/EBook;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/mobipocket/common/library/reader/BookManager;->initBook(Lcom/mobipocket/common/library/reader/SearchEvents;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/security/Security;II)Lcom/mobipocket/common/library/reader/bookreader/EBook;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/bookreader/EBook;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookManager;->passHeader(Lcom/mobipocket/common/library/reader/bookreader/EBook;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mobipocket/common/library/reader/BookManager;)Lcom/mobipocket/common/filesystem/PDBFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    return-object v0
.end method

.method private initBook(Lcom/mobipocket/common/library/reader/SearchEvents;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/security/Security;II)Lcom/mobipocket/common/library/reader/bookreader/EBook;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 336
    if-lez p5, :cond_0

    if-lez p6, :cond_0

    if-nez p3, :cond_1

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fontFactory==null or Invalid width("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") or height("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "):must be > 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-interface {p1, v4}, Lcom/mobipocket/common/library/reader/SearchEvents;->close(Z)V

    move-object v0, v7

    .line 370
    :goto_0
    return-object v0

    .line 344
    :cond_1
    new-instance v6, Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {p2}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-direct {v6, v0, v1, p4}, Lcom/mobipocket/common/library/reader/bookreader/EBook;-><init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;Lcom/amazon/system/security/Security;)V

    .line 346
    invoke-static {}, Lcom/mobipocket/common/library/PersistentSetting;->theOne()Lcom/mobipocket/common/library/PersistentSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/PersistentSetting;->getBookViewSettings()Lcom/mobipocket/common/library/reader/BookViewSettings;

    move-result-object v0

    .line 347
    if-nez v0, :cond_2

    .line 349
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewSettings;

    invoke-direct {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;-><init>()V

    .line 351
    :cond_2
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 353
    invoke-interface {p3}, Lcom/amazon/system/drawing/FontFactory;->getDefaultFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultFontName(Ljava/lang/String;)V

    .line 355
    :cond_3
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontSize()I

    move-result v1

    if-gtz v1, :cond_4

    .line 357
    invoke-interface {p3}, Lcom/amazon/system/drawing/FontFactory;->getDefaultFontSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewSettings;->setDefaultFontSize(I)V

    .line 359
    :cond_4
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->getDefaultFontSize()I

    move-result v2

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewSettings;->isFontAlwaysBold()Z

    move-result v3

    move-object v0, p3

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/amazon/system/drawing/FontFactory;->getFont(Ljava/lang/String;IZZZ)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v1

    if-gtz v1, :cond_5

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid font size in the settings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    invoke-interface {p1, v4}, Lcom/mobipocket/common/library/reader/SearchEvents;->close(Z)V

    move-object v0, v7

    .line 364
    goto :goto_0

    .line 366
    :cond_5
    invoke-interface {v0}, Lcom/amazon/system/drawing/Font;->getHeight()I

    move-result v0

    invoke-virtual {v6, p5, p6, v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->setAverageCharPerPage(III)V

    .line 369
    iget-object v0, v6, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v4, v0}, Lcom/mobipocket/common/library/reader/SearchEvents;->init(II)V

    move-object v0, v6

    .line 370
    goto :goto_0
.end method

.method private listDictionaries()[Lcom/mobipocket/common/library/reader/BookItem;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookManager;->list()[Lcom/mobipocket/common/library/reader/BookItem;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    return-object v0
.end method

.method private lookupInDic(Ljava/lang/String;Lcom/mobipocket/common/library/reader/BookItem;Ljava/util/Vector;)Z
    .locals 26
    .parameter
    .parameter
    .parameter

    .prologue
    .line 538
    const/4 v5, 0x0

    .line 545
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 548
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    move-object v7, v0

    invoke-interface {v7, v6}, Lcom/mobipocket/common/filesystem/PDBFactory;->getReadPDB(Ljava/lang/String;)Lcom/mobipocket/common/filesystem/ReadPDB;

    move-result-object v18

    .line 550
    if-nez v18, :cond_0

    .line 551
    const/4 v5, 0x0

    .line 603
    :goto_0
    return v5

    .line 553
    :cond_0
    new-instance v19, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;

    invoke-interface/range {v18 .. v18}, Lcom/mobipocket/common/filesystem/ReadPDB;->getHeader()[B

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v18

    move v1, v8

    invoke-interface {v0, v1}, Lcom/mobipocket/common/filesystem/ReadPDB;->getRecord(I)[B

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;-><init>([B[BZ)V

    .line 554
    move-object/from16 v0, v19

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_dic:I

    move v7, v0

    if-gez v7, :cond_1

    .line 556
    invoke-interface/range {v18 .. v18}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V

    .line 557
    const/4 v5, 0x0

    goto :goto_0

    .line 560
    :cond_1
    new-instance v20, Lcom/mobipocket/common/library/reader/indexes/Index;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_dic:I

    move v7, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/library/reader/indexes/Index;-><init>(Lcom/mobipocket/common/filesystem/ReadPDB;I)V

    .line 561
    move-object/from16 v0, v19

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_inflect:I

    move v7, v0

    move-object/from16 v0, v20

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->attachInflectIDX(I)Z

    .line 562
    new-instance v21, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;-><init>(Lcom/mobipocket/common/library/reader/indexes/Index;)V

    .line 564
    const/4 v7, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/library/reader/indexes/Index;->searchCombo(Ljava/lang/String;Ljava/util/Vector;Z)Z

    .line 565
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 567
    const/4 v5, 0x1

    move/from16 v22, v5

    .line 570
    :goto_1
    const/4 v5, 0x0

    move/from16 v23, v5

    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 572
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;->state:Lcom/mobipocket/common/library/reader/indexes/IndexState;

    move-object v5, v0

    .line 576
    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/Index;->getEntryText(Lcom/mobipocket/common/library/reader/indexes/IndexState;)Ljava/lang/String;

    move-result-object v24

    .line 577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/indexes/IndexEntryControl;->linkPosition(Lcom/mobipocket/common/library/reader/indexes/IndexState;)I

    move-result v25

    .line 579
    new-instance v5, Lcom/mobipocket/common/library/reader/IndexDescriptor;

    invoke-virtual/range {v19 .. v19}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->idx_dic:I

    move v8, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_in:I

    move v9, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->dic_lang_ou:I

    move v10, v0

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const/16 v16, 0x0

    invoke-direct/range {v5 .. v16}, Lcom/mobipocket/common/library/reader/IndexDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 591
    new-instance v7, Lcom/mobipocket/common/library/reader/IndexItem;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobipocket/common/library/reader/indexes/IndexStateSearchResult;->matchType:I

    move v8, v0

    move-object v0, v7

    move-object/from16 v1, v24

    move/from16 v2, v25

    move v3, v8

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/common/library/reader/IndexItem;-><init>(Ljava/lang/String;IILcom/mobipocket/common/library/reader/IndexDescriptor;)V

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 570
    add-int/lit8 v5, v23, 0x1

    move/from16 v23, v5

    goto :goto_2

    .line 593
    :cond_2
    invoke-interface/range {v18 .. v18}, Lcom/mobipocket/common/filesystem/ReadPDB;->close()V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/indexes/IndexException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v5, v22

    .line 602
    goto/16 :goto_0

    .line 596
    :catch_0
    move-exception v5

    const/4 v5, 0x0

    .line 602
    goto/16 :goto_0

    .line 600
    :catch_1
    move-exception v5

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    move/from16 v22, v5

    goto/16 :goto_1
.end method

.method private passHeader(Lcom/mobipocket/common/library/reader/bookreader/EBook;)I
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 379
    .line 381
    invoke-static {p1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->isHtml(Lcom/mobipocket/common/library/reader/bookreader/EBook;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    new-instance v0, Lcom/mobipocket/common/parser/TXTEBookParser;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/TXTEBookParser;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    .line 389
    :goto_0
    const/16 v1, 0x64

    .line 392
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_cur_entity()I

    move-result v2

    .line 393
    if-nez v2, :cond_5

    .line 394
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v2

    move v3, v7

    move v4, v2

    move v5, v7

    move v2, v1

    move v1, v7

    .line 396
    :goto_1
    if-nez v3, :cond_3

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    .line 401
    packed-switch v4, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v4, v5

    .line 449
    :goto_2
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->get_next_entity()I

    move-result v5

    move v9, v5

    move v5, v4

    move v4, v9

    goto :goto_1

    .line 385
    :cond_1
    new-instance v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/HTMLEBookParser;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    goto :goto_0

    .line 404
    :pswitch_1
    new-array v4, v8, [Z

    aput-boolean v7, v4, v7

    .line 405
    new-array v6, v8, [Z

    aput-boolean v7, v6, v7

    .line 406
    invoke-virtual {v0, v4, v6}, Lcom/mobipocket/common/parser/EBookParser;->get_tag([Z[Z)S

    move-result v6

    .line 407
    sparse-switch v6, :sswitch_data_0

    .line 433
    if-nez v1, :cond_0

    .line 435
    add-int/lit8 v2, v2, -0x1

    move v4, v5

    goto :goto_2

    .line 412
    :sswitch_0
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookParser;->getPosition()I

    move-result v3

    move v4, v3

    move v3, v8

    .line 414
    goto :goto_2

    .line 418
    :sswitch_1
    aget-boolean v1, v4, v7

    if-nez v1, :cond_2

    move v1, v8

    :goto_3
    move v4, v5

    .line 419
    goto :goto_2

    :cond_2
    move v1, v7

    .line 418
    goto :goto_3

    :sswitch_2
    move v4, v5

    .line 424
    goto :goto_2

    :sswitch_3
    move v4, v5

    .line 429
    goto :goto_2

    .line 443
    :pswitch_2
    if-nez v1, :cond_0

    .line 445
    add-int/lit8 v2, v2, -0x1

    move v4, v5

    goto :goto_2

    .line 451
    :cond_3
    if-nez v3, :cond_4

    .line 453
    new-instance v0, Lcom/mobipocket/common/library/reader/InvalidBookException;

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->BAD_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/InvalidBookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_4
    return v5

    :cond_5
    move v3, v7

    move v4, v2

    move v5, v7

    move v2, v1

    move v1, v7

    goto :goto_1

    .line 401
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x40 -> :sswitch_3
        0x41 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public asyncSearch(Lcom/mobipocket/common/library/reader/SearchEvents;Ljava/lang/String;IIIILcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/security/Security;Lcom/amazon/system/drawing/FontFactory;II)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 158
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 160
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/mobipocket/common/library/reader/SearchEvents;->close(Z)V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    and-int/lit8 v0, p3, 0x10

    or-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p3, 0x8

    or-int v8, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p9

    move-object/from16 v4, p8

    move/from16 v5, p10

    move/from16 v6, p11

    .line 169
    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/BookManager;->initBook(Lcom/mobipocket/common/library/reader/SearchEvents;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/security/Security;II)Lcom/mobipocket/common/library/reader/bookreader/EBook;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_1

    .line 174
    invoke-direct {p0, v1}, Lcom/mobipocket/common/library/reader/BookManager;->passHeader(Lcom/mobipocket/common/library/reader/bookreader/EBook;)I

    move-result v0

    .line 175
    if-ge p4, v0, :cond_4

    move v6, v0

    .line 180
    :goto_1
    new-instance v0, Lcom/mobipocket/common/library/reader/SearchManager;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/SearchManager;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    .line 181
    if-gez p5, :cond_3

    .line 183
    const v2, 0x7fffffff

    move v5, v2

    .line 185
    :goto_2
    const/4 v4, 0x1

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int v7, v1, v2

    move-object v1, p1

    move-object v2, p2

    move v3, v8

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/SearchManager;->search(Lcom/mobipocket/common/library/reader/SearchEvents;Ljava/lang/String;IZIIII)Ljava/lang/Thread;

    goto :goto_0

    :cond_3
    move v5, p5

    goto :goto_2

    :cond_4
    move v6, p4

    goto :goto_1
.end method

.method public delete(Lcom/mobipocket/common/library/reader/BookItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 614
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-interface {v2, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mobipocket/common/filesystem/PDBFactory;->deletePDB(Ljava/lang/String;)Z

    .line 616
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-interface {v1, v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->deletePDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public list()[Lcom/mobipocket/common/library/reader/BookItem;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager;->pdbFactory:Lcom/mobipocket/common/filesystem/PDBFactory;

    invoke-interface {v0}, Lcom/mobipocket/common/filesystem/PDBFactory;->listEBooks()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/library/reader/BookManager;->listFrom(Ljava/util/Vector;)[Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v0

    return-object v0
.end method

.method public listFrom(Ljava/util/Vector;)[Lcom/mobipocket/common/library/reader/BookItem;
    .locals 6
    .parameter "filePaths"

    .prologue
    .line 98
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookManager;->_cache:Lcom/mobipocket/common/library/reader/BookItemCacheHelper;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->loadCache()V

    .line 101
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookManager;->_cache:Lcom/mobipocket/common/library/reader/BookItemCacheHelper;

    invoke-virtual {v4, p1}, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->getUpdatedList(Ljava/util/Vector;)[Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v0

    .line 103
    .local v0, booksList:[Lcom/mobipocket/common/library/reader/BookItem;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 104
    .local v1, dicts:Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 105
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/BookItem;->isDictionary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    aget-object v4, v0, v2

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 111
    .local v3, nbDic:I
    new-array v4, v3, [Lcom/mobipocket/common/library/reader/BookItem;

    iput-object v4, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    .line 112
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    .line 114
    iget-object v5, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/library/reader/BookItem;

    aput-object v4, v5, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    :cond_2
    invoke-static {v0}, Lcom/mobipocket/common/util/Arrays;->sort([Lcom/mobipocket/common/util/Comparable;)V

    .line 119
    iget-object v4, p0, Lcom/mobipocket/common/library/reader/BookManager;->_cache:Lcom/mobipocket/common/library/reader/BookItemCacheHelper;

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/BookItemCacheHelper;->writeCache()V

    .line 120
    return-object v0
.end method

.method public lookup(Ljava/lang/String;I)[Lcom/mobipocket/common/library/reader/IndexItem;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/NoDictionaryException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 471
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 473
    if-nez p1, :cond_0

    .line 475
    const/4 v0, 0x0

    .line 494
    :goto_0
    return-object v0

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookManager;->listDictionaries()[Lcom/mobipocket/common/library/reader/BookItem;

    .line 478
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    array-length v1, v1

    if-gtz v1, :cond_2

    .line 480
    :cond_1
    new-instance v0, Lcom/mobipocket/common/library/reader/NoDictionaryException;

    const-string v1, "No dictionary available"

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/NoDictionaryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, v4

    .line 482
    :goto_1
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 484
    and-int/lit16 v2, p2, 0xff

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookItem;->getDicLanguages()S

    move-result v3

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_3

    if-nez p2, :cond_4

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookManager;->dictionaries:[Lcom/mobipocket/common/library/reader/BookItem;

    aget-object v2, v2, v1

    invoke-direct {p0, p1, v2, v0}, Lcom/mobipocket/common/library/reader/BookManager;->lookupInDic(Ljava/lang/String;Lcom/mobipocket/common/library/reader/BookItem;Ljava/util/Vector;)Z

    .line 482
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 489
    :cond_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mobipocket/common/library/reader/IndexItem;

    move v2, v4

    .line 490
    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 492
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/IndexItem;

    aput-object p0, v1, v2

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move-object v0, v1

    .line 494
    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;ILcom/mobipocket/common/library/reader/BookItem;)[Lcom/mobipocket/common/library/reader/IndexItem;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/NoDictionaryException;
        }
    .end annotation

    .prologue
    .line 510
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 512
    :cond_0
    const/4 v0, 0x0

    .line 527
    :goto_0
    return-object v0

    .line 514
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 521
    invoke-direct {p0, p1, p3, v0}, Lcom/mobipocket/common/library/reader/BookManager;->lookupInDic(Ljava/lang/String;Lcom/mobipocket/common/library/reader/BookItem;Ljava/util/Vector;)Z

    .line 522
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mobipocket/common/library/reader/IndexItem;

    .line 523
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 525
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/library/reader/IndexItem;

    aput-object p0, v1, v2

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 527
    goto :goto_0
.end method
