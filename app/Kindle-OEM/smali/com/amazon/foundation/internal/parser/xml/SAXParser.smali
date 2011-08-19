.class public Lcom/amazon/foundation/internal/parser/xml/SAXParser;
.super Ljava/lang/Object;
.source "SAXParser.java"

# interfaces
.implements Lcom/amazon/foundation/internal/ICharOutputStream;


# static fields
.field public static final InvalidCharacterInTag:I = 0x3

.field public static final InvalidEntityError:I = 0x7

.field public static final InvalidUTF8Error:I = 0x2

.field public static final NoError:I = 0x0

.field public static final OutOfMemoryError:I = 0x1

.field public static final OutputStreamError:I = 0x9

.field private static final STANDARD_ENTITIES:[C = null

.field private static final StateA:I = 0xa

.field private static final StateAM:I = 0xb

.field private static final StateAMP:I = 0x0

.field private static final StateAP:I = 0xe

.field private static final StateAPO:I = 0xf

.field private static final StateAPOS:I = 0x3

.field private static final StateAmp:I = 0x6

.field private static final StateAttrEq:I = 0x4

.field private static final StateAttrName:I = 0x3

.field private static final StateAttrValue:I = 0x5

.field private static final StateDone:I = 0x13

.field private static final StateG:I = 0xd

.field private static final StateGT:I = 0x2

.field private static final StateIgnoredTag:I = 0x1

.field private static final StateInCData:I = 0x6

.field private static final StateL:I = 0xc

.field private static final StateLT:I = 0x1

.field private static final StateNotParsing:I = 0x7

.field private static final StateNothing:I = 0x0

.field private static final StatePound:I = 0x7

.field private static final StatePoundD:I = 0x8

.field private static final StatePoundX:I = 0x9

.field private static final StateQ:I = 0x10

.field private static final StateQU:I = 0x11

.field private static final StateQUO:I = 0x12

.field private static final StateQUOT:I = 0x4

.field private static final StateStart:I = 0x5

.field private static final StateTagName:I = 0x2

.field public static final UnexpectedEqualSign:I = 0x5

.field public static final UnexpectedQuote:I = 0x6

.field public static final UnfinishedTagError:I = 0x8

.field public static final UnquotedAttributeValue:I = 0x4


# instance fields
.field private concatenated_lex_parts_count:I

.field private el:Lcom/mobipocket/common/parser/EllieLexer;

.field private handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

.field lex_parts:Ljava/util/Vector;

.field private parse_error:I

.field private state:I

.field private tag_is_closing:Z

.field private useful_lex_parts_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->STANDARD_ENTITIES:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x26t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x27t 0x0t
        0x22t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 87
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->tag_is_closing:Z

    .line 91
    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 95
    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    .line 110
    iput-object p1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

    .line 111
    new-instance v0, Lcom/mobipocket/common/parser/EllieLexer;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/EllieLexer;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    .line 113
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    sget-object v1, Lcom/mobipocket/common/parser/LexingTables;->_CXMLLLexerinit:Lcom/mobipocket/common/parser/LexingTables$SLexerInit;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EllieLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    .line 114
    const/4 v0, 0x7

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 115
    return-void
.end method

.method private add_lex_part([CII)Z
    .locals 6
    .parameter "des"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 491
    const/4 v4, 0x1

    .line 492
    .local v4, useful:Z
    const/4 v5, 0x0

    .local v5, trailing_chars_to_remove:I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 494
    invoke-direct/range {v0 .. v5}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->add_lex_part([CIIZI)Z

    move-result v0

    return v0
.end method

.method private add_lex_part([CIIZ)Z
    .locals 6
    .parameter "des"
    .parameter "begin"
    .parameter "end"
    .parameter "useful"

    .prologue
    .line 504
    const/4 v5, 0x0

    .local v5, trailing_chars_to_remove:I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 506
    invoke-direct/range {v0 .. v5}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->add_lex_part([CIIZI)Z

    move-result v0

    return v0
.end method

.method private add_lex_part([CIIZI)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 517
    if-nez p5, :cond_2

    .line 521
    if-le p3, p2, :cond_0

    .line 523
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    sub-int v2, p3, p2

    invoke-direct {v1, p1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 560
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 562
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 567
    return v6

    .line 528
    :cond_2
    sub-int v0, p3, p2

    if-gt v0, p5, :cond_4

    .line 533
    sub-int v0, p3, p2

    sub-int v0, p5, v0

    move v1, v0

    .line 535
    :goto_1
    if-lez v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 539
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 540
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 542
    if-le v2, v1, :cond_3

    .line 544
    iget-object v3, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    sub-int v1, v2, v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {v3, v4, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 548
    :cond_3
    sub-int v0, v1, v2

    .line 549
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    iget-object v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    move v1, v0

    .line 550
    goto :goto_1

    .line 556
    :cond_4
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    sub-int v2, p3, p2

    sub-int/2addr v2, p5

    invoke-direct {v1, p1, p2, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private concat_lex_parts()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 780
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    if-ne v0, v1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 784
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    .line 785
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    move v0, v4

    .line 818
    :goto_0
    return v0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 791
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    move v0, v4

    .line 792
    goto :goto_0

    .line 795
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    iget v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 798
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    :goto_1
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    if-ge v2, v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v0, v2

    .line 805
    :goto_2
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 807
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 810
    :cond_3
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    .line 811
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 813
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    :goto_3
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 815
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 813
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v4

    .line 818
    goto :goto_0
.end method

.method private empty_lex_parts()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 472
    iput v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 473
    iput v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    .line 474
    return-void
.end method

.method private ignore()V
    .locals 2

    .prologue
    .line 733
    const/4 v0, 0x1

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 734
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EllieLexer;->set_global_lex_state(I)V

    .line 735
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->remove_useless_lex_parts()V

    .line 736
    return-void
.end method

.method private parse_entity()Z
    .locals 14

    .prologue
    const/16 v12, 0x3b

    const/4 v11, 0x7

    const/16 v10, 0x30

    const/4 v9, 0x0

    const/16 v8, 0x13

    .line 574
    iget v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 576
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 577
    const/4 v2, 0x5

    move-object v3, v0

    move v4, v9

    move v5, v1

    move v1, v9

    move v0, v9

    .line 583
    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 585
    packed-switch v2, :pswitch_data_0

    .line 649
    :pswitch_0
    if-ne v2, v11, :cond_1

    .line 651
    const/16 v2, 0x78

    if-eq v6, v2, :cond_0

    const/16 v2, 0x58

    if-ne v6, v2, :cond_19

    .line 653
    :cond_0
    const/16 v2, 0x9

    .line 663
    :cond_1
    :goto_1
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1f

    .line 665
    if-ne v6, v12, :cond_1a

    move v1, v0

    move v2, v0

    move v6, v8

    .line 685
    :goto_2
    if-ne v6, v8, :cond_1c

    .line 706
    :cond_2
    const/4 v0, 0x1

    .line 708
    if-eqz v2, :cond_1d

    .line 711
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 712
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 714
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->remove_useless_lex_parts()V

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    iget-object v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 726
    :goto_3
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 727
    return v0

    .line 587
    :pswitch_1
    const/16 v2, 0x26

    if-ne v6, v2, :cond_3

    const/4 v2, 0x6

    :goto_4
    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_3
    move v2, v8

    goto :goto_4

    .line 590
    :pswitch_2
    sparse-switch v6, :sswitch_data_0

    move v2, v1

    move v6, v8

    move v1, v0

    .line 597
    goto :goto_2

    :sswitch_0
    move v2, v1

    move v6, v11

    move v1, v0

    .line 592
    goto :goto_2

    .line 593
    :sswitch_1
    const/16 v2, 0xa

    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 594
    :sswitch_2
    const/16 v2, 0xc

    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 595
    :sswitch_3
    const/16 v2, 0xd

    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 596
    :sswitch_4
    const/16 v2, 0x10

    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 602
    :pswitch_3
    sparse-switch v6, :sswitch_data_1

    move v2, v1

    move v6, v8

    move v1, v0

    .line 606
    goto :goto_2

    .line 604
    :sswitch_5
    const/16 v2, 0xb

    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 605
    :sswitch_6
    const/16 v2, 0xe

    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 610
    :pswitch_4
    const/16 v2, 0x54

    if-eq v6, v2, :cond_4

    const/16 v2, 0x74

    if-ne v6, v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    :goto_5
    move v6, v2

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_5
    move v2, v8

    goto :goto_5

    .line 611
    :pswitch_5
    const/16 v2, 0x54

    if-eq v6, v2, :cond_6

    const/16 v2, 0x74

    if-ne v6, v2, :cond_7

    :cond_6
    const/4 v2, 0x2

    :goto_6
    move v6, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_7
    move v2, v8

    goto :goto_6

    .line 612
    :pswitch_6
    const/16 v2, 0x55

    if-eq v6, v2, :cond_8

    const/16 v2, 0x75

    if-ne v6, v2, :cond_9

    :cond_8
    const/16 v2, 0x11

    :goto_7
    move v6, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_9
    move v2, v8

    goto :goto_7

    .line 613
    :pswitch_7
    const/16 v2, 0x50

    if-eq v6, v2, :cond_a

    const/16 v2, 0x70

    if-ne v6, v2, :cond_b

    :cond_a
    move v2, v9

    :goto_8
    move v6, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_b
    move v2, v8

    goto :goto_8

    .line 614
    :pswitch_8
    const/16 v2, 0x4f

    if-eq v6, v2, :cond_c

    const/16 v2, 0x6f

    if-ne v6, v2, :cond_d

    :cond_c
    const/16 v2, 0xf

    :goto_9
    move v6, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_d
    move v2, v8

    goto :goto_9

    .line 615
    :pswitch_9
    const/16 v2, 0x4f

    if-eq v6, v2, :cond_e

    const/16 v2, 0x6f

    if-ne v6, v2, :cond_f

    :cond_e
    const/16 v2, 0x12

    :goto_a
    move v6, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_f
    move v2, v8

    goto :goto_a

    .line 616
    :pswitch_a
    const/16 v2, 0x53

    if-eq v6, v2, :cond_10

    const/16 v2, 0x73

    if-ne v6, v2, :cond_11

    :cond_10
    const/4 v2, 0x3

    :goto_b
    move v6, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_11
    move v2, v8

    goto :goto_b

    .line 617
    :pswitch_b
    const/16 v2, 0x54

    if-eq v6, v2, :cond_12

    const/16 v2, 0x74

    if-ne v6, v2, :cond_13

    :cond_12
    const/4 v2, 0x4

    :goto_c
    move v6, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_13
    move v2, v8

    goto :goto_c

    .line 620
    :pswitch_c
    if-ne v6, v12, :cond_14

    .line 622
    sget-object v1, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->STANDARD_ENTITIES:[C

    aget-char v1, v1, v2

    :cond_14
    move v2, v1

    move v6, v8

    move v1, v0

    .line 625
    goto/16 :goto_2

    .line 628
    :pswitch_d
    if-ne v6, v12, :cond_15

    move v1, v0

    move v2, v0

    move v6, v8

    .line 631
    goto/16 :goto_2

    .line 635
    :cond_15
    if-lt v6, v10, :cond_16

    const/16 v7, 0x39

    if-gt v6, v7, :cond_16

    .line 636
    mul-int/lit8 v0, v0, 0x10

    sub-int/2addr v6, v10

    add-int/2addr v0, v6

    .line 644
    :goto_d
    const/high16 v6, 0x1

    if-lt v0, v6, :cond_1f

    move v2, v1

    move v6, v8

    move v1, v0

    goto/16 :goto_2

    .line 637
    :cond_16
    const/16 v7, 0x41

    if-lt v6, v7, :cond_17

    const/16 v7, 0x46

    if-gt v6, v7, :cond_17

    .line 638
    mul-int/lit8 v0, v0, 0x10

    const/16 v7, 0x41

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xa

    add-int/2addr v0, v6

    goto :goto_d

    .line 639
    :cond_17
    const/16 v7, 0x61

    if-lt v6, v7, :cond_18

    const/16 v7, 0x66

    if-gt v6, v7, :cond_18

    .line 640
    mul-int/lit8 v0, v0, 0x10

    const/16 v7, 0x61

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xa

    add-int/2addr v0, v6

    goto :goto_d

    :cond_18
    move v2, v8

    .line 642
    goto :goto_d

    .line 657
    :cond_19
    const/16 v2, 0x8

    goto/16 :goto_1

    .line 672
    :cond_1a
    if-lt v6, v10, :cond_1b

    const/16 v7, 0x39

    if-gt v6, v7, :cond_1b

    .line 673
    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr v6, v10

    add-int/2addr v0, v6

    .line 677
    :goto_e
    const/high16 v6, 0x1

    if-lt v0, v6, :cond_1f

    move v2, v1

    move v6, v8

    move v1, v0

    goto/16 :goto_2

    :cond_1b
    move v2, v8

    .line 675
    goto :goto_e

    .line 691
    :cond_1c
    add-int/lit8 v0, v4, 0x1

    .line 692
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_1e

    .line 694
    add-int/lit8 v4, v5, 0x1

    .line 696
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v3, v9

    :goto_f
    move v5, v4

    move v4, v3

    move-object v3, v0

    move v0, v1

    move v1, v2

    move v2, v6

    .line 704
    goto/16 :goto_0

    .line 722
    :cond_1d
    iput v11, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    move v0, v9

    .line 723
    goto/16 :goto_3

    :cond_1e
    move v4, v5

    move v13, v0

    move-object v0, v3

    move v3, v13

    goto :goto_f

    :cond_1f
    move v6, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_a
        :pswitch_6
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 590
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x41 -> :sswitch_1
        0x47 -> :sswitch_3
        0x4c -> :sswitch_2
        0x51 -> :sswitch_4
        0x61 -> :sswitch_1
        0x67 -> :sswitch_3
        0x6c -> :sswitch_2
        0x71 -> :sswitch_4
    .end sparse-switch

    .line 602
    :sswitch_data_1
    .sparse-switch
        0x4d -> :sswitch_5
        0x50 -> :sswitch_6
        0x6d -> :sswitch_5
        0x70 -> :sswitch_6
    .end sparse-switch
.end method

.method private remove_useless_lex_parts()V
    .locals 2

    .prologue
    .line 479
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    iget v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 483
    :cond_0
    return-void
.end method

.method private send_characters()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 743
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    if-lez v0, :cond_1

    .line 747
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 749
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    if-le v0, v4, :cond_0

    move v2, v4

    .line 753
    :goto_0
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    if-ge v2, v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 761
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;->characters(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->empty_lex_parts()V

    .line 764
    const/16 v0, 0x9

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    move v0, v3

    .line 770
    :goto_1
    return v0

    .line 769
    :cond_1
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->empty_lex_parts()V

    move v0, v4

    .line 770
    goto :goto_1
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x9

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 122
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->close()Z

    .line 124
    return-void
.end method

.method public close()Z
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    if-nez v0, :cond_3

    move v0, v3

    .line 132
    :goto_0
    iget v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EllieLexer;->get_global_lex_state()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 135
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    move v0, v2

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iput v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 139
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->send_characters()Z

    .line 141
    iput-boolean v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->tag_is_closing:Z

    .line 142
    iput v4, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 144
    iput v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 145
    iput v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    .line 148
    iget v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    if-nez v1, :cond_4

    .line 150
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;->endDocument(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 151
    const/16 v1, 0x9

    iput v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 158
    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v2

    .line 130
    goto :goto_0

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

    invoke-interface {v1, v3}, Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;->endDocument(Z)Z

    goto :goto_1
.end method

.method public get_parse_error()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    return v0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->start_parsing()Z

    move-result v0

    return v0
.end method

.method public parse([CI)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 220
    new-instance v6, Lcom/mobipocket/common/parser/EllieLexer$State;

    invoke-direct {v6}, Lcom/mobipocket/common/parser/EllieLexer$State;-><init>()V

    .line 221
    iput v8, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    .line 222
    const v0, 0x7fffffff

    iput v0, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->max_chars:I

    .line 227
    iget v0, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    move v7, v4

    move v2, v0

    .line 228
    :goto_0
    if-eqz v7, :cond_8

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    iget v1, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1, v6}, Lcom/mobipocket/common/parser/EllieLexer;->follow_transitions_ex([CILcom/mobipocket/common/parser/EllieLexer$State;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 231
    const v0, 0x7fffffff

    iput v0, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->max_chars:I

    .line 239
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EllieLexer;->get_state_value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EllieLexer;->get_action_entry(I)Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->GetActionType()B

    move-result v1

    and-int/lit8 v1, v1, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    .line 243
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->GetEtat()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mobipocket/common/parser/EllieLexer;->set_global_lex_state(I)V

    .line 246
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->GetActionType()B

    move-result v1

    and-int/lit8 v1, v1, -0x21

    packed-switch v1, :pswitch_data_0

    .line 252
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->remove_useless_lex_parts()V

    move v0, v7

    .line 445
    :goto_1
    iget v1, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    iget-object v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EllieLexer;->init_one_lex()V

    move v7, v0

    move v2, v1

    goto :goto_0

    .line 249
    :pswitch_0
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->GetToken()S

    move-result v1

    .line 259
    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_2
    move v0, v7

    goto :goto_1

    .line 263
    :sswitch_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 265
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->remove_useless_lex_parts()V

    move v0, v7

    .line 266
    goto :goto_1

    .line 270
    :sswitch_1
    iput v8, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 272
    iget v3, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->add_lex_part([CIIZI)Z

    move-result v0

    and-int/2addr v0, v7

    .line 273
    goto :goto_1

    .line 277
    :sswitch_2
    iget v0, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    invoke-direct {p0, p1, v2, v0, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->add_lex_part([CIIZ)Z

    move-result v0

    and-int/2addr v0, v7

    .line 279
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_entity()Z

    move-result v1

    and-int/2addr v0, v1

    .line 280
    goto :goto_1

    .line 284
    :sswitch_3
    iget v0, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->add_lex_part([CII)Z

    move-result v0

    and-int/2addr v0, v7

    .line 286
    goto :goto_1

    .line 292
    :sswitch_4
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->ignore()V

    move v0, v7

    .line 294
    goto :goto_1

    .line 298
    :sswitch_5
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->send_characters()Z

    move-result v0

    and-int/2addr v0, v7

    .line 300
    const/4 v1, 0x2

    iput v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 301
    iput-boolean v4, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->tag_is_closing:Z

    goto :goto_1

    .line 306
    :sswitch_6
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->send_characters()Z

    move-result v0

    and-int/2addr v0, v7

    .line 308
    const/4 v1, 0x2

    iput v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 309
    iput-boolean v8, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->tag_is_closing:Z

    goto :goto_1

    .line 315
    :sswitch_7
    iput v5, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 316
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->ignore()V

    move v0, v8

    .line 317
    goto :goto_1

    .line 321
    :sswitch_8
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    packed-switch v0, :pswitch_data_1

    .line 348
    iput v9, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 349
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->ignore()V

    move v0, v8

    .line 350
    goto :goto_1

    .line 325
    :pswitch_1
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->tag_is_closing:Z

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0, v9}, Lcom/mobipocket/common/parser/EllieLexer;->set_global_lex_state(I)V

    .line 334
    :goto_3
    iget v0, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->add_lex_part([CII)Z

    move-result v0

    and-int/2addr v0, v7

    .line 335
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concat_lex_parts()Z

    move-result v1

    and-int/2addr v0, v1

    .line 336
    goto :goto_1

    .line 332
    :cond_2
    iput v5, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    goto :goto_3

    .line 340
    :pswitch_2
    iput v9, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 341
    iget v0, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    invoke-direct {p0, p1, v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->add_lex_part([CII)Z

    move-result v0

    and-int/2addr v0, v7

    .line 342
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concat_lex_parts()Z

    move-result v1

    and-int/2addr v0, v1

    .line 343
    goto/16 :goto_1

    .line 356
    :sswitch_9
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    if-ne v0, v9, :cond_3

    .line 358
    iput v10, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    move v0, v7

    goto/16 :goto_1

    .line 364
    :cond_3
    iput v10, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 365
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->ignore()V

    move v0, v8

    .line 367
    goto/16 :goto_1

    .line 371
    :sswitch_a
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    if-eq v0, v10, :cond_1

    .line 374
    const/4 v0, 0x6

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 375
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->ignore()V

    move v0, v8

    goto/16 :goto_1

    .line 381
    :sswitch_b
    iput v5, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 383
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concat_lex_parts()Z

    move-result v0

    and-int/2addr v0, v7

    .line 384
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    goto/16 :goto_1

    .line 394
    :sswitch_c
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    if-nez v0, :cond_4

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: Poorly formed XML: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v8

    .line 465
    :goto_4
    return v0

    .line 402
    :cond_4
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    if-eq v0, v4, :cond_5

    .line 404
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->tag_is_closing:Z

    if-eqz v0, :cond_6

    .line 406
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 409
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 411
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;->endElement(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 413
    const/16 v0, 0x9

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 414
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->ignore()V

    .line 443
    :cond_5
    :goto_5
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->empty_lex_parts()V

    .line 444
    iput v8, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    goto/16 :goto_2

    .line 420
    :cond_6
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->remove_useless_lex_parts()V

    .line 421
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 424
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 426
    new-instance v2, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-direct {v2, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;-><init>(Ljava/util/Vector;)V

    .line 427
    iget-object v3, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;->startElement(Ljava/lang/String;Lcom/amazon/foundation/internal/parser/xml/SAXAttributes;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 429
    const/16 v0, 0x9

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 430
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->ignore()V

    goto :goto_5

    .line 432
    :cond_7
    const/16 v0, 0x9

    if-ne v1, v0, :cond_5

    .line 434
    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;->endElement(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 436
    const/16 v0, 0x9

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 437
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->ignore()V

    goto :goto_5

    .line 459
    :cond_8
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EllieLexer;->get_global_lex_state()I

    move-result v0

    if-eq v0, v9, :cond_9

    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EllieLexer;->get_global_lex_state()I

    move-result v0

    if-eq v0, v10, :cond_9

    .line 462
    iget v0, v6, Lcom/mobipocket/common/parser/EllieLexer$State;->accepted:I

    invoke-direct {p0, p1, v2, v0, v8}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->add_lex_part([CIIZ)Z

    move-result v0

    and-int/2addr v0, v7

    goto/16 :goto_4

    :cond_9
    move v0, v7

    goto/16 :goto_4

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_3
        0x8 -> :sswitch_9
        0x9 -> :sswitch_c
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0x10 -> :sswitch_2
        0x53 -> :sswitch_0
        0x54 -> :sswitch_1
        0x55 -> :sswitch_a
        0x56 -> :sswitch_b
    .end sparse-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public start_parsing()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    iput-boolean v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->tag_is_closing:Z

    .line 194
    iput v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->state:I

    .line 196
    iput v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->useful_lex_parts_count:I

    .line 197
    iput v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->concatenated_lex_parts_count:I

    .line 198
    invoke-direct {p0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->empty_lex_parts()V

    .line 200
    iput v2, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 202
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    iget-object v1, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EllieLexer;->start_state()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EllieLexer;->set_global_lex_state(I)V

    .line 203
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EllieLexer;->init_one_lex()V

    .line 205
    iget-object v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->handler:Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;

    invoke-interface {v0}, Lcom/amazon/foundation/internal/parser/xml/ISAXContentHandler;->startDocument()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/16 v0, 0x9

    iput v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    .line 208
    :cond_0
    iget v0, p0, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse_error:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public write([C)I
    .locals 1
    .parameter "buf"

    .prologue
    .line 172
    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/amazon/foundation/internal/parser/xml/SAXParser;->parse([CI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    array-length v0, p1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
