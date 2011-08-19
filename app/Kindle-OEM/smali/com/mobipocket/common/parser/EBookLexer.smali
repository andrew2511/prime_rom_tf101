.class public Lcom/mobipocket/common/parser/EBookLexer;
.super Lcom/mobipocket/common/parser/EllieLexer$State;
.source "EBookLexer.java"

# interfaces
.implements Lcom/mobipocket/common/parser/LexingTables;


# static fields
.field private static final DOW:Z = false

.field public static final GL_Error:B = 0x1t

.field public static final GL_NoMemory:B = 0x3t

.field public static final GL_None:B = 0x2t

.field public static final GL_Ok:B = 0x0t

.field public static final ID_ACC_FERM:I = 0x13

.field public static final ID_ACC_OUV:I = 0x14

.field public static final ID_ANYTHING_WOSPACE:I = 0xa

.field public static final ID_ASPCHUNK:I = 0x50

.field public static final ID_BLANC:I = 0x12

.field public static final ID_CDATA_CONTENT:I = 0x54

.field public static final ID_CHAINE:I = 0x7

.field public static final ID_CLEANSPACES:I = 0xd

.field public static final ID_CRO_FERM:I = 0x19

.field public static final ID_CRO_OUV:I = 0x1a

.field public static final ID_DECIMALNUMBER:I = 0x4c

.field public static final ID_DEUXPOINTS:I = 0x16

.field public static final ID_END_QUOTE:I = 0x56

.field public static final ID_EOL:I = 0xf

.field public static final ID_HEXANUMBER:I = 0x4f

.field public static final ID_IDENTIFIER:I = 0x4a

.field public static final ID_NAME:I = 0xb

.field public static final ID_OCTALNUMBER:I = 0x4e

.field public static final ID_OP_AFFECT:I = 0x1e

.field public static final ID_OP_DECR:I = 0x2e

.field public static final ID_OP_DELETE:I = 0x46

.field public static final ID_OP_DIV:I = 0x2c

.field public static final ID_OP_DIVAFFECT:I = 0x22

.field public static final ID_OP_EQ:I = 0x8

.field public static final ID_OP_EQU:I = 0x36

.field public static final ID_OP_EQUNTYPE:I = 0x35

.field public static final ID_OP_ET:I = 0x3e

.field public static final ID_OP_ET_BIT:I = 0x3f

.field public static final ID_OP_ET_BITAFFECT:I = 0x24

.field public static final ID_OP_EXPRCOND:I = 0x1d

.field public static final ID_OP_INCR:I = 0x2f

.field public static final ID_OP_INF:I = 0x3d

.field public static final ID_OP_INFEQU:I = 0x38

.field public static final ID_OP_LITTERALSTR:I = 0x48

.field public static final ID_OP_MOD:I = 0x2a

.field public static final ID_OP_MODAFFECT:I = 0x21

.field public static final ID_OP_MOINS:I = 0x2d

.field public static final ID_OP_MOINSAFFECT:I = 0x1f

.field public static final ID_OP_MULTI:I = 0x2b

.field public static final ID_OP_MULTIAFFECT:I = 0x23

.field public static final ID_OP_NEG:I = 0x49

.field public static final ID_OP_NEW:I = 0x47

.field public static final ID_OP_NOT:I = 0x34

.field public static final ID_OP_NOTEQU:I = 0x31

.field public static final ID_OP_NOTEQUNTYPE:I = 0x42

.field public static final ID_OP_NOT_BIT:I = 0x33

.field public static final ID_OP_OU:I = 0x40

.field public static final ID_OP_OU_BIT:I = 0x41

.field public static final ID_OP_OU_BITAFFECT:I = 0x25

.field public static final ID_OP_PLUS:I = 0x30

.field public static final ID_OP_PLUSAFFECT:I = 0x20

.field public static final ID_OP_POSTDECR:I = 0x43

.field public static final ID_OP_POSTINCR:I = 0x44

.field public static final ID_OP_SHLEFT:I = 0x3c

.field public static final ID_OP_SHLEFTAFFECT:I = 0x28

.field public static final ID_OP_SHRIGHT:I = 0x3a

.field public static final ID_OP_SHRIGHTAFFECT:I = 0x27

.field public static final ID_OP_SHRIGHTZ:I = 0x39

.field public static final ID_OP_SHRIGHTZAFFECT:I = 0x26

.field public static final ID_OP_SUP:I = 0x3b

.field public static final ID_OP_SUPEQU:I = 0x37

.field public static final ID_OP_TYPEOF:I = 0x45

.field public static final ID_OP_XORAFFECT:I = 0x29

.field public static final ID_OP_XOR_BIT:I = 0x32

.field public static final ID_PAR_FERM:I = 0x1b

.field public static final ID_PAR_OUV:I = 0x1c

.field public static final ID_POINT:I = 0x18

.field public static final ID_POINTVIRGULE:I = 0x15

.field public static final ID_REALNUMBER:I = 0x4b

.field public static final ID_SPACES:I = 0xe

.field public static final ID_START_QUOTE:I = 0x55

.field public static final ID_STRING:I = 0x4d

.field public static final ID_TAGCLOSE:I = 0x1

.field public static final ID_TAGCLOSE_EMPTY:I = 0x9

.field public static final ID_TAGOPEN:I = 0x5

.field public static final ID_TAGOPEN_END:I = 0x4

.field public static final ID_TAGOPEN_PREPRO:I = 0x2

.field public static final ID_TAGOPEN_SCRIPTEND:I = 0xc

.field public static final ID_TAGOPEN_SGML:I = 0x3

.field public static final ID_TAG_CDATA:I = 0x53

.field public static final ID_TEXT:I = 0x51

.field public static final ID_TEXTASPBEGIN:I = 0x52

