.class public Lcom/amazon/topaz/internal/book/PageParser;
.super Ljava/lang/Object;
.source "PageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;,
        Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;,
        Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;,
        Lcom/amazon/topaz/internal/book/PageParser$ContainerStemProvider;,
        Lcom/amazon/topaz/internal/book/PageParser$WordStemProvider;
    }
.end annotation


# instance fields
.field private containers:[Ljava/lang/Object;

.field private drawables:[Ljava/lang/Object;

.field private glyphIDCol:I

.field private glyphXCol:I

.field private glyphYCol:I

.field protected glyphs:Lcom/amazon/topaz/internal/binxml/Table;

.field private lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

.field protected layout:Lcom/amazon/topaz/internal/binxml/Tree;

.field private final owner:Lcom/amazon/topaz/TPZBook;

.field private final pageNum:I

.field protected tables:Lcom/amazon/topaz/internal/binxml/Collection;

.field private wordFirstGlyphCol:I

.field private wordOCRCol:I

.field protected words:Lcom/amazon/topaz/internal/binxml/Table;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/TPZBook;ILcom/amazon/topaz/internal/binxml/Deserializer;)V
    .locals 3
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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    .line 168
    new-instance v0, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    invoke-direct {v0, p2, v1}, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    .line 169
    iput p2, p0, Lcom/amazon/topaz/internal/book/PageParser;->pageNum:I

    .line 172
    iput-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    .line 173
    iput-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    .line 174
    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->wordOCRCol:I

    .line 175
    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->wordFirstGlyphCol:I

    .line 176
    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphIDCol:I

    .line 177
    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphXCol:I

    .line 178
    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphYCol:I

    .line 180
    iget-object v0, p1, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 182
    const/16 v1, 0x70

    invoke-virtual {p3, v1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->skipSentinel(I)V

    .line 183
    invoke-virtual {p3}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readString()Ljava/lang/String;

    .line 185
    new-instance v1, Lcom/amazon/topaz/internal/binxml/Collection;

    invoke-direct {v1, v0, p3}, Lcom/amazon/topaz/internal/binxml/Collection;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;Lcom/amazon/topaz/internal/binxml/Deserializer;)V

    iput-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    .line 186
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_WORD:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    .line 187
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_GLYPH:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    .line 189
    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/PageParser;->initCommonColumnIds()V

    .line 191
    new-instance v1, Lcom/amazon/topaz/internal/binxml/Tree;

    invoke-direct {v1, v0, p3}, Lcom/amazon/topaz/internal/binxml/Tree;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;Lcom/amazon/topaz/internal/binxml/Deserializer;)V

    iput-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->layout:Lcom/amazon/topaz/internal/binxml/Tree;

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/topaz/internal/book/PageParser;)Lcom/amazon/topaz/TPZBook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/topaz/internal/book/PageParser;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->containers:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/topaz/internal/book/PageParser;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->pageNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/amazon/topaz/internal/book/PageParser;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->drawables:[Ljava/lang/Object;

    return-object v0
.end method

.method private containsLinkWord(Lcom/amazon/topaz/internal/binxml/Node;)Z
    .locals 11
    .parameter "node"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 275
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v2, v7, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 276
    .local v2, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->numChildren()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_LASTWORD:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v7}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/topaz/internal/binxml/Attrib;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 302
    :goto_0
    return v7

    .line 283
    :cond_0
    iget-object v7, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_FIRSTWORD:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v7}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v3

    .line 284
    .local v3, fw:I
    iget-object v7, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_LASTWORD:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v7}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v5

    .line 285
    .local v5, lw:I
    move v4, v3

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 286
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    iget v8, p0, Lcom/amazon/topaz/internal/book/PageParser;->wordOCRCol:I

    invoke-virtual {v7, v4, v8}, Lcom/amazon/topaz/internal/binxml/Table;->getString(II)Ljava/lang/String;

    move-result-object v6

    .line 287
    .local v6, ocrText:Ljava/lang/String;
    sget-object v7, Lcom/amazon/topaz/internal/TopazStrings;->_LINK_:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v10

    .line 288
    goto :goto_0

    .line 285
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 294
    .end local v6           #ocrText:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getChildren()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 295
    .local v1, childrenIt:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Node;

    .line 297
    .local v0, child:Lcom/amazon/topaz/internal/binxml/Node;
    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/PageParser;->containsLinkWord(Lcom/amazon/topaz/internal/binxml/Node;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v10

    .line 298
    goto :goto_0

    .end local v0           #child:Lcom/amazon/topaz/internal/binxml/Node;
    :cond_4
    move v7, v9

    .line 302
    goto :goto_0
.end method

.method private dehyphen()V
    .locals 4

    .prologue
    .line 538
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v3, v3, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v3, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_DEHYPHEN:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v0

    .line 539
    .local v0, dehyphenTable:Lcom/amazon/topaz/internal/binxml/Table;
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v3, v3, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v3, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_WORDSTEMS:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v1

    .line 540
    .local v1, wordStemsTable:Lcom/amazon/topaz/internal/binxml/Table;
    new-instance v2, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;

    invoke-direct {v2, p0, v0}, Lcom/amazon/topaz/internal/book/PageParser$DehyphenBehavior;-><init>(Lcom/amazon/topaz/internal/book/PageParser;Lcom/amazon/topaz/internal/binxml/Table;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/topaz/internal/book/PageParser;->doContinuation(Lcom/amazon/topaz/internal/binxml/Table;Lcom/amazon/topaz/internal/binxml/Table;Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;)V

    .line 541
    return-void
.end method

.method private doContinuation(Lcom/amazon/topaz/internal/binxml/Table;Lcom/amazon/topaz/internal/binxml/Table;Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;)V
    .locals 10
    .parameter "localTable"
    .parameter "foreignTable"
    .parameter "behavior"

    .prologue
    .line 549
    iget-object v9, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v0, v9, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 551
    .local v0, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Table;->iterator()Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;

    move-result-object v2

    .line 552
    .end local p0
    .local v2, localIterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 553
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 554
    .local v5, row:I
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_ROOTID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v5, v9}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v4

    .line 555
    .local v4, rootID:I
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_STEMPAGE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v5, v9}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v8

    .line 556
    .local v8, stemPageNum:I
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_STEMID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v5, v9}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v7

    .line 558
    .local v7, stemID:I
    invoke-interface {p3, v4}, Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 559
    .local v3, root:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 561
    invoke-interface {p3, v3, v5, v8, v7}, Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;->setContinued(Ljava/lang/Object;III)V

    goto :goto_0

    .line 566
    .end local v3           #root:Ljava/lang/Object;
    .end local v4           #rootID:I
    .end local v5           #row:I
    .end local v7           #stemID:I
    .end local v8           #stemPageNum:I
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/binxml/Table;->iterator()Lcom/amazon/topaz/internal/binxml/Table$TableRowIterator;

    move-result-object v1

    .line 567
    .local v1, foreignIterator:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 568
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 569
    .restart local v5       #row:I
    iget-object v9, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_STEMID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p2, v5, v9}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v7

    .line 570
    .restart local v7       #stemID:I
    invoke-interface {p3, v7}, Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    .line 572
    .local v6, stem:Ljava/lang/Object;
    if-eqz v6, :cond_2

    .line 574
    invoke-interface {p3, v6}, Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;->setIsContinuation(Ljava/lang/Object;)V

    goto :goto_1

    .line 579
    .end local v5           #row:I
    .end local v6           #stem:Ljava/lang/Object;
    .end local v7           #stemID:I
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Table;->clear()V

    .line 580
    invoke-virtual {p2}, Lcom/amazon/topaz/internal/binxml/Table;->clear()V

    .line 581
    return-void
