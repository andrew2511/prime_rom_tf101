.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.source "SAX2DTM.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static final DEBUG:Z = false

.field private static final ENTITY_FIELDS_PER:I = 0x4

.field private static final ENTITY_FIELD_NAME:I = 0x3

.field private static final ENTITY_FIELD_NOTATIONNAME:I = 0x2

.field private static final ENTITY_FIELD_PUBLICID:I = 0x0

.field private static final ENTITY_FIELD_SYSTEMID:I = 0x1

.field private static final m_fixednames:[Ljava/lang/String;


# instance fields
.field protected m_chars:Lorg/apache/xml/utils/FastStringBuffer;

.field protected transient m_coalescedTextType:I

.field protected transient m_contextIndexes:Lorg/apache/xml/utils/IntStack;

.field protected m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

.field protected m_endDocumentOccured:Z

.field private m_entities:Ljava/util/Vector;

.field protected m_idAttributes:Ljava/util/Hashtable;

.field private m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field protected transient m_insideDTD:Z

.field protected transient m_locator:Lorg/xml/sax/Locator;

.field protected transient m_parents:Lorg/apache/xml/utils/IntStack;

.field m_pastFirstElement:Z

.field protected transient m_prefixMappings:Ljava/util/Vector;

.field protected transient m_previous:I

.field protected m_sourceColumn:Lorg/apache/xml/utils/IntVector;

.field protected m_sourceLine:Lorg/apache/xml/utils/IntVector;

.field protected m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

.field private transient m_systemId:Ljava/lang/String;

.field protected m_textPendingStart:I

.field protected transient m_textType:I

.field protected m_useSourceLocationProperty:Z

.field protected m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field protected m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 151
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, "#text"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "#cdata_section"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, "#comment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "#document"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v2, "#document-fragment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 17
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"

    .prologue
    .line 224
    const/16 v7, 0x200

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    .line 226
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V
    .registers 16
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"
    .parameter "blocksize"
    .parameter "usePrevsib"
    .parameter "newNameTable"

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 253
    invoke-direct/range {p0 .. p9}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    .line 67
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 97
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 102
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    .line 111
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    .line 117
    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    .line 120
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    .line 123
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    .line 126
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    .line 129
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    .line 137
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    .line 146
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    .line 164
    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    .line 194
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    .line 1828
    iput-boolean v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    .line 258
    const/16 v0, 0x40

    if-gt p7, v0, :cond_95

    .line 260
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v0, p7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 261
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-direct {v0, p7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 262
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 263
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v5}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    .line 264
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0, v4}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 265
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0, v4}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 282
    :goto_68
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 287
    invoke-virtual {p1}, Lorg/apache/xml/dtm/DTMManager;->getSource_location()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    .line 288
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_c6

    new-instance v0, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    :goto_7c
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    .line 289
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_c8

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :goto_87
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    .line 290
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_ca

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :goto_92
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    .line 291
    return-void

    .line 269
    :cond_95
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/16 v1, 0x20

    invoke-direct {v0, p7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 270
    new-instance v0, Lorg/apache/xml/utils/SuballocatedIntVector;

    const/16 v1, 0x20

    invoke-direct {v0, p7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    .line 271
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 272
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    const/16 v1, 0xd

    invoke-direct {v0, v5, v1}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    .line 273
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 274
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    goto :goto_68

    :cond_c6
    move-object v0, v2

    .line 288
    goto :goto_7c

    :cond_c8
    move-object v0, v2

    .line 289
    goto :goto_87

    :cond_ca
    move-object v0, v2

    .line 290
    goto :goto_92
.end method

.method private final isTextType(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 835
    const/4 v0, 0x3

    if-eq v0, p1, :cond_6

    const/4 v0, 0x4

    if-ne v0, p1, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method protected _dataOrQName(I)I
    .registers 4
    .parameter "identity"

    .prologue
    .line 312
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    if-ge p1, v1, :cond_b

    .line 313
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    .line 325
    :goto_a
    return v1

    .line 320
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    move-result v0

    .line 322
    .local v0, isMore:Z
    if-nez v0, :cond_13

    .line 323
    const/4 v1, -0x1

    goto :goto_a

    .line 324
    :cond_13
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    if-ge p1, v1, :cond_b

    .line 325
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    goto :goto_a
.end method

.method protected addNewDTMID(I)V
    .registers 7
    .parameter "nodeIndex"

    .prologue
    .line 927
    :try_start_0
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    if-nez v3, :cond_17

    .line 928
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    throw v3
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_a} :catch_a

    .line 936
    :catch_a
    move-exception v3

    move-object v0, v3

    .line 941
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "ER_NO_DTMIDS_AVAIL"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    .line 943
    .end local v0           #e:Ljava/lang/ClassCastException;
    :goto_16
    return-void

    .line 931
    :cond_17
    :try_start_17
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_mgr:Lorg/apache/xml/dtm/DTMManager;

    check-cast v2, Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    .line 932
    .local v2, mgrD:Lorg/apache/xml/dtm/ref/DTMManagerDefault;
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v1

    .line 933
    .local v1, id:I
    invoke-virtual {v2, p0, v1, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    .line 934
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v4, v1, 0x10

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_29} :catch_a

    goto :goto_16
.end method

.method protected addNode(IIIIIZ)I
    .registers 12
    .parameter "type"
    .parameter "expandedTypeID"
    .parameter "parentIndex"
    .parameter "previousSibling"
    .parameter "dataOrPrefix"
    .parameter "canHaveFirstChild"

    .prologue
    const/4 v4, -0x2

    const/4 v3, -0x1

    .line 872
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    .line 875
    .local v0, nodeIndex:I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    ushr-int/lit8 v2, v0, 0x10

    if-ne v1, v2, :cond_15

    .line 877
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNewDTMID(I)V

    .line 880
    :cond_15
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz p6, :cond_59

    move v2, v4

    :goto_1a
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 881
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 882
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 883
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 884
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 886
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v1, :cond_3a

    .line 887
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 890
    :cond_3a
    if-eq v3, p4, :cond_41

    .line 891
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 894
    :cond_41
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v1, :cond_4c

    .line 895
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setSourceLocation()V

    .line 902
    :cond_4c
    sparse-switch p1, :sswitch_data_60

    .line 910
    if-ne v3, p4, :cond_58

    if-eq v3, p3, :cond_58

    .line 911
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 916
    :cond_58
    :goto_58
    :sswitch_58
    return v0

    :cond_59
    move v2, v3

    .line 880
    goto :goto_1a

    .line 905
    :sswitch_5b
    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->declareNamespaceInContext(II)V

    goto :goto_58

    .line 902
    nop

    :sswitch_data_60
    .sparse-switch
        0x2 -> :sswitch_58
        0xd -> :sswitch_5b
    .end sparse-switch
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "eName"
    .parameter "aName"
    .parameter "type"
    .parameter "valueDefault"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2278
    return-void
.end method

.method public characters([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 2070
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 2072
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    .line 2073
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    .line 2084
    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 2085
    return-void

    .line 2079
    :cond_18
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    if-ne v0, v2, :cond_12

    .line 2081
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    goto :goto_12
.end method

.method protected charactersFlush()V
    .registers 11

    .prologue
    const/4 v9, 0x3

    .line 1516
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    if-ltz v0, :cond_2e

    .line 1518
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    sub-int v8, v0, v1

    .line 1519
    .local v8, length:I
    const/4 v7, 0x0

    .line 1521
    .local v7, doStrip:Z
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getShouldStripWhitespace()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1523
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1, v8}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v7

    .line 1526
    :cond_1e
    if-eqz v7, :cond_2f

    .line 1527
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 1544
    :cond_27
    :goto_27
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    .line 1545
    iput v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iput v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    .line 1547
    .end local v7           #doStrip:Z
    .end local v8           #length:I
    :cond_2e
    return-void

    .line 1531
    .restart local v7       #doStrip:Z
    .restart local v8       #length:I
    :cond_2f
    if-lez v8, :cond_27

    .line 1532
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, v9}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v2

    .line 1533
    .local v2, exName:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v5

    .line 1535
    .local v5, dataIndex:I
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_coalescedTextType:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 1538
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1539
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_27
.end method

.method public clearCoRoutine()V
    .registers 2

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    .line 335
    return-void
.end method

.method public clearCoRoutine(Z)V
    .registers 4
    .parameter "callDoTerminate"

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_f

    .line 349
    if-eqz p1, :cond_c

    .line 350
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    .line 352
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 354
    :cond_f
    return-void
.end method

.method public comment([CII)V
    .registers 11
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 2448
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    if-eqz v0, :cond_7

    .line 2463
    :goto_6
    return-void

    .line 2451
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 2453
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v2

    .line 2457
    .local v2, exName:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    .line 2461
    .local v5, dataIndex:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    goto :goto_6
.end method

.method protected declAlreadyDeclared(Ljava/lang/String;)Z
    .registers 8
    .parameter "prefix"

    .prologue
    .line 1810
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v5}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v4

    .line 1811
    .local v4, startDecls:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    .line 1812
    .local v3, prefixMappings:Ljava/util/Vector;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1814
    .local v1, nDecls:I
    move v0, v4

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_22

    .line 1816
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1818
    .local v2, prefixDecl:Ljava/lang/String;
    if-nez v2, :cond_1a

    .line 1814
    :cond_17
    add-int/lit8 v0, v0, 0x2

    goto :goto_d

    .line 1821
    :cond_1a
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1822
    const/4 v5, 0x1

    .line 1825
    .end local v2           #prefixDecl:Ljava/lang/String;
    :goto_21
    return v5

    :cond_22
    const/4 v5, 0x0

    goto :goto_21
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .registers 16
    .parameter "nodeHandle"
    .parameter "ch"
    .parameter "normalize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 504
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v2

    .line 506
    .local v2, identity:I
    if-ne v2, v10, :cond_9

    .line 579
    :cond_8
    :goto_8
    return-void

    .line 509
    :cond_9
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v7

    .line 511
    .local v7, type:I
    invoke-direct {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 513
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v8, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 514
    .local v0, dataIndex:I
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    .line 515
    .local v4, offset:I
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 517
    .local v3, length:I
    if-eqz p3, :cond_2f

    .line 518
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_8

    .line 520
    :cond_2f
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_8

    .line 524
    .end local v0           #dataIndex:I
    .end local v3           #length:I
    .end local v4           #offset:I
    :cond_35
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_firstch(I)I

    move-result v1

    .line 526
    .local v1, firstChild:I
    if-eq v10, v1, :cond_7a

    .line 528
    const/4 v4, -0x1

    .line 529
    .restart local v4       #offset:I
    const/4 v3, 0x0

    .line 530
    .restart local v3       #length:I
    move v5, v2

    .line 532
    .local v5, startNode:I
    move v2, v1

    .line 535
    :cond_3f
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v7

    .line 537
    invoke-direct {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 539
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    .line 541
    .restart local v0       #dataIndex:I
    if-ne v10, v4, :cond_55

    .line 543
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v8, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    .line 546
    :cond_55
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    add-int/2addr v3, v8

    .line 549
    .end local v0           #dataIndex:I
    :cond_5e
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    move-result v2

    .line 550
    if-eq v10, v2, :cond_6a

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_parent(I)I

    move-result v8

    if-ge v8, v5, :cond_3f

    .line 552
    :cond_6a
    if-lez v3, :cond_8

    .line 554
    if-eqz p3, :cond_74

    .line 555
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_8

    .line 557
    :cond_74
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v8, p2, v4, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_8

    .line 560
    .end local v3           #length:I
    .end local v4           #offset:I
    .end local v5           #startNode:I
    :cond_7a
    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    .line 562
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    .line 564
    .restart local v0       #dataIndex:I
    if-gez v0, :cond_8c

    .line 566
    neg-int v0, v0

    .line 567
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 570
    :cond_8c
    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v8, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, str:Ljava/lang/String;
    if-eqz p3, :cond_a1

    .line 573
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v11, v9, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    goto/16 :goto_8

    .line 576
    :cond_a1
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-interface {p2, v8, v11, v9}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_8
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .registers 7
    .parameter "nodeHandle"
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_walker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    .line 738
    .local v1, treeWalker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->getcontentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 740
    .local v0, prevCH:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_e

    .line 742
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMTreeWalker;

    .end local v1           #treeWalker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    invoke-direct {v1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;-><init>()V

    .line 745
    .restart local v1       #treeWalker:Lorg/apache/xml/dtm/ref/DTMTreeWalker;
    :cond_e
    invoke-virtual {v1, p2}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 746
    invoke-virtual {v1, p0}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setDTM(Lorg/apache/xml/dtm/DTM;)V

    .line 750
    :try_start_14
    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->traverse(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1b

    .line 754
    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 756
    return-void

    .line 754
    :catchall_1b
    move-exception v2

    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/DTMTreeWalker;->setcontentHandler(Lorg/xml/sax/ContentHandler;)V

    throw v2
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2251
    return-void
.end method

.method public endCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2430
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    .line 2431
    return-void
.end method

.method public endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    .line 2364
    return-void
.end method

.method public endDocument()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1715
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 1717
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v2, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 1719
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_19

    .line 1720
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v2, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 1722
    :cond_19
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    if-eq v2, v0, :cond_24

    .line 1723
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 1725
    :cond_24
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 1726
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    .line 1727
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 1729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    .line 1732
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    .line 1733
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 2027
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 2031
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 2034
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v1

    .line 2035
    .local v1, topContextIndex:I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1d

    .line 2036
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->setSize(I)V

    .line 2039
    :cond_1d
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2041
    .local v0, lastNode:I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v2

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2044
    if-ne v4, v0, :cond_34

    .line 2045
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    invoke-virtual {v2, v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 2049
    :goto_30
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->popShouldStripWhitespace()V

    .line 2050
    return-void

    .line 2047
    :cond_34
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, v4, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_30
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2405
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1779
    if-nez p1, :cond_5

    .line 1780
    const-string p1, ""

    .line 1782
    :cond_5
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v1

    sub-int v0, v1, v2

    .line 1786
    .local v0, index:I
    :cond_d
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    .line 1787
    if-ltz v0, :cond_1b

    and-int/lit8 v1, v0, 0x1

    if-eq v1, v2, :cond_d

    .line 1790
    :cond_1b
    const/4 v1, -0x1

    if-le v0, v1, :cond_2e

    .line 1792
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const-string v2, "%@$#^@#"

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1793
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const-string v2, "%@$#^@#"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1797
    :cond_2e
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2205
    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2320
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2227
    throw p1
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "nodeHandle"
    .parameter "namespaceURI"
    .parameter "name"

    .prologue
    const/4 v5, -0x1

    .line 1189
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getFirstAttribute(I)I

    move-result v0

    .local v0, attrH:I
    :goto_5
    if-eq v5, v0, :cond_2d

    .line 1192
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, attrNS:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, attrName:Ljava/lang/String;
    if-eq p2, v1, :cond_19

    if-eqz p2, :cond_25

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_19
    const/4 v4, 0x1

    move v3, v4

    .line 1198
    .local v3, nsMatch:Z
    :goto_1b
    if-eqz v3, :cond_28

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    move v4, v0

    .line 1202
    .end local v1           #attrNS:Ljava/lang/String;
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #nsMatch:Z
    :goto_24
    return v4

    .line 1194
    .restart local v1       #attrNS:Ljava/lang/String;
    .restart local v2       #attrName:Ljava/lang/String;
    :cond_25
    const/4 v4, 0x0

    move v3, v4

    goto :goto_1b

    .line 1190
    .restart local v3       #nsMatch:Z
    :cond_28
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextAttribute(I)I

    move-result v0

    goto :goto_5

    .end local v1           #attrNS:Ljava/lang/String;
    .end local v2           #attrName:Ljava/lang/String;
    .end local v3           #nsMatch:Z
    :cond_2d
    move v4, v5

    .line 1202
    goto :goto_24
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_c

    .line 407
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .end local p0
    check-cast p0, Lorg/xml/sax/ContentHandler;

    move-object v0, p0

    .line 409
    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    move-object v0, p0

    goto :goto_b
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 1

    .prologue
    .line 448
    return-object p0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .registers 1

    .prologue
    .line 468
    return-object p0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1217
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    .line 1219
    return-object v1
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 697
    const-string v0, "ER_METHOD_NOT_SUPPORTED"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->error(Ljava/lang/String;)V

    .line 699
    return-object v1
.end method

.method public getElementById(Ljava/lang/String;)I
    .registers 5
    .parameter "elementId"

    .prologue
    .line 1364
    const/4 v1, 0x1

    .line 1368
    .local v1, isMore:Z
    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1370
    .local v0, intObj:Ljava/lang/Integer;
    if-eqz v0, :cond_14

    .line 1371
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeHandle(I)I

    move-result v2

    .line 1380
    :goto_13
    return v2

    .line 1373
    :cond_14
    if-eqz v1, :cond_1a

    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-eqz v2, :cond_1c

    .line 1380
    :cond_1a
    :goto_1a
    const/4 v2, -0x1

    goto :goto_13

    .line 1376
    :cond_1c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    move-result v1

    .line 1378
    if-eqz v0, :cond_1

    goto :goto_1a
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 1

    .prologue
    .line 438
    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 1

    .prologue
    .line 458
    return-object p0
.end method

.method public getFixedNames(I)Ljava/lang/String;
    .registers 3
    .parameter "type"

    .prologue
    .line 2511
    sget-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getIdForNamespace(Ljava/lang/String;)I
    .registers 3
    .parameter "uri"

    .prologue
    .line 1465
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_c

    .line 426
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .end local p0
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v0, p0

    .line 428
    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    move-object v0, p0

    goto :goto_b
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 1042
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_exptype(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 1236
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_exptype(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "prefix"

    .prologue
    const/4 v3, 0x1

    .line 1478
    const-string v1, ""

    .line 1479
    .local v1, uri:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v2

    sub-int v0, v2, v3

    .line 1481
    .local v0, prefixIndex:I
    if-nez p1, :cond_f

    .line 1482
    const-string p1, ""

    .line 1486
    :cond_f
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    .line 1487
    if-ltz v0, :cond_1d

    and-int/lit8 v2, v0, 0x1

    if-eq v2, v3, :cond_f

    .line 1489
    :cond_1d
    const/4 v2, -0x1

    if-le v0, v2, :cond_2a

    .line 1491
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #uri:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1495
    .restart local v1       #uri:Ljava/lang/String;
    :cond_2a
    return-object v1
.end method

.method protected getNextNodeIdentity(I)I
    .registers 3
    .parameter "identity"

    .prologue
    .line 712
    add-int/lit8 p1, p1, 0x1

    .line 714
    :goto_2
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    if-lt p1, v0, :cond_10

    .line 716
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-nez v0, :cond_c

    .line 717
    const/4 v0, -0x1

    .line 722
    :goto_b
    return v0

    .line 719
    :cond_c
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->nextNode()Z

    goto :goto_2

    :cond_10
    move v0, p1

    .line 722
    goto :goto_b
.end method

.method public getNodeName(I)Ljava/lang/String;
    .registers 8
    .parameter "nodeHandle"

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getExpandedTypeID(I)I

    move-result v0

    .line 596
    .local v0, expandedTypeID:I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v1

    .line 598
    .local v1, namespaceID:I
    if-nez v1, :cond_4d

    .line 602
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNodeType(I)S

    move-result v3

    .line 604
    .local v3, type:I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_39

    .line 606
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1f

    .line 607
    const-string v4, "xmlns"

    .line 628
    .end local v3           #type:I
    :goto_1e
    return-object v4

    .line 609
    .restart local v3       #type:I
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xmlns:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 611
    :cond_39
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalNameID(I)I

    move-result v4

    if-nez v4, :cond_46

    .line 613
    sget-object v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_fixednames:[Ljava/lang/String;

    aget-object v4, v4, v3

    goto :goto_1e

    .line 616
    :cond_46
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 620
    .end local v3           #type:I
    :cond_4d
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    .line 622
    .local v2, qnameIndex:I
    if-gez v2, :cond_60

    .line 624
    neg-int v2, v2

    .line 625
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    .line 628
    :cond_60
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1e
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .registers 8
    .parameter "nodeHandle"

    .prologue
    .line 643
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getExpandedTypeID(I)I

    move-result v0

    .line 644
    .local v0, expandedTypeID:I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getNamespaceID(I)I

    move-result v2

    .line 646
    .local v2, namespaceID:I
    if-nez v2, :cond_19

    .line 648
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v4, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_17

    .line 651
    const-string v4, ""

    .line 665
    .end local v1           #name:Ljava/lang/String;
    :goto_16
    return-object v4

    .restart local v1       #name:Ljava/lang/String;
    :cond_17
    move-object v4, v1

    .line 653
    goto :goto_16

    .line 657
    .end local v1           #name:Ljava/lang/String;
    :cond_19
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 659
    .local v3, qnameIndex:I
    if-gez v3, :cond_2c

    .line 661
    neg-int v3, v3

    .line 662
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 665
    :cond_2c
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_16
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .registers 9
    .parameter "nodeHandle"

    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v1

    .line 1002
    .local v1, identity:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v4

    .line 1004
    .local v4, type:I
    invoke-direct {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1006
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    .line 1007
    .local v0, dataIndex:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 1008
    .local v3, offset:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    .line 1011
    .local v2, length:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v5, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v5

    .line 1028
    .end local v0           #dataIndex:I
    .end local v2           #length:I
    .end local v3           #offset:I
    :goto_26
    return-object v5

    .line 1013
    :cond_27
    const/4 v5, 0x1

    if-eq v5, v4, :cond_32

    const/16 v5, 0xb

    if-eq v5, v4, :cond_32

    const/16 v5, 0x9

    if-ne v5, v4, :cond_34

    .line 1016
    :cond_32
    const/4 v5, 0x0

    goto :goto_26

    .line 1020
    :cond_34
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    .line 1022
    .restart local v0       #dataIndex:I
    if-gez v0, :cond_43

    .line 1024
    neg-int v0, v0

    .line 1025
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 1028
    :cond_43
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_26
.end method

.method public getNumberOfNodes()I
    .registers 2

    .prologue
    .line 765
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .registers 9
    .parameter "nodeHandle"

    .prologue
    const/4 v6, 0x0

    .line 1140
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v0

    .line 1141
    .local v0, identity:I
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v3

    .line 1143
    .local v3, type:I
    const/4 v4, 0x1

    if-ne v4, v3, :cond_20

    .line 1145
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v1

    .line 1147
    .local v1, prefixIndex:I
    if-nez v1, :cond_15

    .line 1148
    const-string v4, ""

    .line 1170
    .end local v1           #prefixIndex:I
    :goto_14
    return-object v4

    .line 1151
    .restart local v1       #prefixIndex:I
    :cond_15
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1153
    .local v2, qname:Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 1156
    .end local v1           #prefixIndex:I
    .end local v2           #qname:Ljava/lang/String;
    :cond_20
    const/4 v4, 0x2

    if-ne v4, v3, :cond_3b

    .line 1158
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v1

    .line 1160
    .restart local v1       #prefixIndex:I
    if-gez v1, :cond_3b

    .line 1162
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    .line 1164
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v4, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1166
    .restart local v2       #qname:Ljava/lang/String;
    invoke-virtual {p0, v2, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 1170
    .end local v1           #prefixIndex:I
    .end local v2           #qname:Ljava/lang/String;
    :cond_3b
    const-string v4, ""

    goto :goto_14
.end method

.method public getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "qname"
    .parameter "uri"

    .prologue
    const/16 v5, 0x3a

    const/4 v4, 0x0

    .line 1396
    const/4 v2, -0x1

    .line 1398
    .local v2, uriIndex:I
    if-eqz p2, :cond_53

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_53

    .line 1403
    :cond_c
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, p2, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v2

    .line 1404
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_c

    .line 1406
    if-ltz v2, :cond_26

    .line 1408
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    const/4 v4, 0x1

    sub-int v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1451
    .local v1, prefix:Ljava/lang/String;
    :goto_25
    return-object v1

    .line 1410
    .end local v1           #prefix:Ljava/lang/String;
    :cond_26
    if-eqz p1, :cond_51

    .line 1412
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1414
    .local v0, indexOfNSSep:I
    const-string v3, "xmlns"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1415
    const-string v1, ""

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_25

    .line 1416
    .end local v1           #prefix:Ljava/lang/String;
    :cond_37
    const-string v3, "xmlns:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1417
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_25

    .line 1419
    .end local v1           #prefix:Ljava/lang/String;
    :cond_46
    if-lez v0, :cond_4e

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .restart local v1       #prefix:Ljava/lang/String;
    :goto_4d
    goto :goto_25

    .end local v1           #prefix:Ljava/lang/String;
    :cond_4e
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_4d

    .line 1424
    .end local v0           #indexOfNSSep:I
    :cond_51
    const/4 v1, 0x0

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_25

    .line 1427
    .end local v1           #prefix:Ljava/lang/String;
    :cond_53
    if-eqz p1, :cond_7c

    .line 1429
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1431
    .restart local v0       #indexOfNSSep:I
    if-lez v0, :cond_6f

    .line 1433
    const-string v3, "xmlns:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 1434
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_25

    .line 1436
    .end local v1           #prefix:Ljava/lang/String;
    :cond_6a
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_25

    .line 1440
    .end local v1           #prefix:Ljava/lang/String;
    :cond_6f
    const-string v3, "xmlns"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1441
    const-string v1, ""

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_25

    .line 1443
    .end local v1           #prefix:Ljava/lang/String;
    :cond_7a
    const/4 v1, 0x0

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_25

    .line 1448
    .end local v0           #indexOfNSSep:I
    .end local v1           #prefix:Ljava/lang/String;
    :cond_7c
    const/4 v1, 0x0

    .restart local v1       #prefix:Ljava/lang/String;
    goto :goto_25
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .registers 7
    .parameter "node"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 2488
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_22

    .line 2491
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result p1

    .line 2494
    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v2, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/IntVector;->elementAt(I)I

    move-result v3

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2507
    :goto_21
    return-object v0

    .line 2499
    :cond_22
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_32

    .line 2501
    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1, v2, v2}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_21

    .line 2503
    :cond_32
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 2505
    new-instance v0, Lorg/apache/xml/dtm/ref/NodeLocator;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    invoke-direct {v0, v4, v1, v2, v2}, Lorg/apache/xml/dtm/ref/NodeLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_21

    :cond_3e
    move-object v0, v4

    .line 2507
    goto :goto_21
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .registers 12
    .parameter "nodeHandle"

    .prologue
    const/4 v9, -0x1

    .line 1250
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v2

    .line 1252
    .local v2, identity:I
    if-ne v2, v9, :cond_29

    .line 1253
    const/4 v6, -0x1

    .line 1257
    .local v6, type:I
    :goto_8
    invoke-direct {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1259
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    .line 1260
    .local v0, dataIndex:I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    .line 1261
    .local v4, offset:I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 1263
    .local v3, length:I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, v8, v4, v3}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    .line 1313
    .end local v0           #dataIndex:I
    .end local v3           #length:I
    .end local v4           #offset:I
    :goto_28
    return-object v7

    .line 1255
    .end local v6           #type:I
    :cond_29
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v6

    .restart local v6       #type:I
    goto :goto_8

    .line 1267
    :cond_2e
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_firstch(I)I

    move-result v1

    .line 1269
    .local v1, firstChild:I
    if-eq v9, v1, :cond_6e

    .line 1271
    const/4 v4, -0x1

    .line 1272
    .restart local v4       #offset:I
    const/4 v3, 0x0

    .line 1273
    .restart local v3       #length:I
    move v5, v2

    .line 1275
    .local v5, startNode:I
    move v2, v1

    .line 1278
    :cond_38
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v6

    .line 1280
    invoke-direct {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 1282
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    .line 1284
    .restart local v0       #dataIndex:I
    if-ne v9, v4, :cond_4e

    .line 1286
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    .line 1289
    :cond_4e
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    add-int/2addr v3, v7

    .line 1292
    .end local v0           #dataIndex:I
    :cond_57
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getNextNodeIdentity(I)I

    move-result v2

    .line 1293
    if-eq v9, v2, :cond_63

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_parent(I)I

    move-result v7

    if-ge v7, v5, :cond_38

    .line 1295
    :cond_63
    if-lez v3, :cond_8d

    .line 1297
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, v8, v4, v3}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    goto :goto_28

    .line 1300
    .end local v3           #length:I
    .end local v4           #offset:I
    .end local v5           #startNode:I
    :cond_6e
    const/4 v7, 0x1

    if-eq v6, v7, :cond_8d

    .line 1302
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    .line 1304
    .restart local v0       #dataIndex:I
    if-gez v0, :cond_80

    .line 1306
    neg-int v0, v0

    .line 1307
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 1309
    :cond_80
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v8, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    goto :goto_28

    .line 1313
    .end local v0           #dataIndex:I
    :cond_8d
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v7}, Lorg/apache/xml/utils/XMLStringFactory;->emptystr()Lorg/apache/xml/utils/XMLString;

    move-result-object v7

    goto :goto_28
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "name"

    .prologue
    .line 1082
    const-string v4, ""

    .line 1084
    .local v4, url:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    if-nez v6, :cond_8

    move-object v5, v4

    .line 1122
    .end local v4           #url:Ljava/lang/String;
    .local v5, url:Ljava/lang/String;
    :goto_7
    return-object v5

    .line 1087
    .end local v5           #url:Ljava/lang/String;
    .restart local v4       #url:Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1089
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_45

    .line 1091
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x3

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1093
    .local v0, ename:Ljava/lang/String;
    if-eqz v0, :cond_47

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1095
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1098
    .local v3, nname:Ljava/lang/String;
    if-eqz v3, :cond_45

    .line 1110
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #url:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1112
    .restart local v4       #url:Ljava/lang/String;
    if-nez v4, :cond_45

    .line 1114
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    add-int/lit8 v7, v1, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #url:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .end local v0           #ename:Ljava/lang/String;
    .end local v3           #nname:Ljava/lang/String;
    .restart local v4       #url:Ljava/lang/String;
    :cond_45
    move-object v5, v4

    .line 1122
    .end local v4           #url:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    goto :goto_7

    .line 1089
    .end local v5           #url:Ljava/lang/String;
    .restart local v0       #ename:Ljava/lang/String;
    .restart local v4       #url:Ljava/lang/String;
    :cond_47
    add-int/lit8 v1, v1, 0x4

    goto :goto_f
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2109
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->characters([CII)V

    .line 2110
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2298
    return-void
.end method

.method public isAttributeSpecified(I)Z
    .registers 3
    .parameter "attributeHandle"

    .prologue
    .line 682
    const/4 v0, 0x1

    return v0
.end method

.method public isWhitespace(I)Z
    .registers 9
    .parameter "nodeHandle"

    .prologue
    .line 1325
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeIdentity(I)I

    move-result v1

    .line 1327
    .local v1, identity:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_27

    .line 1328
    const/4 v4, -0x1

    .line 1332
    .local v4, type:I
    :goto_8
    invoke-direct {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->isTextType(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1334
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_dataOrQName(I)I

    move-result v0

    .line 1335
    .local v0, dataIndex:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 1336
    .local v3, offset:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    .line 1338
    .local v2, length:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v5, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v5

    .line 1340
    .end local v0           #dataIndex:I
    .end local v2           #length:I
    .end local v3           #offset:I
    :goto_26
    return v5

    .line 1330
    .end local v4           #type:I
    :cond_27
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->_type(I)S

    move-result v4

    .restart local v4       #type:I
    goto :goto_8

    .line 1340
    :cond_2c
    const/4 v5, 0x0

    goto :goto_26
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 8
    .parameter "manager"

    .prologue
    .line 953
    invoke-super {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->migrateTo(Lorg/apache/xml/dtm/DTMManager;)V

    .line 957
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v3

    .line 958
    .local v3, numDTMs:I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v0

    .line 959
    .local v0, dtmId:I
    const/4 v2, 0x0

    .line 960
    .local v2, nodeIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v3, :cond_27

    .line 962
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_dtmIdent:Lorg/apache/xml/utils/SuballocatedIntVector;

    shl-int/lit8 v5, v0, 0x10

    invoke-virtual {v4, v5, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 963
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_mgrDefault:Lorg/apache/xml/dtm/ref/DTMManagerDefault;

    invoke-virtual {v4, p0, v0, v2}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    .line 964
    add-int/lit8 v0, v0, 0x1

    .line 965
    const/high16 v4, 0x1

    add-int/2addr v2, v4

    .line 960
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 967
    :cond_27
    return-void
.end method

.method public needsTwoThreads()Z
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected nextNode()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 777
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-nez v1, :cond_8

    move v1, v2

    .line 823
    :goto_7
    return v1

    .line 780
    :cond_8
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_endDocumentOccured:Z

    if-eqz v1, :cond_11

    .line 782
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    move v1, v2

    .line 784
    goto :goto_7

    .line 787
    :cond_11
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    invoke-interface {v1, v3}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->deliverMoreNodes(Z)Ljava/lang/Object;

    move-result-object v0

    .line 796
    .local v0, gotMore:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_33

    .line 798
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_22

    .line 800
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #gotMore:Ljava/lang/Object;
    throw v0

    .line 802
    .restart local v0       #gotMore:Ljava/lang/Object;
    :cond_22
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_2e

    .line 804
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    check-cast v0, Ljava/lang/Exception;

    .end local v0           #gotMore:Ljava/lang/Object;
    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 807
    .restart local v0       #gotMore:Ljava/lang/Object;
    :cond_2e
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    move v1, v2

    .line 809
    goto :goto_7

    .line 814
    :cond_33
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_3a

    .line 818
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    :cond_3a
    move v1, v3

    .line 823
    goto :goto_7
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1606
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    .line 2133
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 2135
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2137
    .local v2, exName:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    .line 2139
    .local v5, dataIndex:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 2142
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 4
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1577
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .parameter "locator"

    .prologue
    .line 1676
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    .line 1677
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_systemId:Ljava/lang/String;

    .line 1678
    return-void
.end method

.method public setIDAttribute(Ljava/lang/String;I)V
    .registers 5
    .parameter "id"
    .parameter "elem"

    .prologue
    .line 1506
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_idAttributes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    return-void
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .registers 2
    .parameter "incrementalSAXSource"

    .prologue
    .line 378
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_incrementalSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 381
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 382
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 383
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 389
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 2476
    return-void
.end method

.method protected setSourceLocation()V
    .registers 4

    .prologue
    .line 974
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    .line 975
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    .line 976
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntVector;->addElement(I)V

    .line 981
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    if-eq v1, v2, :cond_5b

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CODING ERROR in Source Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, msg:Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 987
    .end local v0           #msg:Ljava/lang/String;
    :cond_5b
    return-void
.end method

.method public setUseSourceLocation(Z)V
    .registers 2
    .parameter "useSourceLocation"

    .prologue
    .line 299
    iput-boolean p1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_useSourceLocationProperty:Z

    .line 300
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2162
    return-void
.end method

.method public startCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2419
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_textType:I

    .line 2420
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_insideDTD:Z

    .line 2352
    return-void
.end method

.method public startDocument()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x9

    const/4 v3, -0x1

    .line 1693
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v7

    .line 1697
    .local v7, doc:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v7}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 1698
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 1700
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 1701
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 35
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1876
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->charactersFlush()V

    .line 1878
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-object v4, v0

    const/4 v5, 0x1

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1879
    .local v6, exName:I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1880
    .local v25, prefix:Ljava/lang/String;
    if-eqz v25, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 1883
    .local v9, prefixIndex:I
    :goto_2c
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    move v8, v0

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v13

    .line 1886
    .local v13, elemNode:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_indexing:Z

    move v4, v0

    if-eqz v4, :cond_50

    .line 1887
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->indexNode(II)V

    .line 1890
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 1892
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v27

    .line 1893
    .local v27, startDecls:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v24

    .line 1894
    .local v24, nDecls:I
    const/4 v14, -0x1

    .line 1896
    .local v14, prev:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    move v4, v0

    if-nez v4, :cond_a4

    .line 1899
    const-string v25, "xml"

    .line 1900
    const-string v21, "http://www.w3.org/XML/1998/namespace"

    .line 1901
    .local v21, declURL:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-object v4, v0

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v25

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    .end local v6           #exName:I
    move-result v6

    .line 1902
    .restart local v6       #exName:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v15

    .line 1903
    .local v15, val:I
    const/16 v11, 0xd

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v12, v6

    invoke-virtual/range {v10 .. v16}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v14

    .line 1905
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_pastFirstElement:Z

    .line 1908
    .end local v15           #val:I
    .end local v21           #declURL:Ljava/lang/String;
    :cond_a4
    move/from16 v22, v27

    .local v22, i:I
    :goto_a6
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_f9

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #prefix:Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 1912
    .restart local v25       #prefix:Ljava/lang/String;
    if-nez v25, :cond_c3

    .line 1908
    :goto_bc
    add-int/lit8 v22, v22, 0x2

    goto :goto_a6

    .line 1880
    .end local v9           #prefixIndex:I
    .end local v13           #elemNode:I
    .end local v14           #prev:I
    .end local v22           #i:I
    .end local v24           #nDecls:I
    .end local v27           #startDecls:I
    :cond_bf
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_2c

    .line 1915
    .restart local v9       #prefixIndex:I
    .restart local v13       #elemNode:I
    .restart local v14       #prev:I
    .restart local v22       #i:I
    .restart local v24       #nDecls:I
    .restart local v27       #startDecls:I
    :cond_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    move-object v4, v0

    add-int/lit8 v5, v22, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1917
    .restart local v21       #declURL:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-object v4, v0

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v25

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    .end local v6           #exName:I
    move-result v6

    .line 1919
    .restart local v6       #exName:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v15

    .line 1921
    .restart local v15       #val:I
    const/16 v11, 0xd

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v12, v6

    invoke-virtual/range {v10 .. v16}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v14

    goto :goto_bc

    .line 1925
    .end local v15           #val:I
    .end local v21           #declURL:Ljava/lang/String;
    :cond_f9
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v23

    .line 1927
    .local v23, n:I
    const/16 v22, 0x0

    :goto_ff
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1c4

    .line 1929
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v19

    .line 1930
    .local v19, attrUri:Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    .line 1931
    .local v18, attrQName:Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v28

    .line 1933
    .local v28, valString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1937
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v17

    .line 1939
    .local v17, attrLocalName:Ljava/lang/String;
    if-eqz v18, :cond_1aa

    const-string v4, "xmlns"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_147

    const-string v4, "xmlns:"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 1943
    :cond_147
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->declAlreadyDeclared(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_154

    .line 1927
    :goto_151
    add-int/lit8 v22, v22, 0x1

    goto :goto_ff

    .line 1946
    :cond_154
    const/16 v11, 0xd

    .line 1958
    .local v11, nodeType:I
    :cond_156
    :goto_156
    if-nez v28, :cond_15a

    .line 1959
    const-string v28, ""

    .line 1961
    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v15

    .line 1964
    .restart local v15       #val:I
    if-eqz v25, :cond_191

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v9

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v20

    .line 1971
    .local v20, dataIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v4, v0

    invoke-virtual {v4, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v4, v0

    invoke-virtual {v4, v15}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 1974
    move/from16 v0, v20

    neg-int v0, v0

    move v15, v0

    .line 1977
    .end local v20           #dataIndex:I
    :cond_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1978
    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v12, v6

    invoke-virtual/range {v10 .. v16}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->addNode(IIIIIZ)I

    move-result v14

    goto :goto_151

    .line 1950
    .end local v11           #nodeType:I
    .end local v15           #val:I
    :cond_1aa
    const/4 v11, 0x2

    .line 1952
    .restart local v11       #nodeType:I
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_156

    .line 1953
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIDAttribute(Ljava/lang/String;I)V

    goto :goto_156

    .line 1982
    .end local v11           #nodeType:I
    .end local v17           #attrLocalName:Ljava/lang/String;
    .end local v18           #attrQName:Ljava/lang/String;
    .end local v19           #attrUri:Ljava/lang/String;
    .end local v28           #valString:Ljava/lang/String;
    :cond_1c4
    const/4 v4, -0x1

    if-eq v4, v14, :cond_1d0

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v14}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 1985
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object v4, v0

    if-eqz v4, :cond_1fe

    .line 1987
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object v4, v0

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->makeNodeHandle(I)I

    move-result v5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v29

    .line 1988
    .local v29, wsv:S
    const/4 v4, 0x3

    move v0, v4

    move/from16 v1, v29

    if-ne v0, v1, :cond_216

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getShouldStripWhitespace()Z

    move-result v4

    move/from16 v26, v4

    .line 1992
    .local v26, shouldStrip:Z
    :goto_1f7
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->pushShouldStripWhitespace(Z)V

    .line 1995
    .end local v26           #shouldStrip:Z
    .end local v29           #wsv:S
    :cond_1fe
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_previous:I

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 1998
    return-void

    .line 1988
    .restart local v29       #wsv:S
    :cond_216
    const/4 v4, 0x2

    move v0, v4

    move/from16 v1, v29

    if-ne v0, v1, :cond_220

    const/4 v4, 0x1

    move/from16 v26, v4

    goto :goto_1f7

    :cond_220
    const/4 v4, 0x0

    move/from16 v26, v4

    goto :goto_1f7
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2392
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1756
    if-nez p1, :cond_4

    .line 1757
    const-string p1, ""

    .line 1758
    :cond_4
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1759
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1760
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "notationName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1631
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    if-nez v1, :cond_b

    .line 1633
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    .line 1638
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->getDocumentBaseURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_28

    move-result-object p3

    .line 1647
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1650
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1653
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1656
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->m_entities:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1657
    return-void

    .line 1641
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 1643
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2186
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2187
    return-void
.end method