.field public static final ID_TEXT_ENTITY:I = 0x10

.field public static final ID_TEXT_NO_ENTITY:I = 0x6

.field public static final ID_VIRGULE:I = 0x17

.field public static final ID_WORD:I = 0x11

.field public static final MAX_LEXING_TEXT_LEN:I = 0x1e

.field private static final OW:Ljava/io/PrintStream; = null

.field public static final kMinTextWithEntities:I = 0x3


# instance fields
.field currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

.field private currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

.field private final el:Lcom/mobipocket/common/parser/EllieLexer;

.field public final lex_parts:Ljava/util/Vector;

.field private nb_abs_pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/mobipocket/common/parser/EBookLexer;->OW:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V
    .locals 1
    .parameter "currentEBook"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/mobipocket/common/parser/EllieLexer$State;-><init>()V

    .line 172
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    .line 174
    new-instance v0, Lcom/mobipocket/common/parser/EllieLexer;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/EllieLexer;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    .line 178
    iput-object p1, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 179
    return-void
.end method

.method private static OW(Ljava/lang/String;I)V
    .locals 4
    .parameter "s"
    .parameter "position"

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 44
    .local v0, c:C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 55
    .end local v0           #c:C
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v0       #c:C
    :cond_1
    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 48
    :cond_2
    sget-object v1, Lcom/mobipocket/common/parser/EBookLexer;->OW:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #c:C
    :catch_0
    move-exception v1

    goto :goto_0

    .line 50
    .restart local v0       #c:C
    :cond_3
    sget-object v1, Lcom/mobipocket/common/parser/EBookLexer;->OW:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private final get_text_type(Lcom/mobipocket/common/parser/StrDescriptor;)I
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x5

    .line 765
    iget v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    if-lez v1, :cond_1

    .line 767
    iget-object v1, p1, Lcom/mobipocket/common/parser/StrDescriptor;->content:[C

    iget v2, p1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    aget-char v0, v1, v2

    .line 770
    .local v0, firstChar:C
    const/16 v1, 0x200c

    if-ne v0, v1, :cond_0

    move v1, v3

    .line 778
    .end local v0           #firstChar:C
    :goto_0
    return v1

    .line 773
    .restart local v0       #firstChar:C
    :cond_0
    invoke-static {v0}, Lcom/mobipocket/common/parser/UnicodeUtils;->isIdeographic(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 775
    goto :goto_0

    .line 778
    .end local v0           #firstChar:C
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private init_one_lex()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EllieLexer;->init_one_lex()V

    .line 415
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookLexer;->empty_lex_parts()V

    .line 416
    return-void
.end method


# virtual methods
.method public concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 497
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 498
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, idxp:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 500
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {p1, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    return-void
.end method

.method public concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;IIII)V
    .locals 3
    .parameter "value"
    .parameter "start_desc"
    .parameter "start_pos"
    .parameter "end_desc"
    .parameter "end_pos"

    .prologue
    .line 513
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 515
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/StrDescriptor;

    .line 516
    .local v0, d:Lcom/mobipocket/common/parser/StrDescriptor;
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p1, v0, p3, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(Lcom/mobipocket/common/parser/StrDescriptor;II)V

    .line 517
    const/4 p3, 0x0

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v0           #d:Lcom/mobipocket/common/parser/StrDescriptor;
    :cond_0
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2, p4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/StrDescriptor;

    .line 521
    .restart local v0       #d:Lcom/mobipocket/common/parser/StrDescriptor;
    sub-int v2, p5, p3

    invoke-virtual {p1, v0, p3, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(Lcom/mobipocket/common/parser/StrDescriptor;II)V

    .line 522
    return-void
.end method

.method empty_lex_parts()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 396
    return-void
.end method

.method find_lex_entity([I[Z[Z)Z
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 889
    const/4 v0, 0x0

    aget v0, p1, v0

    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    const/4 v1, 0x1

    aget v1, p1, v1

    if-ne v0, v1, :cond_1

    .line 895
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 896
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int v1, v0, v1

    .line 900
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    .line 902
    const/4 v0, 0x0

    aget v0, p1, v0

    if-le v0, v1, :cond_2

    .line 903
    const/4 v0, 0x0

    .line 993
    :goto_0
    return v0

    .line 905
    :cond_2
    const/4 v0, 0x0

    .line 906
    const/4 v3, 0x0

    .line 909
    const/4 v4, 0x0

    .line 912
    const/4 v5, 0x1

    .line 917
    const/4 v6, 0x0

    aget v6, p1, v6

    move v7, v0

    move v13, v5

    move v5, v4

    move v4, v13

    move v14, v3

    move v3, v6

    move v6, v14

    :goto_1
    if-gt v3, v1, :cond_f

    .line 919
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/StrDescriptor;

    .line 920
    const/4 v8, 0x1

    aget v8, p1, v8

    .line 924
    if-ne v3, v1, :cond_5

    .line 925
    const/4 v9, 0x1

    aget v9, p1, v9

    sub-int v9, v2, v9

    .line 929
    :goto_2
    const/4 v10, 0x0

    move v13, v8

    move v8, v6

    move v6, v4

    move v4, v13

    move v14, v5

    move v5, v10

    move v10, v7

    move v7, v14

    :goto_3
    if-ge v5, v9, :cond_3

    .line 931
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v4

    .line 933
    if-eqz v7, :cond_6

    .line 975
    :cond_3
    if-eqz v7, :cond_d

    move v0, v6

    move v3, v7

    move v4, v8

    move v5, v10

    .line 981
    :goto_4
    if-nez v3, :cond_e

    const/4 v6, 0x2

    if-ne v0, v6, :cond_e

    const/4 v0, 0x4

    aget v0, p1, v0

    if-lt v0, v1, :cond_4

    const/4 v0, 0x4

    aget v0, p1, v0

    if-ne v0, v1, :cond_e

    const/4 v0, 0x5

    aget v0, p1, v0

    if-ge v0, v2, :cond_e

    .line 984
    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    aput-boolean v3, p2, v0

    .line 985
    const/4 v0, 0x1

    .line 986
    const/4 v3, 0x2

    aput v1, p1, v3

    .line 987
    const/4 v1, 0x3

    aput v2, p1, v1

    .line 990
    :goto_5
    const/4 v1, 0x0

    aput v5, p1, v1

    .line 991
    const/4 v1, 0x1

    aput v4, p1, v1

    goto :goto_0

    .line 927
    :cond_5
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v9

    const/4 v10, 0x1

    aget v10, p1, v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 936
    :cond_6
    packed-switch v6, :pswitch_data_0

    :cond_7
    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v10

    .line 929
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move v10, v8

    move v8, v7

    move v7, v6

    move v6, v4

    move v4, v11

    goto :goto_3

    .line 939
    :pswitch_0
    const/16 v12, 0x26

    if-ne v4, v12, :cond_7

    .line 941
    const/4 v4, 0x1

    aget v4, p1, v4

    add-int/2addr v4, v5

    .line 943
    const/4 v6, 0x4

    aput v3, p1, v6

    .line 944
    const/4 v6, 0x5

    const/4 v8, 0x1

    aget v8, p1, v8

    add-int/2addr v8, v5

    add-int/lit8 v8, v8, 0x1

    aput v8, p1, v6

    .line 945
    const/4 v6, 0x0

    const/4 v8, 0x0

    aput-boolean v8, p3, v6

    .line 946
    const/4 v6, 0x2

    move v8, v3

    move v13, v7

    move v7, v4

    move v4, v6

    move v6, v13

    goto :goto_6

    .line 950
    :pswitch_1
    const/16 v12, 0x3b

    if-ne v4, v12, :cond_8

    .line 952
    const/4 v4, 0x0

    const/4 v7, 0x1

    aput-boolean v7, p2, v4

    .line 953
    const/4 v4, 0x2

    aput v3, p1, v4

    .line 954
    const/4 v4, 0x3

    const/4 v7, 0x1

    aget v7, p1, v7

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x1

    aput v7, p1, v4

    .line 955
    const/4 v4, 0x1

    move v7, v8

    move v8, v10

    move v13, v6

    move v6, v4

    move v4, v13

    goto :goto_6

    .line 957
    :cond_8
    const/16 v12, 0x23

    if-ne v4, v12, :cond_9

    .line 959
    const/4 v4, 0x0

    const/4 v12, 0x1

    aput-boolean v12, p3, v4

    move v4, v6

    move v6, v7

    move v7, v8

    move v8, v10

    goto :goto_6

    .line 961
    :cond_9
    const/16 v12, 0x41

    if-lt v4, v12, :cond_a

    const/16 v12, 0x5a

    if-le v4, v12, :cond_7

    :cond_a
    const/16 v12, 0x61

    if-lt v4, v12, :cond_b

    const/16 v12, 0x7a

    if-le v4, v12, :cond_7

    :cond_b
    const/16 v12, 0x30

    if-lt v4, v12, :cond_c

    const/16 v12, 0x39

    if-le v4, v12, :cond_7

    .line 963
    :cond_c
    const/4 v4, 0x0

    const/4 v7, 0x0

    aput-boolean v7, p2, v4

    .line 964
    const/4 v4, 0x2

    aput v3, p1, v4

    .line 965
    const/4 v4, 0x3

    const/4 v7, 0x1

    aget v7, p1, v7

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x1

    aput v7, p1, v4

    .line 966
    const/4 v4, 0x1

    move v7, v8

    move v8, v10

    move v13, v6

    move v6, v4

    move v4, v13

    goto :goto_6

    .line 978
    :cond_d
    const/4 v0, 0x1

    const/4 v4, 0x0

    aput v4, p1, v0

    .line 917
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v10

    goto/16 :goto_1

    :cond_e
    move v0, v3

    goto/16 :goto_5

    :cond_f
    move v0, v4

    move v3, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_4

    .line 936
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public get_global_lex_state()I
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EllieLexer;->get_global_lex_state()I

    move-result v0

    return v0
.end method

.method public get_lex_part(I)Lcom/mobipocket/common/parser/StrDescriptor;
    .locals 1
    .parameter "idx"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/StrDescriptor;

    return-object p0
.end method

.method public get_lex_parts_count()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public get_one_lex([I)B
    .locals 1
    .parameter "recognized"

    .prologue
    .line 322
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([II)B

    move-result v0

    return v0
.end method

.method get_one_lex([II)B
    .locals 7
    .parameter "recognized"
    .parameter "approx_len"

    .prologue
    const/4 v6, 0x0

    .line 327
    invoke-direct {p0}, Lcom/mobipocket/common/parser/EBookLexer;->init_one_lex()V

    .line 329
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookLexer;->try_buffer_load()Z

    move-result v2

    if-nez v2, :cond_0

    .line 330
    const/4 v2, 0x2

    .line 388
    :goto_0
    return v2

    .line 332
    :cond_0
    iget v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    .line 333
    .local v1, start:I
    const/4 v0, 0x0

    .line 336
    .local v0, error_on_load:Z
    iput p2, p0, Lcom/mobipocket/common/parser/EBookLexer;->max_chars:I

    .line 338
    :goto_1
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    iget-object v3, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    iget-object v4, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v4, v4, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    iget v5, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4, p0}, Lcom/mobipocket/common/parser/EllieLexer;->follow_transitions_ex([CILcom/mobipocket/common/parser/EllieLexer$State;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    new-instance v3, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v4, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    iget v5, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookLexer;->try_buffer_load()Z

    move-result v2

    if-nez v2, :cond_4

    .line 354
    const/4 v0, 0x1

    .line 361
    :cond_1
    iget v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    if-eq v1, v2, :cond_2

    if-nez v0, :cond_2

    .line 368
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    new-instance v3, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v4, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v4, v4, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    iget v5, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v1, v5}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    iget-object v3, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v3, v3, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    if-ne v2, v3, :cond_3

    .line 381
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 384
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EllieLexer;->get_state_value()I

    move-result v2

    if-gez v2, :cond_5

    .line 385
    const/4 v2, 0x1

    goto :goto_0

    .line 358
    :cond_4
    iget v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    goto :goto_1

    .line 387
    :cond_5
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/EllieLexer;->get_state_value()I

    move-result v2

    aput v2, p1, v6

    move v2, v6

    .line 388
    goto :goto_0
.end method

.method public get_position()I
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-nez v1, :cond_0

    .line 292
    iget v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->nb_abs_pos:I

    .line 296
    :goto_0
    return v1

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->getFilePosition(I)I

    move-result v0

    .local v0, parsed_pos:I
    move v1, v0

    .line 296
    goto :goto_0
.end method

.method public identify_entity(IIIIZZ[C)I
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1014
    if-eqz p5, :cond_12

    .line 1016
    const/4 v2, 0x1

    move/from16 v0, p4

    move v1, v2

    if-gt v0, v1, :cond_0

    .line 1018
    add-int/lit8 v2, p3, -0x1

    .line 1019
    iget-object v3, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual/range {p3 .. p3}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v3

    add-int v3, v3, p4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v7, v3

    move v6, v2

    .line 1025
    :goto_0
    if-eqz p6, :cond_10

    .line 1027
    const/4 v2, 0x0

    .line 1030
    const/4 v3, 0x1

    move v4, v2

    move/from16 v5, p2

    move v2, p1

    .line 1036
    :goto_1
    if-gt v2, v6, :cond_b

    .line 1038
    iget-object v8, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v8, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mobipocket/common/parser/StrDescriptor;

    .line 1043
    if-ne v2, v6, :cond_1

    .line 1044
    sub-int v8, v7, v5

    .line 1048
    :goto_2
    const/4 v9, 0x0

    move v12, v5

    move v5, v3

    move v3, v12

    move v13, v9

    move v9, v4

    move v4, v13

    :goto_3
    if-ge v4, v8, :cond_a

    .line 1051
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v3

    .line 1053
    packed-switch v5, :pswitch_data_0

    move v3, v5

    move v5, v9

    .line 1048
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v9, v5

    move v5, v3

    move v3, v10

    goto :goto_3

    .line 1022
    :cond_0
    add-int/lit8 v2, p4, -0x1

    move v7, v2

    move/from16 v6, p3

    goto :goto_0

    .line 1046
    :cond_1
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v8

    sub-int/2addr v8, v5

    goto :goto_2

    .line 1056
    :pswitch_0
    const/16 v5, 0x23

    if-eq v3, v5, :cond_3

    .line 1057
    const/4 v2, 0x0

    .line 1126
    :cond_2
    :goto_5
    return v2

    .line 1058
    :cond_3
    const/4 v3, 0x2

    move v5, v9

    .line 1059
    goto :goto_4

    .line 1061
    :pswitch_1
    const/16 v11, 0x78

    if-eq v3, v11, :cond_4

    const/16 v11, 0x58

    if-ne v3, v11, :cond_5

    .line 1063
    :cond_4
    const/4 v3, 0x4

    move v5, v9

    .line 1064
    goto :goto_4

    .line 1071
    :cond_5
    :pswitch_2
    const/16 v11, 0x30

    if-lt v3, v11, :cond_6

    const/16 v11, 0x39

    if-gt v3, v11, :cond_6

    .line 1073
    mul-int/lit8 v9, v9, 0xa

    const/16 v11, 0x30

    sub-int/2addr v3, v11

    add-int/2addr v3, v9

    move v12, v5

    move v5, v3

    move v3, v12

    goto :goto_4

    .line 1077
    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    .line 1082
    :pswitch_3
    const/16 v11, 0x30

    if-lt v3, v11, :cond_7

    const/16 v11, 0x39

    if-gt v3, v11, :cond_7

    .line 1083
    mul-int/lit8 v9, v9, 0x10

    const/16 v11, 0x30

    sub-int/2addr v3, v11

    add-int/2addr v3, v9

    move v12, v5

    move v5, v3

    move v3, v12

    goto :goto_4

    .line 1084
    :cond_7
    const/16 v11, 0x61

    if-lt v3, v11, :cond_8

    const/16 v11, 0x66

    if-gt v3, v11, :cond_8

    .line 1085
    mul-int/lit8 v9, v9, 0x10

    add-int/lit8 v3, v3, 0xa

    const/16 v11, 0x61

    sub-int/2addr v3, v11

    add-int/2addr v3, v9

    move v12, v5

    move v5, v3

    move v3, v12

    goto :goto_4

    .line 1086
    :cond_8
    const/16 v11, 0x41

    if-lt v3, v11, :cond_9

    const/16 v11, 0x46

    if-gt v3, v11, :cond_9

    .line 1087
    mul-int/lit8 v9, v9, 0x10

    add-int/lit8 v3, v3, 0xa

    const/16 v11, 0x41

    sub-int/2addr v3, v11

    add-int/2addr v3, v9

    move v12, v5

    move v5, v3

    move v3, v12

    goto :goto_4

    .line 1089
    :cond_9
    const/4 v2, 0x0

    goto :goto_5

    .line 1093
    :cond_a
    const/4 v3, 0x0

    .line 1036
    add-int/lit8 v2, v2, 0x1

    move v4, v9

    move v12, v5

    move v5, v3

    move v3, v12

    goto/16 :goto_1

    .line 1099
    :cond_b
    const/4 v2, 0x0

    .line 1102
    const/16 v3, 0xa0

    if-ge v4, v3, :cond_f

    const/4 v3, 0x1

    .line 1105
    :goto_6
    if-eqz v3, :cond_11

    .line 1106
    invoke-static {v4}, Lcom/mobipocket/common/parser/UnicodeWestern;->w2u(I)C

    move-result v3

    .line 1109
    :goto_7
    const/16 v4, 0x20

    if-eq v3, v4, :cond_c

    const/16 v4, 0x9

    if-lt v3, v4, :cond_d

    const/16 v4, 0xd

    if-gt v3, v4, :cond_d

    .line 1110
    :cond_c
    const/16 v3, 0x20

    .line 1113
    :cond_d
    const v4, 0xffff

    if-ge v3, v4, :cond_e

    .line 1114
    invoke-static {v3}, Lcom/mobipocket/common/parser/TernaryTree;->find_unicode_entity(I)I

    move-result v2

    .line 1117
    :cond_e
    if-nez v2, :cond_2

    .line 1118
    const/4 v2, 0x0

    int-to-char v3, v3

    aput-char v3, p7, v2

    .line 1119
    const/16 v2, 0x7fff

    goto/16 :goto_5

    .line 1102
    :cond_f
    const/4 v3, 0x0

    goto :goto_6

    .line 1125
    :cond_10
    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x170

    aput v3, v8, v2

    .line 1126
    sget-object v3, Lcom/mobipocket/common/parser/TernaryTree;->kgHTMLEntities:[[S

    move-object v2, p0

    move v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/mobipocket/common/parser/EBookLexer;->identify_sub_lex([[SIIII[I)I

    move-result v2

    goto/16 :goto_5

    :cond_11
    move v3, v4

    goto :goto_7

    :cond_12
    move/from16 v7, p4

    move/from16 v6, p3

    goto/16 :goto_0

    .line 1053
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public identify_html_lex()S
    .locals 3

    .prologue
    .line 532
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x13b

    aput v2, v0, v1

    .line 533
    .local v0, index:[I
    sget-object v1, Lcom/mobipocket/common/parser/TernaryTreeData;->kgHTMLTagProps:[[S

    invoke-virtual {p0, v1, v0}, Lcom/mobipocket/common/parser/EBookLexer;->identify_lex([[S[I)S

    move-result v1

    return v1
.end method

.method public identify_lex([[S[I)S
    .locals 5
    .parameter "tree"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 541
    const/4 v3, 0x1

    new-array v0, v3, [S

    aput-short v4, v0, v4

    .line 542
    .local v0, code:[S
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 544
    iget-object v3, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/parser/StrDescriptor;

    .line 545
    .local v1, d:Lcom/mobipocket/common/parser/StrDescriptor;
    invoke-static {v1, p1, p2, v0}, Lcom/mobipocket/common/parser/TernaryTree;->follow_up_ternary_tree(Lcom/mobipocket/common/parser/StrDescriptor;[[S[I[S)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    aget-short v3, v0, v4

    .line 550
    .end local v1           #d:Lcom/mobipocket/common/parser/StrDescriptor;
    :goto_1
    return v3

    .line 542
    .restart local v1       #d:Lcom/mobipocket/common/parser/StrDescriptor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v1           #d:Lcom/mobipocket/common/parser/StrDescriptor;
    :cond_1
    aget-short v3, v0, v4

    goto :goto_1
.end method

.method public identify_sub_lex([[SIIII[I)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1138
    const/4 v0, 0x1

    new-array v1, v0, [S

    aput-short v5, v1, v5

    move v2, p2

    move v3, p3

    .line 1139
    :goto_0
    if-ge v2, p4, :cond_1

    .line 1141
    new-instance v4, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v4, v0}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 1142
    iget v0, v4, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 1143
    invoke-virtual {v4}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v4, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->setLength(I)V

    .line 1144
    invoke-static {v4, p1, p6, v1}, Lcom/mobipocket/common/parser/TernaryTree;->follow_ternary_tree(Lcom/mobipocket/common/parser/StrDescriptor;[[S[I[S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    aget-short v0, v1, v5

    .line 1154
    :goto_1
    return v0

    .line 1139
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v5

    goto :goto_0

    .line 1150
    :cond_1
    new-instance v0, Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2, p4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 1151
    iget v2, v0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 1152
    sub-int v2, p5, v3

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->setLength(I)V

    .line 1153
    invoke-static {v0, p1, p6, v1}, Lcom/mobipocket/common/parser/TernaryTree;->follow_ternary_tree(Lcom/mobipocket/common/parser/StrDescriptor;[[S[I[S)Z

    .line 1154
    aget-short v0, v1, v5

    goto :goto_1
.end method

.method public init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V
    .locals 1
    .parameter "lex_table"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/EllieLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    .line 312
    return-void
.end method

.method public interpret_lex(I[I)Z
    .locals 1
    .parameter "lex"
    .parameter "id"

    .prologue
    .line 435
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mobipocket/common/parser/EBookLexer;->interpret_lex(I[I[Z)Z

    move-result v0

    return v0
.end method

.method public interpret_lex(I[I[Z)Z
    .locals 5
    .parameter "lex"
    .parameter "id"
    .parameter "strret"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 440
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v1, p1}, Lcom/mobipocket/common/parser/EllieLexer;->get_action_entry(I)Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;

    move-result-object v0

    .line 442
    .local v0, act:Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;
    iget-byte v1, v0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->actiontype:B

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    iget-byte v2, v0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->etat:B

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/EllieLexer;->set_global_lex_state(I)V

    .line 447
    :cond_0
    if-eqz p3, :cond_1

    .line 448
    iget-byte v1, v0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->actiontype:B

    and-int/lit8 v1, v1, -0x21

    if-ne v1, v4, :cond_2

    move v1, v4

    :goto_0
    aput-boolean v1, p3, v3

    .line 450
    :cond_1
    iget-byte v1, v0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->actiontype:B

    and-int/lit8 v1, v1, -0x21

    packed-switch v1, :pswitch_data_0

    move v1, v3

    .line 456
    :goto_1
    return v1

    :cond_2
    move v1, v3

    .line 448
    goto :goto_0

    .line 453
    :pswitch_0
    iget-short v1, v0, Lcom/mobipocket/common/parser/LexingTables$SLexerActEntry;->token:S

    aput v1, p2, v3

    move v1, v4

    .line 454
    goto :goto_1

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method read_current_char()C
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookLexer;->try_buffer_load()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 407
    :goto_0
    return v0

    .line 404
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    if-lt v0, v1, :cond_1

    move v0, v2

    .line 405
    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    iget v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method recover_html()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x3e

    const/16 v9, 0x3c

    const/4 v8, 0x1

    .line 202
    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookLexer;->try_buffer_load()Z

    move-result v6

    if-nez v6, :cond_0

    .line 203
    const/4 v6, 0x0

    .line 285
    :goto_0
    return v6

    .line 207
    :cond_0
    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    iget v7, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    aget-char v6, v6, v7

    if-eq v6, v9, :cond_1

    iget v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    iget v7, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    sub-int/2addr v7, v8

    aget-char v6, v6, v7

    if-ne v6, v10, :cond_2

    :cond_1
    move v6, v8

    .line 209
    goto :goto_0

    .line 211
    :cond_2
    const/4 v5, 0x0

    .line 213
    .local v5, recovered:Z
    const/4 v0, 0x0

    .line 214
    .local v0, blank_found:Z
    const/4 v2, -0x1

    .line 216
    .local v2, first_blank_pos:I
    :cond_3
    :goto_1
    if-nez v5, :cond_c

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, c:C
    const/4 v3, 0x0

    .line 222
    .local v3, found_tag:Z
    iget v4, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    .local v4, i:I
    :goto_2
    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v6, v6, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    if-ge v4, v6, :cond_5

    .line 224
    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v6, v6, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->_text:[C

    aget-char v1, v6, v4

    .line 225
    if-eq v1, v9, :cond_4

    if-ne v1, v10, :cond_7

    .line 227
    :cond_4
    const/4 v3, 0x1

    .line 237
    :cond_5
    iput v4, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    .line 239
    if-eqz v3, :cond_b

    .line 241
    packed-switch v1, :pswitch_data_0

    .line 268
    :cond_6
    :goto_3
    :pswitch_0
    const/4 v5, 0x1

    goto :goto_1

    .line 230
    :cond_7
    if-nez v0, :cond_9

    const/16 v6, 0x20

    if-eq v1, v6, :cond_8

    const/16 v6, 0xd

    if-eq v1, v6, :cond_8

    const/16 v6, 0xa

    if-eq v1, v6, :cond_8

    const/16 v6, 0x9

    if-ne v1, v6, :cond_9

    .line 232
    :cond_8
    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    invoke-virtual {v6, v4}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->getFilePosition(I)I

    move-result v2

    .line 233
    const/4 v0, 0x1

    .line 222
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 246
    :pswitch_1
    if-eqz v0, :cond_6

    .line 248
    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v6, v6, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    if-ge v2, v6, :cond_a

    .line 250
    iput v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->nb_abs_pos:I

    .line 251
    iput-object v11, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    goto :goto_3

    .line 255
    :cond_a
    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget-object v7, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v7, v7, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->beg_pos:I

    sub-int v7, v2, v7

    invoke-virtual {v6, v7}, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->getTextPositionInRecord(I)I

    move-result v6

    iput v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    goto :goto_3

    .line 265
    :pswitch_2
    iget v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    goto :goto_3

    .line 274
    :cond_b
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookLexer;->try_buffer_load()Z

    move-result v6

    if-nez v6, :cond_3

    .line 279
    .end local v1           #c:C
    .end local v3           #found_tag:Z
    .end local v4           #i:I
    :cond_c
    iget-object v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    iget-object v7, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v7, v7, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->length:I

    if-ne v6, v7, :cond_d

    .line 282
    iput-object v11, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    :cond_d
    move v6, v8

    .line 285
    goto/16 :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public set_global_lex_state(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/EllieLexer;->set_global_lex_state(I)V

    return-void
.end method

.method public set_position(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 186
    iput p1, p0, Lcom/mobipocket/common/parser/EBookLexer;->nb_abs_pos:I

    .line 187
    return-void
.end method

.method public sizeof_lex_parts()I
    .locals 3

    .prologue
    .line 486
    const/4 v1, 0x0

    .line 487
    .local v1, s:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 489
    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_0
    return v1
.end method

.method public start_state()I
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->el:Lcom/mobipocket/common/parser/EllieLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EllieLexer;->start_state()I

    move-result v0

    return v0
.end method

.method public try_buffer_load()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->nb_abs_pos:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getSBuffer(I)Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    .line 560
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 564
    new-instance v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/EBookLexer;->sizeof_lex_parts()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>(I)V

    .line 566
    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/EBookLexer;->concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 567
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    .line 568
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    iget v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;->currentPos:I

    iput v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->accepted:I

    .line 571
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookLexer;->currentBuffer:Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getNextBufferPos(Lcom/mobipocket/common/library/reader/bookreader/EBook$SBuffer;)I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/parser/EBookLexer;->nb_abs_pos:I

    .line 572
    const/4 v0, 0x1

    .line 574
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public unify_lex_interpret_entity(Lcom/mobipocket/common/parser/StrDescriptor;Z)I
    .locals 13
    .parameter "value"
    .parameter "concatenate"

    .prologue
    .line 807
    const/4 v0, 0x6

    new-array v11, v0, [I

    fill-array-data v11, :array_0

    .line 809
    .local v11, positions:[I
    const/4 v0, 0x1

    new-array v9, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-boolean v1, v9, v0

    .line 810
    .local v9, has_semicomma:[Z
    const/4 v0, 0x1

    new-array v10, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-boolean v1, v10, v0

    .line 812
    .local v10, numeric:[Z
    const/4 v0, 0x1

    new-array v7, v0, [C

    const/4 v0, 0x0

    const/16 v1, 0x20

    aput-char v1, v7, v0

    .line 816
    .local v7, dynamic:[C
    invoke-virtual {p0, v11, v9, v10}, Lcom/mobipocket/common/parser/EBookLexer;->find_lex_entity([I[Z[Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    aget v1, v11, v0

    const/4 v0, 0x5

    aget v2, v11, v0

    const/4 v0, 0x2

    aget v3, v11, v0

    const/4 v0, 0x3

    aget v4, v11, v0

    const/4 v0, 0x0

    aget-boolean v5, v9, v0

    const/4 v0, 0x0

    aget-boolean v6, v10, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/mobipocket/common/parser/EBookLexer;->identify_entity(IIIIZZ[C)I

    move-result v8

    .local v8, entity_code:I
    if-nez v8, :cond_2

    .line 820
    .end local v8           #entity_code:I
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_to(Lcom/mobipocket/common/parser/StrDescriptor;ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 821
    const/4 v0, 0x0

    .line 855
    :goto_0
    return v0

    .line 823
    :cond_1
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/EBookLexer;->get_text_type(Lcom/mobipocket/common/parser/StrDescriptor;)I

    move-result v0

    goto :goto_0

    .line 827
    .restart local v8       #entity_code:I
    :cond_2
    const/16 v0, 0x7fff

    if-ne v8, v0, :cond_4

    .line 829
    if-nez p2, :cond_3

    .line 830
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 831
    :cond_3
    const/4 v0, 0x0

    aget-char v0, v7, v0

    invoke-virtual {p1, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->concat(C)V

    .line 855
    :goto_1
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/EBookLexer;->get_text_type(Lcom/mobipocket/common/parser/StrDescriptor;)I

    move-result v0

    goto :goto_0

    .line 839
    :cond_4
    const/16 v0, 0xa5

    if-ne v8, v0, :cond_5

    .line 840
    const/4 v0, 0x5

    goto :goto_0

    .line 843
    :cond_5
    if-eqz p2, :cond_6

    .line 845
    invoke-static {v8}, Lcom/mobipocket/common/parser/TernaryTree;->get_entity_char(I)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mobipocket/common/parser/StrDescriptor;->concat(C)V

    goto :goto_1

    .line 849
    :cond_6
    const/4 v0, 0x1

    new-array v12, v0, [C

    .line 850
    .local v12, tempChartable:[C
    const/4 v0, 0x0

    invoke-static {v8}, Lcom/mobipocket/common/parser/TernaryTree;->get_entity_char(I)C

    move-result v1

    aput-char v1, v12, v0

    .line 851
    invoke-virtual {p1, v12}, Lcom/mobipocket/common/parser/StrDescriptor;->attach([C)V

    goto :goto_1

    .line 807
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public unify_lex_interpret_text(Lcom/mobipocket/common/parser/StrDescriptor;Z)I
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 860
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_to(Lcom/mobipocket/common/parser/StrDescriptor;ZZZ)Z

    .line 862
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/EBookLexer;->get_text_type(Lcom/mobipocket/common/parser/StrDescriptor;)I

    move-result v0

    return v0
.end method

.method unify_lex_to(Lcom/mobipocket/common/parser/StrDescriptor;ZZ)Z
    .locals 1
    .parameter "value"
    .parameter "check_entities"
    .parameter "check_quotes"

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_to(Lcom/mobipocket/common/parser/StrDescriptor;ZZZ)Z

    move-result v0

    return v0
.end method

.method unify_lex_to(Lcom/mobipocket/common/parser/StrDescriptor;ZZZ)Z
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_parts_count()I

    move-result v4

    const/4 v5, 0x1

    sub-int v5, v4, v5

    .line 593
    const/4 v6, 0x0

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/parser/StrDescriptor;

    .line 597
    if-eqz p3, :cond_9

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    move-object v7, v0

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mobipocket/common/parser/StrDescriptor;

    .line 602
    invoke-virtual {v4}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v7

    .line 603
    const/16 v8, 0x27

    if-eq v7, v8, :cond_0

    const/16 v8, 0x22

    if-ne v7, v8, :cond_1

    .line 605
    :cond_0
    invoke-virtual {v4}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->removeElementAt(I)V

    .line 608
    add-int/lit8 v5, v5, -0x1

    .line 609
    if-gez v5, :cond_5

    .line 610
    const/4 v4, 0x0

    .line 618
    :cond_1
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v8

    if-lez v8, :cond_2

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-eq v7, v8, :cond_3

    :cond_2
    const/16 v8, 0x22

    if-ne v7, v8, :cond_9

    .line 620
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    .line 622
    add-int/lit8 v6, v6, 0x1

    .line 623
    const/4 v7, 0x0

    move-object/from16 v0, p3

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->setLength(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    move-object v7, v0

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-object v12, v4

    move v13, v6

    move v14, v5

    .line 638
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/mobipocket/common/parser/EBookLexer;->sizeof_lex_parts()I

    move-result v15

    .line 640
    if-nez v15, :cond_a

    .line 642
    if-nez p4, :cond_4

    .line 643
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 644
    :cond_4
    const/4 v4, 0x1

    .line 760
    :goto_2
    return v4

    .line 612
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobipocket/common/parser/EBookLexer;->lex_parts:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mobipocket/common/parser/StrDescriptor;

    goto :goto_0

    .line 615
    :cond_6
    invoke-virtual {v4}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v4, v8}, Lcom/mobipocket/common/parser/StrDescriptor;->setLength(I)V

    goto :goto_0

    :cond_7
    move-object v12, v4

    move v13, v6

    move v14, v5

    .line 628
    goto :goto_1

    .line 632
    :cond_8
    move-object/from16 v0, p3

    iget v0, v0, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p3

    iput v0, v1, Lcom/mobipocket/common/parser/StrDescriptor;->start:I

    .line 633
    invoke-virtual/range {p3 .. p3}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move-object/from16 v0, p3

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->setLength(I)V

    :cond_9
    move-object v12, v4

    move v13, v6

    move v14, v5

    goto :goto_1

    .line 648
    :cond_a
    if-eqz p2, :cond_10

    const/4 v4, 0x3

    if-lt v15, v4, :cond_10

    .line 665
    const/4 v4, 0x6

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/4 v4, 0x0

    aput v13, v16, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v16, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v16, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v16, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v16, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput v5, v16, v4

    .line 667
    const/4 v4, 0x0

    .line 669
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v17, v5

    .line 670
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-boolean v6, v18, v5

    .line 672
    const/4 v5, 0x0

    .line 675
    const/4 v6, 0x1

    new-array v11, v6, [C

    const/4 v6, 0x0

    const/16 v7, 0x20

    aput-char v7, v11, v6

    move v7, v4

    move v6, v13

    move v4, v5

    .line 678
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/mobipocket/common/parser/EBookLexer;->find_lex_entity([I[Z[Z)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 683
    if-nez v4, :cond_15

    .line 685
    if-nez p4, :cond_b

    .line 686
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 690
    :cond_b
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate(I)V

    .line 691
    const/4 v4, 0x1

    move/from16 v19, v4

    .line 696
    :goto_4
    const/4 v4, 0x0

    aget v8, v16, v4

    const/4 v4, 0x1

    aget v9, v16, v4

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/mobipocket/common/parser/EBookLexer;->concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;IIII)V

    .line 700
    const/4 v4, 0x4

    aget v5, v16, v4

    const/4 v4, 0x5

    aget v6, v16, v4

    const/4 v4, 0x2

    aget v7, v16, v4

    const/4 v4, 0x3

    aget v8, v16, v4

    const/4 v4, 0x0

    aget-boolean v9, v17, v4

    const/4 v4, 0x0

    aget-boolean v10, v18, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/mobipocket/common/parser/EBookLexer;->identify_entity(IIIIZZ[C)I

    move-result v4

    .line 705
    if-eqz v4, :cond_d

    .line 707
    const/16 v5, 0x7fff

    if-ne v4, v5, :cond_c

    .line 709
    const/4 v4, 0x0

    aget-char v4, v11, v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(C)V

    .line 716
    :goto_5
    const/4 v4, 0x0

    const/4 v5, 0x2

    aget v5, v16, v5

    aput v5, v16, v4

    .line 717
    const/4 v4, 0x1

    const/4 v6, 0x3

    aget v6, v16, v6

    aput v6, v16, v4

    move v4, v6

    :goto_6
    move v7, v4

    move v6, v5

    move/from16 v4, v19

    .line 727
    goto :goto_3

    .line 713
    :cond_c
    invoke-static {v4}, Lcom/mobipocket/common/parser/TernaryTree;->get_entity_char(I)C

    move-result v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->concat_fast(C)V

    goto :goto_5

    .line 721
    :cond_d
    const/4 v4, 0x0

    aget v4, v16, v4

    .line 722
    const/4 v5, 0x1

    aget v5, v16, v5

    .line 724
    const/4 v6, 0x0

    const/4 v7, 0x2

    aget v7, v16, v7

    aput v7, v16, v6

    .line 725
    const/4 v6, 0x1

    const/4 v7, 0x3

    aget v7, v16, v7

    aput v7, v16, v6

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    goto :goto_6

    .line 730
    :cond_e
    if-eqz v4, :cond_10

    .line 732
    if-eqz v12, :cond_f

    .line 733
    invoke-virtual {v12}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v9

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v8, v14

    invoke-virtual/range {v4 .. v9}, Lcom/mobipocket/common/parser/EBookLexer;->concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;IIII)V

    .line 734
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 739
    :cond_10
    if-le v14, v13, :cond_12

    .line 742
    if-nez p4, :cond_11

    .line 743
    invoke-virtual/range {p1 .. p1}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 745
    :cond_11
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->allocate_more(I)V

    .line 747
    invoke-virtual/range {p0 .. p1}, Lcom/mobipocket/common/parser/EBookLexer;->concat_lex_parts(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 760
    :goto_7
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 751
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR :ASSERT(last_usefull_elem == first_usefull_elem)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v14, v13, :cond_13

    const/4 v5, 0x1

    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 752
    if-eqz p4, :cond_14

    .line 754
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_part(I)Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->concat(Lcom/mobipocket/common/parser/StrDescriptor;)V

    goto :goto_7

    .line 751
    :cond_13
    const/4 v5, 0x0

    goto :goto_8

    .line 757
    :cond_14
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->get_lex_part(I)Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->copy(Lcom/mobipocket/common/parser/StrDescriptor;)V

    goto :goto_7

    :cond_15
    move/from16 v19, v4

    goto/16 :goto_4
.end method