.end method

.method private paraCont()V
    .locals 4

    .prologue
    .line 526
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v3, v3, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v3, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_PARACONT:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v0

    .line 527
    .local v0, paraContTable:Lcom/amazon/topaz/internal/binxml/Table;
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v3, v3, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v3, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_PARASTEMS:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v1

    .line 528
    .local v1, paraStemsTable:Lcom/amazon/topaz/internal/binxml/Table;
    new-instance v2, Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/topaz/internal/book/PageParser$ParaContBehavior;-><init>(Lcom/amazon/topaz/internal/book/PageParser;Lcom/amazon/topaz/internal/book/PageParser$1;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/topaz/internal/book/PageParser;->doContinuation(Lcom/amazon/topaz/internal/binxml/Table;Lcom/amazon/topaz/internal/binxml/Table;Lcom/amazon/topaz/internal/book/PageParser$ContinuationBehavior;)V

    .line 529
    return-void
.end method

.method private parseContainer(Lcom/amazon/topaz/internal/binxml/Node;)Z
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 364
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->containers:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getID()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    move v0, v10

    .line 468
    :goto_0
    return v0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v1, v0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 371
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->numChildren()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_LASTWORD:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_LASTGLYPH:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v11

    .line 374
    goto :goto_0

    .line 377
    :cond_1
    new-instance v2, Lcom/amazon/topaz/internal/book/Container$Builder;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->pageNum:I

    invoke-direct {v2, v0, v3}, Lcom/amazon/topaz/internal/book/Container$Builder;-><init>(Ljava/lang/String;I)V

    .line 381
    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_REGION:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v3

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->TOCENTRY:Ljava/lang/String;

    iget-object v3, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_TYPE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v3}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/topaz/internal/book/PageParser;->containsLinkWord(Lcom/amazon/topaz/internal/binxml/Node;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-virtual {v2, v10}, Lcom/amazon/topaz/internal/book/Container$Builder;->setUnderlined(Z)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 387
    :cond_2
    invoke-static {v2, p1}, Lcom/amazon/topaz/internal/book/PageParser;->setStyle(Lcom/amazon/topaz/internal/book/Container$Builder;Lcom/amazon/topaz/internal/binxml/Node;)V

    .line 389
    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_ID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 391
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Container$Builder;->setID(Ljava/lang/String;)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 393
    :cond_3
    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_STARTID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v0

    .line 394
    if-eqz v0, :cond_4

    .line 395
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    iput v0, v3, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    .line 397
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amazon/topaz/internal/book/Container$Builder;->reserveChildren(I)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 403
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 404
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Node;

    .line 406
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v5

    .line 409
    iget-object v6, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_LB:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v6}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_5

    .line 412
    iget-object v6, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODETYPE_IMAGE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v6}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    .line 413
    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/PageParser;->parseImage(Lcom/amazon/topaz/internal/binxml/Node;)Lcom/amazon/topaz/internal/book/Image;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_5

    .line 415
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 419
    :cond_6
    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/PageParser;->parseContainer(Lcom/amazon/topaz/internal/binxml/Node;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 421
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Node;->getID()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Container$Builder;->addChild(I)Lcom/amazon/topaz/internal/book/Container$Builder;

    goto :goto_1

    .line 429
    :cond_7
    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_FIRSTWORD:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v4

    .line 430
    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_LASTWORD:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v5

    .line 431
    sub-int v0, v5, v4

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Container$Builder;->reserveDrawables(I)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 434
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 435
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 437
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/book/Image;

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Container$Builder;->addImage(Lcom/amazon/topaz/internal/book/Image;)Lcom/amazon/topaz/internal/book/Container$Builder;

    goto :goto_2

    :cond_8
    move v0, v4

    .line 441
    :goto_3
    if-ge v0, v5, :cond_9

    .line 442
    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/PageParser;->parseDrawable(I)V

    .line 443
    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Container$Builder;->addDrawable(I)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 447
    :cond_9
    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_FIRSTGLYPH:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v0

    .line 448
    iget-object v3, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_LASTGLYPH:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v3}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v3

    .line 449
    if-nez v0, :cond_a

    if-eqz v3, :cond_e

    .line 450
    :cond_a
    new-instance v4, Lcom/amazon/topaz/internal/book/Word$Builder;

    iget-object v5, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    invoke-direct {v4, v5}, Lcom/amazon/topaz/internal/book/Word$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V

    .line 451
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/internal/book/Word$Builder;->setAltTextID(I)Lcom/amazon/topaz/internal/book/Drawable$Builder;

    .line 453
    sub-int v5, v3, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/internal/book/Word$Builder;->reserveGlyphSpace(I)Lcom/amazon/topaz/internal/book/Word$Builder;

    .line 454
    :goto_4
    if-ge v0, v3, :cond_c

    .line 455
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v6, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_GLYPHID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v5, v0, v6}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v5

    .line 456
    iget-object v6, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v7, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_SCALE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v6

    if-ltz v6, :cond_b

    iget-object v6, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v7, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_SCALE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v6, v0, v7}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v6

    .line 457
    :goto_5
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v8, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_X:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v7, v0, v8}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v7

    .line 458
    iget-object v8, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v9, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_Y:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v8, v0, v9}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v8

    .line 459
    iget-object v9, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v9, v5, v6}, Lcom/amazon/topaz/TPZBook;->getGlyph(II)Lcom/amazon/topaz/internal/book/Glyph;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/amazon/topaz/internal/book/Word$Builder;->addGlyph(Lcom/amazon/topaz/internal/book/Glyph;II)Lcom/amazon/topaz/internal/book/Word$Builder;

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    move v6, v11

    .line 456
    goto :goto_5

    .line 461
    :cond_c
    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_BL:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 462
    iget-object v0, v1, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_BL:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/amazon/topaz/internal/book/Word$Builder;->setBaseline(I)Lcom/amazon/topaz/internal/book/Drawable$Builder;

    .line 464
    :cond_d
    invoke-virtual {v2, v4}, Lcom/amazon/topaz/internal/book/Container$Builder;->setImplicitDrawable(Lcom/amazon/topaz/internal/book/Drawable$Builder;)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 467
    :cond_e
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->containers:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getID()I

    move-result v1

    aput-object v2, v0, v1

    move v0, v10

    .line 468
    goto/16 :goto_0
