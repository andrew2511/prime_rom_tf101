.class public Lcom/mobipocket/common/parser/HTMLEBookParser;
.super Lcom/mobipocket/common/parser/EBookParser;
.source "HTMLEBookParser.java"


# static fields
.field public static final WaitAttrEq:I = 0x3

.field public static final WaitAttrName:I = 0x2

.field public static final WaitAttrValue:I = 0x4

.field public static final WaitCDataValue:I = 0x6

.field public static final WaitNothing:I = 0x0

.field public static final WaitScript:I = 0x5

.field public static final WaitTagName:I = 0x1

.field private static _ignore_NO_NCX_SUPPORT_SpanAttribute:Z

.field private static final nestedTablesEnabled:Z

.field private static onlyInlineTables:Z


# instance fields
.field private _RetrieveCdatacontent:Z

.field private attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

.field concatenate_count:[I

.field concatenate_text_to_return:[Z

.field private defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

.field private generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

.field private generated_closing_tags_index:I

.field private in_script:I

.field private neutralizeStackPosition:I

.field private raiseUnautorizedTableTag:Z

.field private styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

.field public tableEnabled:Z

.field private tableToFlattenIDs:Ljava/util/Vector;

.field private tagStack:Lcom/mobipocket/common/parser/TagStack;

.field private tag_is_closing:Z

.field private tag_name:S

.field private tag_stack_neutral:Z

.field private final text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

.field private tr_entity:I

.field private tr_is_closing:Z

.field private tr_stack_neutral:Z

.field private tr_tag_name:S

.field was_in_script:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobipocket/common/parser/HTMLEBookParser;->onlyInlineTables:Z

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mobipocket/common/parser/HTMLEBookParser;->_ignore_NO_NCX_SUPPORT_SpanAttribute:Z

    return-void
.end method

.method public constructor <init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V
    .locals 3
    .parameter "currentEBook"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/mobipocket/common/parser/EBookParser;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableToFlattenIDs:Ljava/util/Vector;

    .line 32
    iput-boolean v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->_RetrieveCdatacontent:Z

    .line 34
    iput-boolean v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->raiseUnautorizedTableTag:Z

    .line 56
    iput-boolean v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->was_in_script:Z

    .line 59
    new-instance v0, Lcom/mobipocket/common/parser/TagStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/TagStack;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    .line 60
    new-instance v0, Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    .line 64
    new-instance v0, Lcom/mobipocket/common/parser/TagStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/TagStack;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

    .line 65
    iput v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags_index:I

    .line 80
    new-instance v0, Lcom/mobipocket/common/parser/AttributeStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/AttributeStack;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    .line 94
    new-instance v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 95
    new-array v0, v2, [Z

    aput-boolean v1, v0, v1

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_text_to_return:[Z

    .line 96
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_count:[I

    .line 100
    iget-object v0, p1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    iget v0, v0, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->version:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 101
    sput-boolean v2, Lcom/mobipocket/common/parser/HTMLEBookParser;->onlyInlineTables:Z

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableToFlattenIDs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 107
    iput-boolean v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    .line 109
    new-instance v0, Lcom/mobipocket/common/parser/EBookLexer;

    invoke-direct {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    iput-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    .line 110
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    sget-object v1, Lcom/mobipocket/common/parser/LexingTables;->_CMLLLexerinit:Lcom/mobipocket/common/parser/LexingTables$SLexerInit;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/EBookLexer;->init_lexer(Lcom/mobipocket/common/parser/LexingTables$SLexerInit;)V

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->neutralizeStackPosition:I

    .line 112
    return-void
.end method

.method private emptyTagAttributes()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/AttributeStack;->removeAllElements()V

    .line 555
    return-void
.end method

.method private empty_text_entities()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/StrDescriptor;->reuse()V

    .line 548
    return-void
.end method

.method private handle_combining_chars(I[Z[I)I
    .locals 4
    .parameter "ent"
    .parameter "concat"
    .parameter "count"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 928
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/EBookLexer;->read_current_char()C

    move-result v0

    .line 930
    .local v0, a:C
    const/16 v1, 0x26

    if-eq v0, v1, :cond_2

    const/16 v1, 0x300

    if-lt v0, v1, :cond_0

    const/16 v1, 0x370

    if-lt v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x20d0

    if-lt v0, v1, :cond_1

    const/16 v1, 0x2100

    if-lt v0, v1, :cond_2

    :cond_1
    const v1, 0xfe20

    if-lt v0, v1, :cond_3

    const v1, 0xfe30

    if-ge v0, v1, :cond_3

    :cond_2
    aget v1, p3, v2

    if-ge v1, v3, :cond_3

    if-eq p1, v3, :cond_3

    .line 936
    const/4 v1, 0x1

    aput-boolean v1, p2, v2

    .line 937
    aget v1, p3, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p3, v2

    .line 938
    const/4 v1, 0x4

    .line 944
    :goto_0
    return v1

    .line 942
    :cond_3
    aput-boolean v2, p2, v2

    .line 943
    aput v2, p3, v2

    move v1, p1

    .line 944
    goto :goto_0
.end method

.method public static ignoreNoNCXSupport(Z)V
    .locals 0
    .parameter "ignoreIt"

    .prologue
    .line 122
    sput-boolean p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->_ignore_NO_NCX_SUPPORT_SpanAttribute:Z

    .line 123
    return-void
.end method

.method private initializeTableSupportParameters(I)V
    .locals 3
    .parameter "parserInitializationPosition"

    .prologue
    const/4 v2, 0x0

    .line 278
    iput-boolean v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->raiseUnautorizedTableTag:Z

    .line 280
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    .line 283
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableToFlattenIDs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableToFlattenIDs:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 285
    iput-boolean v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_1
    return-void
.end method

.method private interpretTagStack(I)Z
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x2c

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 982
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v0}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLTagEmpty(S)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 1128
    :goto_0
    return v0

    :cond_0
    move v0, v8

    .line 992
    :goto_1
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 993
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/AttributeStack;->attributeNameAt(I)S

    move-result v1

    const/16 v2, 0x78

    if-ne v1, v2, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 995
    goto :goto_0

    .line 992
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v0

    .line 1000
    iget-short v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v1}, Lcom/mobipocket/common/parser/EBookDTD;->htmlTagGroup(S)B

    move-result v1

    .line 1003
    iget-short v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v2}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLTagEmpty(S)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1005
    iput-boolean v9, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_stack_neutral:Z

    .line 1007
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getStackTagGroup()B

    move-result v2

    invoke-static {v2, v1}, Lcom/mobipocket/common/parser/EBookDTD;->htmlOpeningAutorized(BB)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-nez v0, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    :cond_4
    move v0, v9

    .line 1009
    goto :goto_0

    .line 1011
    :cond_5
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 1012
    goto :goto_0

    .line 1017
    :cond_6
    iget-boolean v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-nez v2, :cond_7

    iget-short v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v2}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLAutoclosingTag(S)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_7
    move v2, v9

    .line 1023
    :goto_2
    if-eqz v0, :cond_1b

    .line 1029
    invoke-static {v1}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLGroupAsItself(B)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-nez v3, :cond_d

    move v3, v9

    :goto_3
    move v4, v8

    .line 1035
    :cond_8
    invoke-virtual {p0, v4}, Lcom/mobipocket/common/parser/HTMLEBookParser;->openedTagFromTop(I)S

    move-result v5

    .line 1036
    invoke-static {v5}, Lcom/mobipocket/common/parser/EBookDTD;->htmlTagGroup(S)B

    move-result v6

    .line 1038
    if-eqz v3, :cond_f

    if-ne v6, v1, :cond_e

    move v5, v9

    .line 1040
    :goto_4
    invoke-static {v2, v1, v6}, Lcom/mobipocket/common/parser/EBookDTD;->htmlGroupCloses(ZBB)Z

    move-result v6

    .line 1042
    if-nez v5, :cond_9

    if-eqz v6, :cond_9

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_8

    :cond_9
    move v0, v4

    .line 1044
    if-eqz v5, :cond_12

    iget-short v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v2}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLAutoclosingTag(S)Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-eqz v2, :cond_12

    .line 1047
    :cond_a
    iget-boolean v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-nez v1, :cond_b

    .line 1048
    add-int/lit8 v0, v0, 0x1

    :cond_b
    move v1, v8

    .line 1053
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1055
    invoke-virtual {p0, v1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->openedTagFromTop(I)S

    move-result v2

    .line 1056
    iget-object v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v3, v2}, Lcom/mobipocket/common/parser/TagStack;->push(S)V

    .line 1053
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    move v2, v8

    .line 1020
    goto :goto_2

    :cond_d
    move v3, v8

    .line 1029
    goto :goto_3

    :cond_e
    move v5, v8

    .line 1038
    goto :goto_4

    :cond_f
    iget-short v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-ne v5, v7, :cond_10

    move v5, v9

    goto :goto_4

    :cond_10
    move v5, v8

    goto :goto_4

    :cond_11
    move v0, v8

    .line 1059
    goto/16 :goto_0

    .line 1062
    :cond_12
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-eqz v0, :cond_13

    .line 1064
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 1065
    goto/16 :goto_0

    .line 1069
    :cond_13
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getStackTagGroup()B

    move-result v0

    invoke-static {v0, v1}, Lcom/mobipocket/common/parser/EBookDTD;->htmlOpeningAutorized(BB)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1073
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v0}, Lcom/mobipocket/common/parser/EBookDTD;->isTagInsideTableComponent(S)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->raiseUnautorizedTableTag:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    if-eqz v0, :cond_14

    .line 1074
    iput v10, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_entity:I

    .line 1076
    :cond_14
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 1077
    goto/16 :goto_0

    .line 1081
    :cond_15
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-ne v0, v11, :cond_19

    move v0, v8

    .line 1084
    :goto_6
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1085
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/TagStack;->tagElementAt(I)S

    move-result v1

    if-ne v1, v11, :cond_16

    .line 1086
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 1087
    goto/16 :goto_0

    .line 1084
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1092
    :cond_17
    sget-boolean v0, Lcom/mobipocket/common/parser/HTMLEBookParser;->onlyInlineTables:Z

    if-eqz v0, :cond_1a

    move v0, v8

    .line 1095
    :goto_7
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1096
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/parser/AttributeStack;->attributeNameAt(I)S

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_18

    move v0, v9

    .line 1102
    :goto_8
    if-nez v0, :cond_1a

    .line 1103
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 1104
    goto/16 :goto_0

    .line 1095
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1109
    :cond_19
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v0}, Lcom/mobipocket/common/parser/EBookDTD;->isTagTableComponent(S)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1111
    iput-boolean v8, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_stack_neutral:Z

    :cond_1a
    move v0, v9

    .line 1113
    goto/16 :goto_0

    .line 1117
    :cond_1b
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-eqz v0, :cond_1c

    .line 1119
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 1120
    goto/16 :goto_0

    .line 1123
    :cond_1c
    if-eq v1, v10, :cond_1d

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1e

    :cond_1d
    move v0, v9

    .line 1125
    goto/16 :goto_0

    .line 1127
    :cond_1e
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 1128
    goto/16 :goto_0

    :cond_1f
    move v0, v8

    goto :goto_8
.end method

.method public static isHtml(Lcom/mobipocket/common/library/reader/bookreader/EBook;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextType()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0, v4}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->setTextType(I)V

    .line 133
    new-instance v0, Lcom/mobipocket/common/parser/HTMLEBookParser;

    invoke-direct {v0, p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z

    move v1, v3

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->get_next_entity()I

    move-result v2

    .line 141
    packed-switch v2, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextType()I

    move-result v0

    if-ne v0, v5, :cond_2

    move v0, v4

    :goto_1
    return v0

    :pswitch_1
    move v1, v4

    .line 152
    goto :goto_0

    .line 156
    :pswitch_2
    new-array v1, v4, [Z

    aput-boolean v3, v1, v3

    .line 157
    new-array v2, v4, [Z

    aput-boolean v3, v2, v3

    .line 158
    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/parser/HTMLEBookParser;->get_tag([Z[Z)S

    move-result v1

    .line 160
    if-ne v1, v4, :cond_3

    .line 162
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1, v5}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->setTextType(I)V

    move v1, v4

    goto :goto_0

    :pswitch_3
    move v1, v4

    .line 167
    goto :goto_0

    :cond_2
    move v0, v3

    .line 172
    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parse_one_entity()I
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 564
    new-array v0, v8, [I

    aput v7, v0, v7

    .line 565
    new-array v1, v8, [I

    aput v7, v1, v7

    .line 569
    iget v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    .line 571
    iget v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    if-ne v3, v8, :cond_2

    .line 573
    iput-boolean v8, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    .line 574
    iget-object v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v3, v9}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    :goto_0
    move v3, v2

    move v2, v7

    .line 592
    :cond_0
    iget-object v4, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookLexer;->get_global_lex_state()I

    move-result v4

    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookLexer;->start_state()I

    move-result v5

    if-ne v4, v5, :cond_4

    if-nez v3, :cond_4

    const/16 v4, 0x1e

    .line 597
    :goto_1
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v5, v0, v4}, Lcom/mobipocket/common/parser/EBookLexer;->get_one_lex([II)B

    move-result v4

    .line 599
    packed-switch v4, :pswitch_data_0

    .line 891
    :cond_1
    :goto_2
    if-ne v4, v9, :cond_0

    move v0, v7

    .line 893
    :goto_3
    return v0

    .line 576
    :cond_2
    iget v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 578
    iget-object v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v3, v8}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    goto :goto_0

    .line 582
    :cond_3
    iget-object v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    iget-object v4, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v4}, Lcom/mobipocket/common/parser/EBookLexer;->start_state()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    goto :goto_0

    .line 592
    :cond_4
    const v4, 0x7fffffff

    goto :goto_1

    .line 604
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR ASSERT (state != WaitNothing);"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v3, :cond_5

    move v5, v8

    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 605
    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v2, v10}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    .line 607
    iput v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    .line 608
    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_text_to_return:[Z

    aput-boolean v7, v2, v7

    .line 609
    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_count:[I

    aput v7, v2, v7

    move v2, v8

    .line 610
    goto :goto_2

    :cond_5
    move v5, v7

    .line 604
    goto :goto_4

    .line 615
    :pswitch_1
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    aget v6, v0, v7

    invoke-virtual {v5, v6, v1}, Lcom/mobipocket/common/parser/EBookLexer;->interpret_lex(I[I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 619
    aget v5, v1, v7

    const/16 v6, 0x10

    if-eq v5, v6, :cond_6

    aget v5, v1, v7

    const/4 v6, 0x6

    if-eq v5, v6, :cond_6

    .line 621
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_text_to_return:[Z

    aput-boolean v7, v5, v7

    .line 622
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_count:[I

    aput v7, v5, v7

    .line 625
    :cond_6
    aget v5, v1, v7

    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    .line 748
    :sswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR, parse_one_entity : HTMLEBookParser : (state != WaitNothing)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_d

    move v3, v8

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 749
    aget v3, v1, v7

    const/16 v5, 0x9

    if-ne v3, v5, :cond_e

    move v3, v8

    :goto_6
    iput-boolean v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_stack_neutral:Z

    .line 751
    if-nez v2, :cond_10

    .line 753
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    const/16 v1, 0x31

    if-ne v0, v1, :cond_7

    .line 755
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-eqz v0, :cond_f

    move v0, v7

    :goto_7
    iput v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    :cond_7
    move v0, v9

    .line 757
    goto/16 :goto_3

    .line 630
    :sswitch_1
    iput-boolean v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    .line 636
    const/4 v2, 0x6

    move v3, v2

    move v2, v7

    .line 639
    goto/16 :goto_2

    .line 645
    :sswitch_2
    iput-boolean v8, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    .line 648
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0, v1, v7, v7}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_to(Lcom/mobipocket/common/parser/StrDescriptor;ZZ)Z

    .line 649
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v0, v1, v7, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->mid_of(Lcom/mobipocket/common/parser/StrDescriptor;II)V

    .line 651
    const/4 v0, 0x6

    goto/16 :goto_3

    :sswitch_3
    move v0, v11

    .line 657
    goto/16 :goto_3

    .line 662
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTMLEBookParser : ASSERT (state == WaitNothing);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_8

    move v1, v8

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 667
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_text_to_return:[Z

    aget-boolean v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_interpret_entity(Lcom/mobipocket/common/parser/StrDescriptor;Z)I

    move-result v0

    .line 672
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_text_to_return:[Z

    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_count:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/mobipocket/common/parser/HTMLEBookParser;->handle_combining_chars(I[Z[I)I

    move-result v0

    goto/16 :goto_3

    :cond_8
    move v1, v7

    .line 662
    goto :goto_8

    .line 677
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR, parse_one_entity : HTMLEBookParser (state == WaitNothing)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_9

    move v1, v8

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 681
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_text_to_return:[Z

    aget-boolean v2, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_interpret_text(Lcom/mobipocket/common/parser/StrDescriptor;Z)I

    move-result v0

    .line 685
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_text_to_return:[Z

    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->concatenate_count:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/mobipocket/common/parser/HTMLEBookParser;->handle_combining_chars(I[Z[I)I

    move-result v0

    goto/16 :goto_3

    :cond_9
    move v1, v7

    .line 677
    goto :goto_9

    .line 693
    :sswitch_6
    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v2, v10}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    move v2, v8

    move v3, v8

    .line 695
    goto/16 :goto_2

    .line 697
    :sswitch_7
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v0, v1, v7, v7}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_to(Lcom/mobipocket/common/parser/StrDescriptor;ZZ)Z

    .line 700
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v2}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v0, v1, v7, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->mid_of(Lcom/mobipocket/common/parser/StrDescriptor;II)V

    .line 701
    iput-boolean v8, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    .line 702
    iput v8, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    .line 716
    iput-boolean v8, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->was_in_script:Z

    .line 717
    const/4 v0, 0x7

    goto/16 :goto_3

    .line 720
    :sswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR, parse_one_entity : HTMLEBookParser :(state == WaitNothing)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_a

    move v3, v8

    :goto_a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 722
    iput-boolean v8, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    move v2, v7

    move v3, v8

    .line 725
    goto/16 :goto_2

    :cond_a
    move v3, v7

    .line 720
    goto :goto_a

    .line 728
    :sswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR, parse_one_entity : HTMLEBookParser :(state == WaitNothing)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_b

    move v3, v8

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 730
    iput-boolean v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    move v2, v7

    move v3, v8

    .line 733
    goto/16 :goto_2

    :cond_b
    move v3, v7

    .line 728
    goto :goto_b

    .line 737
    :sswitch_a
    if-eq v3, v11, :cond_c

    .line 739
    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v2, v10}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    move v2, v8

    .line 740
    goto/16 :goto_2

    :cond_c
    move v3, v10

    .line 744
    goto/16 :goto_2

    :cond_d
    move v3, v7

    .line 748
    goto/16 :goto_5

    :cond_e
    move v3, v7

    .line 749
    goto/16 :goto_6

    .line 755
    :cond_f
    const/4 v0, 0x5

    goto/16 :goto_7

    .line 760
    :cond_10
    iput-short v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    move v3, v7

    .line 762
    goto/16 :goto_2

    .line 766
    :sswitch_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR, parse_one_entity : HTMLEBookParser (state != WaitNothing)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_11

    move v6, v8

    :goto_c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 768
    packed-switch v3, :pswitch_data_1

    .line 785
    :pswitch_2
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v5, v10}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    goto/16 :goto_2

    :cond_11
    move v6, v7

    .line 766
    goto :goto_c

    .line 772
    :pswitch_3
    invoke-virtual {p0, v8, v8}, Lcom/mobipocket/common/parser/HTMLEBookParser;->completeAttributeValue(ZZ)Z

    move v3, v9

    .line 776
    goto/16 :goto_2

    .line 780
    :pswitch_4
    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v2, v10}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    move v2, v8

    .line 781
    goto/16 :goto_2

    .line 791
    :sswitch_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERROR, parse_one_entity : HTMLEBookParser :(state != WaitNothing)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_13

    move v6, v8

    :goto_d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 793
    if-ne v3, v11, :cond_12

    .line 801
    iget-object v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    iput-boolean v8, v3, Lcom/mobipocket/common/parser/AttributeStack;->topComplete:Z

    move v3, v9

    .line 806
    :cond_12
    packed-switch v3, :pswitch_data_2

    :pswitch_5
    goto/16 :goto_2

    .line 810
    :pswitch_6
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookLexer;->identify_html_lex()S

    move-result v5

    iput-short v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    .line 812
    iget-boolean v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->was_in_script:Z

    if-eqz v5, :cond_14

    iget-short v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    const/16 v6, 0x31

    if-eq v5, v6, :cond_14

    .line 815
    const/4 v5, 0x5

    iput v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    .line 816
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v5, v8}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    goto/16 :goto_2

    :cond_13
    move v6, v7

    .line 791
    goto :goto_d

    .line 821
    :cond_14
    iput-boolean v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->was_in_script:Z

    .line 824
    iget-short v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v5}, Lcom/mobipocket/common/parser/EBookDTD;->isHTMLTag(S)Z

    move-result v5

    if-nez v5, :cond_15

    .line 825
    iput-short v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    .line 830
    :cond_15
    iget-boolean v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-nez v5, :cond_16

    iget-short v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-nez v5, :cond_18

    .line 832
    :cond_16
    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v2, v10}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    .line 834
    iget-short v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-nez v2, :cond_17

    move v2, v8

    .line 843
    :goto_e
    if-nez v2, :cond_1

    .line 844
    invoke-direct {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->emptyTagAttributes()V

    goto/16 :goto_2

    :cond_17
    move v2, v7

    .line 834
    goto :goto_e

    :cond_18
    move v3, v9

    .line 838
    goto :goto_e

    .line 856
    :pswitch_7
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v5}, Lcom/mobipocket/common/parser/EBookLexer;->identify_html_lex()S

    move-result v5

    .line 858
    if-nez v5, :cond_19

    move v6, v8

    .line 860
    :goto_f
    if-eqz v6, :cond_1a

    .line 862
    iget-object v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v5, v11}, Lcom/mobipocket/common/parser/EBookLexer;->set_global_lex_state(I)V

    goto/16 :goto_2

    :cond_19
    move v6, v7

    .line 858
    goto :goto_f

    .line 867
    :cond_1a
    iget-object v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v3, v5}, Lcom/mobipocket/common/parser/AttributeStack;->pushNewAttribute(S)V

    move v3, v11

    .line 871
    goto/16 :goto_2

    :pswitch_8
    move v3, v9

    .line 876
    goto/16 :goto_2

    :pswitch_9
    move v0, v7

    .line 889
    goto/16 :goto_3

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 625
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_6
        0x3 -> :sswitch_6
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_5
        0x7 -> :sswitch_b
        0x8 -> :sswitch_a
        0x9 -> :sswitch_0
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_7
        0x10 -> :sswitch_4
        0x12 -> :sswitch_3
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
    .end sparse-switch

    .line 768
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 806
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addTableToFlattenID(I)V
    .locals 2
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableToFlattenIDs:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableToFlattenIDs:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 307
    :cond_0
    return-void
.end method

.method public completeAttributeValue(ZZ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    .line 1144
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/AttributeStack;->peekAttributeValue()Lcom/mobipocket/common/parser/StrDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/mobipocket/common/parser/EBookLexer;->unify_lex_to(Lcom/mobipocket/common/parser/StrDescriptor;ZZ)Z

    move-result v0

    .line 1145
    if-eqz v0, :cond_1

    .line 1146
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mobipocket/common/parser/AttributeStack;->topComplete:Z

    .line 1154
    :cond_0
    :goto_0
    return v0

    .line 1149
    :cond_1
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/AttributeStack;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/AttributeStack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    return-object v0
.end method

.method public getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v0

    return v0
.end method

.method public getStackTagGroup()B
    .locals 1

    .prologue
    .line 1165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getStackTagGroup(I)B

    move-result v0

    return v0
.end method

.method public getStackTagGroup(I)B
    .locals 1
    .parameter "posFromTop"

    .prologue
    .line 1170
    invoke-virtual {p0, p1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->openedTagFromTop(I)S

    move-result v0

    invoke-static {v0}, Lcom/mobipocket/common/parser/EBookDTD;->htmlTagGroup(S)B

    move-result v0

    return v0
.end method

.method public get_cur_entity()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_entity:I

    return v0
.end method

.method public get_next_entity()I
    .locals 10

    .prologue
    const/16 v9, 0x25

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 323
    iget v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags_index:I

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 325
    iput-boolean v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_is_closing:Z

    .line 326
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

    iget v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags_index:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/TagStack;->tagElementAt(I)S

    move-result v0

    iput-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_tag_name:S

    .line 327
    iput-boolean v6, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_stack_neutral:Z

    .line 329
    iget v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags_index:I

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->removeAllElements()V

    .line 332
    iput v6, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags_index:I

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->neutralizeStackPosition:I

    if-le v0, v1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->pop()Ljava/lang/Object;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->pop()Ljava/lang/Object;

    .line 344
    :cond_2
    iput v5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_entity:I

    move v0, v5

    .line 509
    :goto_0
    return v0

    .line 352
    :cond_3
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-nez v0, :cond_15

    .line 354
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookLexer;->get_position()I

    move-result v1

    .line 357
    invoke-direct {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->parse_one_entity()I

    move-result v2

    .line 358
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    if-nez v0, :cond_5

    .line 366
    if-ne v2, v5, :cond_8

    .line 369
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-static {v0}, Lcom/mobipocket/common/parser/EBookDTD;->isTagInsideTableComponent(S)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 372
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-eqz v0, :cond_4

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parser#get_next_entity] Parser was in table disabled mode and a closing table tag was encountered (pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")- entering in table enabled mode..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    iput-boolean v7, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    .line 377
    :cond_4
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 378
    goto :goto_0

    .line 388
    :cond_5
    if-ne v2, v5, :cond_8

    .line 389
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_8

    .line 390
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getPosition()I

    move-result v3

    .line 391
    iget v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->neutralizeStackPosition:I

    if-gt v3, v0, :cond_6

    .line 392
    sub-int v0, v3, v7

    iput v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->neutralizeStackPosition:I

    .line 396
    :cond_6
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-nez v0, :cond_8

    move v4, v6

    .line 397
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableToFlattenIDs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 398
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableToFlattenIDs:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_7

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[parser#get_next_entity] A table which should be flattened was encountered (ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")- entering table disabled mode..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iput-boolean v6, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    .line 402
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->rejectTag()V

    move v0, v8

    .line 403
    goto/16 :goto_0

    .line 397
    :cond_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 413
    :cond_8
    sget-boolean v0, Lcom/mobipocket/common/parser/HTMLEBookParser;->_ignore_NO_NCX_SUPPORT_SpanAttribute:Z

    if-eqz v0, :cond_b

    if-ne v2, v5, :cond_b

    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-ne v0, v9, :cond_b

    .line 415
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    const/16 v3, 0x6f

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/parser/AttributeStack;->attributeStringValue(S)Ljava/lang/String;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_b

    const-string v3, "no-ncx-support"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v7

    .line 421
    :cond_9
    :goto_2
    if-lez v0, :cond_b

    if-eqz v2, :cond_b

    .line 423
    invoke-direct {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->parse_one_entity()I

    move-result v2

    .line 424
    iget-boolean v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-nez v3, :cond_a

    if-ne v2, v5, :cond_a

    iget-short v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-ne v3, v9, :cond_a

    .line 426
    add-int/lit8 v0, v0, 0x1

    .line 428
    :cond_a
    iget-boolean v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-eqz v3, :cond_9

    if-ne v2, v5, :cond_9

    iget-short v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-ne v3, v9, :cond_9

    .line 430
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_b
    move v0, v2

    .line 437
    iget-boolean v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->_RetrieveCdatacontent:Z

    if-nez v2, :cond_c

    const/4 v2, 0x6

    if-ne v0, v2, :cond_c

    .line 441
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->get_next_entity()I

    move-result v0

    goto/16 :goto_0

    .line 443
    :cond_c
    if-eqz v0, :cond_d

    if-eq v0, v7, :cond_d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_d

    const/4 v2, 0x5

    if-eq v0, v2, :cond_d

    const/4 v2, 0x7

    if-eq v0, v2, :cond_d

    const/4 v2, 0x6

    if-ne v0, v2, :cond_e

    .line 445
    :cond_d
    iput v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_entity:I

    goto/16 :goto_0

    .line 449
    :cond_e
    if-ne v0, v8, :cond_f

    move v0, v8

    .line 450
    goto/16 :goto_0

    .line 453
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR get_next_entity : HTMLEBOOKPARSER: ASSERT (entity == Tag):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v0, v5, :cond_10

    move v3, v7

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 455
    invoke-direct {p0, v1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->interpretTagStack(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 458
    iget v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_entity:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    .line 460
    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_10
    move v3, v6

    .line 453
    goto :goto_3

    :cond_11
    move v0, v8

    .line 465
    goto/16 :goto_0

    :cond_12
    move v1, v0

    .line 474
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR get_next_entity : HTMLEBOOKPARSER: ASSERT (tag_name != RET_None)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-eqz v2, :cond_16

    move v2, v7

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 476
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getPosition()I

    move-result v0

    iget v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->neutralizeStackPosition:I

    if-le v0, v2, :cond_17

    .line 478
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 479
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->pop()Ljava/lang/Object;

    .line 481
    :cond_13
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 483
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->pop()Ljava/lang/Object;

    .line 503
    :cond_14
    :goto_6
    iput v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_entity:I

    .line 504
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    iput-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_tag_name:S

    .line 505
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_is_closing:Z

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_is_closing:Z

    .line 506
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_stack_neutral:Z

    iput-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_stack_neutral:Z

    .line 508
    iput-short v6, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    move v0, v5

    .line 509
    goto/16 :goto_0

    :cond_15
    move v1, v5

    .line 471
    goto :goto_4

    :cond_16
    move v2, v6

    .line 474
    goto :goto_5

    .line 487
    :cond_17
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_stack_neutral:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getPosition()I

    move-result v0

    iget v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->neutralizeStackPosition:I

    if-le v0, v2, :cond_14

    .line 489
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    iget-short v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    invoke-virtual {v0, v2}, Lcom/mobipocket/common/parser/TagStack;->push(S)V

    .line 490
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    if-eqz v0, :cond_14

    .line 493
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 494
    new-instance v2, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-direct {v2, v0}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    move-object v0, v2

    .line 498
    :goto_7
    iget-short v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    iget-object v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->attributeStack:Lcom/mobipocket/common/parser/AttributeStack;

    invoke-virtual {v0, v2, v3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;->derive(SLcom/mobipocket/common/parser/AttributeStack;)V

    .line 499
    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v2, v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 496
    :cond_18
    new-instance v0, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-direct {v0, v2}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    goto :goto_7
.end method

.method public get_tag([Z[Z)S
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR in HTMLEBookParser in get_tag :ASSERT (tr_entity == Tag)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_entity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 526
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_is_closing:Z

    aput-boolean v0, p1, v3

    .line 527
    iget-boolean v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_stack_neutral:Z

    aput-boolean v0, p2, v3

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR in HTMLEBookParser in get_tag :ASSERT (!(tr_stack_neutral && tr_is_closing))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_stack_neutral:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_is_closing:Z

    if-nez v1, :cond_2

    :cond_0
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 531
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_tag_name:S

    return v0

    :cond_1
    move v1, v3

    .line 525
    goto :goto_0

    :cond_2
    move v1, v3

    .line 529
    goto :goto_1
.end method

.method public get_text()Lcom/mobipocket/common/parser/StrDescriptor;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->text_to_return:Lcom/mobipocket/common/parser/StrDescriptor;

    return-object v0
.end method

.method public hasMoreEntityAtCurrentPosition()Z
    .locals 1

    .prologue
    .line 1257
    iget-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->initializeTableSupportParameters(I)V

    .line 246
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->removeAllElements()V

    .line 247
    iput v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags_index:I

    .line 250
    iput-object p3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 253
    iput-short v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    .line 254
    invoke-direct {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->empty_text_entities()V

    .line 255
    invoke-direct {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->emptyTagAttributes()V

    .line 256
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookLexer;->empty_lex_parts()V

    .line 257
    iput p2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->neutralizeStackPosition:I

    .line 258
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    .line 260
    iput v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    .line 265
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->size()I

    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->size()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v1}, Lcom/mobipocket/common/parser/styles/StyleStack;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p4}, Lcom/mobipocket/common/parser/TagStack;->size()I

    invoke-virtual {p5}, Lcom/mobipocket/common/parser/styles/StyleStack;->size()I

    .line 268
    iput-object p4, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    .line 269
    iput-object p5, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    .line 270
    return-void
.end method

.method public init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->removeAllElements()V

    .line 189
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->removeAllElements()V

    .line 190
    iput v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->generated_closing_tags_index:I

    .line 192
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/styles/StyleStack;->removeAllElements()V

    .line 193
    iput-object p3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    .line 196
    iput-short v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    .line 197
    const/4 v0, 0x4

    iput v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tr_entity:I

    .line 198
    invoke-direct {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->empty_text_entities()V

    .line 199
    invoke-direct {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->emptyTagAttributes()V

    .line 200
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookLexer;->empty_lex_parts()V

    .line 201
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    .line 203
    iput v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->in_script:I

    .line 204
    iput-boolean v2, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->was_in_script:Z

    .line 206
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/HTMLEBookParser;->initializeTableSupportParameters(I)V

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->neutralizeStackPosition:I

    .line 211
    if-eqz p1, :cond_2

    .line 213
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0, v3}, Lcom/mobipocket/common/parser/TagStack;->push(S)V

    .line 214
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/TagStack;->push(S)V

    .line 215
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    new-instance v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-direct {v1, p3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/styles/StyleStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->styleStack:Lcom/mobipocket/common/parser/styles/StyleStack;

    new-instance v1, Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-direct {v1, p3}, Lcom/mobipocket/common/parser/styles/StyleDescriptor;-><init>(Lcom/mobipocket/common/parser/styles/StyleDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/styles/StyleStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/EBookLexer;->recover_html()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 226
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 222
    goto :goto_0

    :cond_2
    move v0, v3

    .line 226
    goto :goto_0
.end method

.method public loadParserState([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 1248
    return-void
.end method

.method public openedTagFromTop()S
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->peekTag()S

    move-result v0

    return v0
.end method

.method public openedTagFromTop(I)S
    .locals 1
    .parameter "posFromTop"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tagStack:Lcom/mobipocket/common/parser/TagStack;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/TagStack;->peekTagAt(I)S

    move-result v0

    return v0
.end method

.method public rejectTag()V
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tag_name:S

    .line 1160
    invoke-direct {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->emptyTagAttributes()V

    .line 1161
    return-void
.end method

.method public retrieveCdatacontent(Z)V
    .locals 0
    .parameter "retrieveCdatacontent"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->_RetrieveCdatacontent:Z

    .line 118
    return-void
.end method

.method public saveParserState(Lcom/mobipocket/common/parser/TagAndAttributeStack;I)[B
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x0

    .line 1203
    new-instance v0, Lcom/mobipocket/common/parser/TagStack;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/TagStack;-><init>()V

    .line 1205
    invoke-virtual {p0}, Lcom/mobipocket/common/parser/HTMLEBookParser;->getPosition()I

    move-result v1

    .line 1207
    if-eqz p1, :cond_0

    .line 1210
    new-instance v1, Lcom/mobipocket/common/parser/styles/StyleStack;

    invoke-direct {v1}, Lcom/mobipocket/common/parser/styles/StyleStack;-><init>()V

    .line 1212
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mobipocket/common/library/reader/ActiveArea;

    .line 1215
    iget-object v3, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->defaultStyle:Lcom/mobipocket/common/parser/styles/StyleDescriptor;

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/mobipocket/common/parser/TagAndAttributeStack;->completeStacks(Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;Lcom/mobipocket/common/parser/styles/StyleDescriptor;[Lcom/mobipocket/common/library/reader/ActiveArea;)V

    move v1, p2

    .line 1219
    :cond_0
    invoke-virtual {v0}, Lcom/mobipocket/common/parser/TagStack;->size()I

    move-result v2

    .line 1220
    add-int v3, v2, v7

    rem-int/lit8 v3, v3, 0x4

    sub-int v3, v4, v3

    .line 1221
    if-lt v3, v4, :cond_1

    move v3, v7

    .line 1222
    :cond_1
    mul-int/lit8 v4, v2, 0x1

    add-int/lit8 v4, v4, 0xc

    mul-int/lit8 v5, v7, 0x1

    add-int/lit8 v4, v4, 0x0

    add-int/2addr v4, v3

    .line 1223
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v6, v4, 0x4

    invoke-direct {v5, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1224
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1226
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1227
    invoke-virtual {v6, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1228
    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1229
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v7

    .line 1230
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1232
    invoke-virtual {v0, v1}, Lcom/mobipocket/common/parser/TagStack;->tagElementAt(I)S

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v7

    .line 1235
    :goto_1
    if-ge v0, v3, :cond_3

    .line 1237
    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1239
    :cond_3
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1240
    return-object v0
.end method

.method public setReturnUnautorizedTableTag(Z)V
    .locals 0
    .parameter "force"

    .prologue
    .line 1138
    iput-boolean p1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->raiseUnautorizedTableTag:Z

    .line 1139
    return-void
.end method

.method public setTableEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/mobipocket/common/parser/HTMLEBookParser;->tableEnabled:Z

    .line 317
    return-void
.end method