.end method

.method private parseDrawable(I)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 208
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->drawables:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    iget v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->wordFirstGlyphCol:I

    invoke-virtual {v0, p1, v1}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v1

    sub-int/2addr v1, v6

    if-ge p1, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->wordFirstGlyphCol:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v1

    .line 222
    :goto_1
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    iget v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->wordOCRCol:I

    invoke-virtual {v2, p1, v3}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v2

    .line 223
    iget-object v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v3, v3, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 226
    if-ne v0, v1, :cond_2

    iget-object v4, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->_LB_:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 227
    new-instance v0, Lcom/amazon/topaz/internal/book/LineBreak$Builder;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/book/LineBreak$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V

    .line 228
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->drawables:[Ljava/lang/Object;

    aput-object v0, v1, p1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v1

    goto :goto_1

    .line 233
    :cond_2
    iget-object v4, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v5, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_LINKID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v4, v5}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v4

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v5, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_LINKID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v4, p1, v5}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v4

    .line 234
    :goto_2
    iget-object v5, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->_LINK_:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v5}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_7

    if-eqz v4, :cond_7

    .line 237
    sget-object v0, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    .line 238
    if-ltz v4, :cond_5

    sub-int v1, v4, v6

    .line 239
    :goto_3
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    iget-object v5, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLENAME_LINKS:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v5}, Lcom/amazon/topaz/internal/binxml/Collection;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Table;

    move-result-object v2

    .line 240
    if-gez v4, :cond_6

    move v5, v6

    .line 241
    :goto_4
    if-lez v4, :cond_3

    .line 242
    iget-object v0, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_TITLE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/topaz/internal/binxml/Table;->getString(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Ljava/lang/String;

    move-result-object v0

    .line 245
    :cond_3
    new-instance v3, Lcom/amazon/topaz/internal/book/Link$Builder;

    iget-object v6, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    invoke-direct {v3, v6, v0, v4}, Lcom/amazon/topaz/internal/book/Link$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->drawables:[Ljava/lang/Object;

    aput-object v3, v0, p1

    .line 247
    invoke-virtual {v3, v5}, Lcom/amazon/topaz/internal/book/Link$Builder;->setClose(Z)V

    .line 248
    new-instance v0, Lcom/amazon/topaz/internal/book/Link$LinkResolver;

    iget-object v4, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    invoke-direct {v0, v4, v2, v1}, Lcom/amazon/topaz/internal/book/Link$LinkResolver;-><init>(Lcom/amazon/topaz/TPZBook;Lcom/amazon/topaz/internal/binxml/Table;I)V

    invoke-virtual {v3, v0}, Lcom/amazon/topaz/internal/book/Link$Builder;->setResolver(Lcom/amazon/topaz/internal/book/Link$LinkResolver;)V

    goto/16 :goto_0

    :cond_4
    move v4, v10

    .line 233
    goto :goto_2

    .line 238
    :cond_5
    neg-int v1, v4

    sub-int/2addr v1, v6

    goto :goto_3

    :cond_6
    move v5, v10

    .line 240
    goto :goto_4

    .line 252
    :cond_7
    new-instance v4, Lcom/amazon/topaz/internal/book/Word$Builder;

    iget-object v5, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    invoke-direct {v4, v5}, Lcom/amazon/topaz/internal/book/Word$Builder;-><init>(Lcom/amazon/topaz/internal/book/Drawable$DrawableId;)V

    .line 253
    invoke-virtual {v4, v2}, Lcom/amazon/topaz/internal/book/Word$Builder;->setAltTextID(I)Lcom/amazon/topaz/internal/book/Drawable$Builder;

    .line 255
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Lcom/amazon/topaz/internal/book/Word$Builder;->reserveGlyphSpace(I)Lcom/amazon/topaz/internal/book/Word$Builder;

    move v2, v0

    .line 256
    :goto_5
    if-ge v2, v1, :cond_9

    .line 257
    iget-object v5, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget v6, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphIDCol:I

    invoke-virtual {v5, v2, v6}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v5

    .line 258
    iget-object v6, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v7, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_SCALE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v6, v7}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v6

    if-ltz v6, :cond_8

    iget-object v6, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v7, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_SCALE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v6, v2, v7}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v6

    .line 260
    :goto_6
    iget-object v7, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget v8, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphXCol:I

    invoke-virtual {v7, v2, v8}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v7

    .line 261
    iget-object v8, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget v9, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphYCol:I

    invoke-virtual {v8, v2, v9}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(II)I

    move-result v8

    .line 262
    iget-object v9, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v9, v5, v6}, Lcom/amazon/topaz/TPZBook;->getGlyph(II)Lcom/amazon/topaz/internal/book/Glyph;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/amazon/topaz/internal/book/Word$Builder;->addGlyph(Lcom/amazon/topaz/internal/book/Glyph;II)Lcom/amazon/topaz/internal/book/Word$Builder;

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    move v6, v10

    .line 258
    goto :goto_6

    .line 266
    :cond_9
    if-ge v0, v1, :cond_a

    .line 267
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v1, v3, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_BL:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/topaz/internal/binxml/Table;->getInt(ILcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v0

    .line 268
    invoke-virtual {v4, v0}, Lcom/amazon/topaz/internal/book/Word$Builder;->setBaseline(I)Lcom/amazon/topaz/internal/book/Drawable$Builder;

    .line 271
    :cond_a
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->drawables:[Ljava/lang/Object;

    aput-object v4, v0, p1

    goto/16 :goto_0
.end method

.method private parseImage(Lcom/amazon/topaz/internal/binxml/Node;)Lcom/amazon/topaz/internal/book/Image;
    .locals 9
    .parameter "node"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    iget v1, v0, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    .line 483
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v6, v0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 484
    .local v6, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    iget-object v0, v6, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_SRC:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 503
    :goto_0
    return-object v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    iget v1, v0, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    .line 490
    iget-object v0, v6, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_SRC:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v5

    .line 492
    .local v5, imageID:I
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    iget-object v0, v6, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_X:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v0

    iget-object v1, v6, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_Y:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v1}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v1

    iget-object v2, v6, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_W:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v2}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v2

    iget-object v7, v6, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_H:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v7}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v7

    invoke-direct {v3, v0, v1, v2, v7}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 496
    .local v3, bounds:Lcom/amazon/system/drawing/Rectangle;
    new-instance v4, Lcom/amazon/topaz/internal/book/PageParser$1;

    invoke-direct {v4, p0, v5}, Lcom/amazon/topaz/internal/book/PageParser$1;-><init>(Lcom/amazon/topaz/internal/book/PageParser;I)V

    .line 503
    .local v4, loader:Lcom/amazon/topaz/internal/book/Image$ImageLoader;
    new-instance v0, Lcom/amazon/topaz/internal/book/Image;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    iget v1, v1, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->pageNum_:I

    iget-object v7, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    iget v2, v7, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    add-int/lit8 v8, v2, 0x1

    iput v8, v7, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    invoke-direct/range {v0 .. v5}, Lcom/amazon/topaz/internal/book/Image;-><init>(IILcom/amazon/system/drawing/Rectangle;Lcom/amazon/topaz/internal/book/Image$ImageLoader;I)V

    goto :goto_0
.end method

.method private static setStyle(Lcom/amazon/topaz/internal/book/Container$Builder;Lcom/amazon/topaz/internal/binxml/Node;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getDictionary()Lcom/amazon/topaz/internal/binxml/Dictionary;

    move-result-object v0

    .line 586
    new-instance v1, Lcom/amazon/topaz/styles/MatchRule$Builder;

    invoke-virtual {p0}, Lcom/amazon/topaz/internal/book/Container$Builder;->getStyleRule()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/styles/MatchRule$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractMatchRule;)V

    .line 587
    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->MATCHRULEKEY_TAG:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_TYPE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v2}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 589
    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->MATCHRULEKEY_TYPE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_TYPE:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v3}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_CLASS:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v2}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 592
    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->MATCHRULEKEY_CLASS:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/binxml/Dictionary;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_CLASS:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/topaz/styles/MatchRule$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/topaz/styles/MatchRule$Builder;->build()Lcom/amazon/topaz/styles/MatchRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/book/Container$Builder;->setStyleRule(Lcom/amazon/topaz/styles/MatchRule;)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 595
    return-void
.end method


# virtual methods
.method public getPage()Lcom/amazon/topaz/internal/book/Page;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->layout:Lcom/amazon/topaz/internal/binxml/Tree;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Tree;->root()Lcom/amazon/topaz/internal/binxml/Node;

    move-result-object v0

    .line 196
    .local v0, pp:Lcom/amazon/topaz/internal/binxml/Node;
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v2, v2, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget-object v2, v2, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_STARTID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v0, v2}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v1

    .line 197
    .local v1, startID:I
    invoke-virtual {p0, v1}, Lcom/amazon/topaz/internal/book/PageParser;->setLastID(I)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/amazon/topaz/internal/book/PageParser;->loadPage(Lcom/amazon/topaz/internal/binxml/Node;)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v2

    return-object v2
.end method

.method protected initCommonColumnIds()V
    .locals 3

    .prologue
    .line 511
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v0, v1, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 512
    .local v0, dict:Lcom/amazon/topaz/internal/binxml/Dictionary;
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_OCRTEXT:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->wordOCRCol:I

    .line 513
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_FIRSTGLYPH:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->wordFirstGlyphCol:I

    .line 514
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_GLYPHID:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphIDCol:I

    .line 515
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_X:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphXCol:I

    .line 516
    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphs:Lcom/amazon/topaz/internal/binxml/Table;

    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->TABLECOL_Y:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/internal/binxml/Table;->getColNum(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->glyphYCol:I

    .line 517
    return-void
.end method

.method protected loadPage(Lcom/amazon/topaz/internal/binxml/Node;)Lcom/amazon/topaz/internal/book/Page;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->owner:Lcom/amazon/topaz/TPZBook;

    iget-object v0, v0, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    .line 320
    const/16 v1, 0xa

    iget-object v2, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_W:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v2}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 321
    const/16 v2, 0xa

    iget-object v0, v0, Lcom/amazon/topaz/internal/binxml/Dictionary;->NODEATTRIB_H:Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-virtual {p1, v0}, Lcom/amazon/topaz/internal/binxml/Node;->get(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)Lcom/amazon/topaz/internal/binxml/Attrib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Attrib;->toInt()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 322
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->layout:Lcom/amazon/topaz/internal/binxml/Tree;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Tree;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->containers:[Ljava/lang/Object;

    .line 323
    iget-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->words:Lcom/amazon/topaz/internal/binxml/Table;

    invoke-virtual {v2}, Lcom/amazon/topaz/internal/binxml/Table;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/amazon/topaz/internal/book/PageParser;->drawables:[Ljava/lang/Object;

    .line 325
    new-instance v2, Lcom/amazon/topaz/internal/book/Page$Builder;

    iget v3, p0, Lcom/amazon/topaz/internal/book/PageParser;->pageNum:I

    iget-object v4, p0, Lcom/amazon/topaz/internal/book/PageParser;->tables:Lcom/amazon/topaz/internal/binxml/Collection;

    invoke-virtual {v4}, Lcom/amazon/topaz/internal/binxml/Collection;->getAllocSize()I

    move-result v4

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/amazon/topaz/internal/book/Page$Builder;-><init>(IIII)V

    .line 326
    invoke-static {v2, p1}, Lcom/amazon/topaz/internal/book/PageParser;->setStyle(Lcom/amazon/topaz/internal/book/Container$Builder;Lcom/amazon/topaz/internal/binxml/Node;)V

    .line 328
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Page$Builder;->reserveDrawables(I)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 330
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Node;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Page$Builder;->reserveChildren(I)Lcom/amazon/topaz/internal/book/Container$Builder;

    .line 333
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/binxml/Node;

    .line 335
    invoke-direct {p0, v0}, Lcom/amazon/topaz/internal/book/PageParser;->parseContainer(Lcom/amazon/topaz/internal/binxml/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/binxml/Node;->getID()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/book/Page$Builder;->addChild(I)Lcom/amazon/topaz/internal/book/Container$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    throw v0

    .line 341
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/PageParser;->paraCont()V

    .line 342
    invoke-direct {p0}, Lcom/amazon/topaz/internal/book/PageParser;->dehyphen()V

    .line 345
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->drawables:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/topaz/internal/book/PageParser;->containers:[Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/amazon/topaz/internal/book/Page$Builder;->build([Ljava/lang/Object;[Ljava/lang/Object;)Lcom/amazon/topaz/internal/book/Container;

    move-result-object p0

    check-cast p0, Lcom/amazon/topaz/internal/book/Page;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 349
    return-object p0
.end method

.method protected setLastID(I)V
    .locals 1
    .parameter "lastID"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/amazon/topaz/internal/book/PageParser;->lastID:Lcom/amazon/topaz/internal/book/Drawable$DrawableId;

    iput p1, v0, Lcom/amazon/topaz/internal/book/Drawable$DrawableId;->val_:I

    .line 599
    return-void
.end method
