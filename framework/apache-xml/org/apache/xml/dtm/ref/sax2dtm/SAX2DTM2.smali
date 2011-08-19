.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2DTM2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedSingletonIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedDescendantIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$DescendantIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAncestorIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AncestorIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedPrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$PrecedingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedAttributeIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$AttributeIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedFollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$FollowingSiblingIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedRootIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$TypedChildrenIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ParentIterator;,
        Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2$ChildrenIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString; = null

.field protected static final TEXT_LENGTH_BITS:I = 0xa

.field protected static final TEXT_LENGTH_MAX:I = 0x3ff

.field protected static final TEXT_OFFSET_BITS:I = 0x15

.field protected static final TEXT_OFFSET_MAX:I = 0x1fffff


# instance fields
.field protected m_MASK:I

.field protected m_SHIFT:I

.field protected m_blocksize:I

.field protected m_buildIdIndex:Z

.field private m_exptype_map:[[I

.field private m_exptype_map0:[I

.field protected m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_firstch_map:[[I

.field private m_firstch_map0:[I

.field private m_maxNodeIndex:I

.field private m_nextsib_map:[[I

.field private m_nextsib_map0:[I

.field private m_parent_map:[[I

.field private m_parent_map0:[I

.field private m_valueIndex:I

.field protected m_values:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1840
    new-instance v0, Lorg/apache/xml/utils/XMLStringDefault;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 18
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"

    .prologue
    .line 1851
    const/16 v7, 0x200

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZZ)V

    .line 1853
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZZ)V
    .registers 24
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"
    .parameter "blocksize"
    .parameter "usePrevsib"
    .parameter "buildIdIndex"
    .parameter "newNameTable"

    .prologue
    .line 1868
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;ZIZZ)V

    .line 1805
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    .line 1834
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    .line 1873
    const/4 v12, 0x0

    .local v12, shift:I
    :goto_1b
    ushr-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_22

    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 1875
    :cond_22
    const/4 v2, 0x1

    shl-int/2addr v2, v12

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    .line 1876
    iput v12, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    .line 1877
    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    .line 1879
    move/from16 v0, p9

    move-object v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    .line 1884
    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0x20

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/util/Vector;-><init>(II)V

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    .line 1886
    const/high16 v2, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    .line 1889
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    .line 1890
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    .line 1891
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    .line 1892
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap0()[I

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    .line 1893
    return-void
.end method


# virtual methods
.method public final _exptype(I)I
    .registers 3
    .parameter "identity"

    .prologue
    .line 1903
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    return v0
.end method

.method public final _exptype2(I)I
    .registers 4
    .parameter "identity"

    .prologue
    .line 1926
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1927
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget v0, v0, p1

    .line 1929
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_8
.end method

.method public final _exptype2Type(I)I
    .registers 3
    .parameter "exptype"

    .prologue
    const/4 v0, -0x1

    .line 2033
    if-eq v0, p1, :cond_b

    .line 2034
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v0

    .line 2036
    :cond_b
    return v0
.end method

.method public final _firstch2(I)I
    .registers 4
    .parameter "identity"

    .prologue
    .line 1958
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1959
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map0:[I

    aget v0, v0, p1

    .line 1961
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_8
.end method

.method public final _nextsib2(I)I
    .registers 4
    .parameter "identity"

    .prologue
    .line 1942
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1943
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map0:[I

    aget v0, v0, p1

    .line 1945
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_8
.end method

.method public final _parent2(I)I
    .registers 4
    .parameter "identity"

    .prologue
    .line 1974
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v0, :cond_9

    .line 1975
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map0:[I

    aget v0, v0, p1

    .line 1977
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_8
.end method

.method public final _type2(I)I
    .registers 6
    .parameter "identity"

    .prologue
    const/4 v3, -0x1

    .line 1990
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge p1, v1, :cond_14

    .line 1991
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget v0, v1, p1

    .line 1995
    .local v0, eType:I
    :goto_9
    if-eq v3, v0, :cond_22

    .line 1996
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v1

    .line 1998
    :goto_13
    return v1

    .line 1993
    .end local v0           #eType:I
    :cond_14
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v2, p1, v2

    aget-object v1, v1, v2

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v2, p1

    aget v0, v1, v2

    .restart local v0       #eType:I
    goto :goto_9

    :cond_22
    move v1, v3

    .line 1998
    goto :goto_13
.end method

.method protected final addNode(IIIIIZ)I
    .registers 11
    .parameter "type"
    .parameter "expandedTypeID"
    .parameter "parentIndex"
    .parameter "previousSibling"
    .parameter "dataOrPrefix"
    .parameter "canHaveFirstChild"

    .prologue
    const/4 v3, -0x1

    .line 2339
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_size:I

    .line 2343
    .local v0, nodeIndex:I
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    if-ne v0, v1, :cond_15

    .line 2345
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNewDTMID(I)V

    .line 2346
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    const/high16 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_maxNodeIndex:I

    .line 2349
    :cond_15
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2350
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2351
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2352
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p2}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2353
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p5}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2355
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v1, :cond_37

    .line 2356
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2359
    :cond_37
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_locator:Lorg/xml/sax/Locator;

    if-eqz v1, :cond_42

    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_useSourceLocationProperty:Z

    if-eqz v1, :cond_42

    .line 2360
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->setSourceLocation()V

    .line 2367
    :cond_42
    sparse-switch p1, :sswitch_data_5a

    .line 2375
    if-eq v3, p4, :cond_51

    .line 2376
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0, p4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 2384
    :cond_4c
    :goto_4c
    :sswitch_4c
    return v0

    .line 2370
    :sswitch_4d
    invoke-virtual {p0, p3, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->declareNamespaceInContext(II)V

    goto :goto_4c

    .line 2378
    :cond_51
    if-eq v3, p3, :cond_4c

    .line 2379
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, v0, p3}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    goto :goto_4c

    .line 2367
    nop

    :sswitch_data_5a
    .sparse-switch
        0x2 -> :sswitch_4c
        0xd -> :sswitch_4d
    .end sparse-switch
.end method

.method protected final charactersFlush()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x3

    .line 2394
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    if-ltz v0, :cond_2f

    .line 2396
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    sub-int v9, v0, v1

    .line 2397
    .local v9, length:I
    const/4 v8, 0x0

    .line 2399
    .local v8, doStrip:Z
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getShouldStripWhitespace()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2401
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    invoke-virtual {v0, v1, v9}, Lorg/apache/xml/utils/FastStringBuffer;->isWhitespace(II)Z

    move-result v8

    .line 2404
    :cond_1f
    if-eqz v8, :cond_30

    .line 2405
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 2434
    :cond_28
    :goto_28
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    .line 2435
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_coalescedTextType:I

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textType:I

    .line 2437
    .end local v8           #doStrip:Z
    .end local v9           #length:I
    :cond_2f
    return-void

    .line 2409
    .restart local v8       #doStrip:Z
    .restart local v9       #length:I
    :cond_30
    if-lez v9, :cond_28

    .line 2413
    const/16 v0, 0x3ff

    if-gt v9, v0, :cond_55

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    const v1, 0x1fffff

    if-gt v0, v1, :cond_55

    .line 2415
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_coalescedTextType:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    shl-int/lit8 v0, v0, 0xa

    add-int v5, v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    goto :goto_28

    .line 2423
    :cond_55
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    .line 2424
    .local v7, dataIndex:I
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_coalescedTextType:I

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    neg-int v5, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    .line 2427
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_textPendingStart:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2428
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    goto :goto_28
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

    .line 2261
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_insideDTD:Z

    if-eqz v0, :cond_7

    .line 2273
    :goto_6
    return-void

    .line 2264
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    .line 2268
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2269
    iget v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    .line 2271
    .local v5, dataIndex:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    goto :goto_6
.end method

.method protected final copyAttribute(IILorg/apache/xml/serializer/SerializationHandler;)V
    .registers 20
    .parameter "nodeID"
    .parameter "exptype"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    move-object v14, v0

    aget-object v5, v14, p2

    .line 3357
    .local v5, extType:Lorg/apache/xml/dtm/ref/ExtendedType;
    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v12

    .line 3358
    .local v12, uri:Ljava/lang/String;
    invoke-virtual {v5}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v6

    .line 3360
    .local v6, localName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 3361
    .local v9, prefix:Ljava/lang/String;
    const/4 v11, 0x0

    .line 3362
    .local v11, qname:Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v4

    .line 3363
    .local v4, dataIndex:I
    move v13, v4

    .line 3364
    .local v13, valueIndex:I
    if-gtz v4, :cond_44

    .line 3365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v14, v0

    neg-int v15, v4

    invoke-virtual {v14, v15}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v10

    .line 3366
    .local v10, prefixIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v14, v0

    neg-int v15, v4

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v13

    .line 3367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v14, v0

    invoke-virtual {v14, v10}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v11

    .line 3368
    const/16 v14, 0x3a

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 3369
    .local v3, colonIndex:I
    if-lez v3, :cond_44

    .line 3370
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3373
    .end local v3           #colonIndex:I
    .end local v10           #prefixIndex:I
    :cond_44
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_51

    .line 3374
    move-object/from16 v0, p3

    move-object v1, v9

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    :cond_51
    if-eqz v9, :cond_67

    move-object v7, v11

    .line 3378
    .local v7, nodeName:Ljava/lang/String;
    :goto_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3380
    .local v8, nodeValue:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object v1, v7

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3381
    return-void

    .end local v7           #nodeName:Ljava/lang/String;
    .end local v8           #nodeValue:Ljava/lang/String;
    :cond_67
    move-object v7, v6

    .line 3377
    goto :goto_54
.end method

.method protected final copyAttributes(ILorg/apache/xml/serializer/SerializationHandler;)V
    .registers 6
    .parameter "nodeID"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3329
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getFirstAttributeIdentity(I)I

    move-result v0

    .local v0, current:I
    :goto_4
    const/4 v2, -0x1

    if-eq v0, v2, :cond_13

    .line 3330
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    .line 3331
    .local v1, eType:I
    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->copyAttribute(IILorg/apache/xml/serializer/SerializationHandler;)V

    .line 3329
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextAttributeIdentity(I)I

    move-result v0

    goto :goto_4

    .line 3333
    .end local v1           #eType:I
    :cond_13
    return-void
.end method

.method protected final copyElement(IILorg/apache/xml/serializer/SerializationHandler;)Ljava/lang/String;
    .registers 12
    .parameter "nodeID"
    .parameter "exptype"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3196
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v0, v7, p2

    .line 3197
    .local v0, extType:Lorg/apache/xml/dtm/ref/ExtendedType;
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 3198
    .local v6, uri:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 3200
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_17

    .line 3201
    invoke-interface {p3, v1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    move-object v7, v1

    .line 3229
    :goto_16
    return-object v7

    .line 3205
    :cond_17
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    .line 3207
    .local v5, qnameIndex:I
    if-nez v5, :cond_29

    .line 3208
    invoke-interface {p3, v1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    .line 3209
    const-string v7, ""

    invoke-interface {p3, v7, v6}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    .line 3210
    goto :goto_16

    .line 3213
    :cond_29
    if-gez v5, :cond_32

    .line 3214
    neg-int v5, v5

    .line 3215
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    .line 3218
    :cond_32
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v7, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    .line 3219
    .local v4, qName:Ljava/lang/String;
    invoke-interface {p3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;)V

    .line 3220
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 3222
    .local v3, prefixIndex:I
    if-lez v3, :cond_4d

    .line 3223
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3228
    .local v2, prefix:Ljava/lang/String;
    :goto_48
    invoke-interface {p3, v2, v6}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    .line 3229
    goto :goto_16

    .line 3226
    .end local v2           #prefix:Ljava/lang/String;
    :cond_4d
    const/4 v2, 0x0

    .restart local v2       #prefix:Ljava/lang/String;
    goto :goto_48
.end method

.method protected final copyNS(ILorg/apache/xml/serializer/SerializationHandler;Z)V
    .registers 14
    .parameter "nodeID"
    .parameter "handler"
    .parameter "inScope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3251
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v7, :cond_21

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    if-ne v7, v8, :cond_21

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v7, :cond_21

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v7, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    if-ne v7, v8, :cond_21

    .line 3301
    :cond_20
    return-void

    .line 3258
    :cond_21
    const/4 v5, 0x0

    .line 3262
    .local v5, nsContext:Lorg/apache/xml/utils/SuballocatedIntVector;
    if-eqz p3, :cond_77

    .line 3263
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->findNamespaceContext(I)Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v5

    .line 3264
    if-eqz v5, :cond_20

    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    if-lt v7, v8, :cond_20

    .line 3267
    invoke-virtual {v5, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    .line 3272
    .local v2, nextNSNode:I
    :goto_38
    const/4 v6, 0x1

    .line 3273
    .local v6, nsIndex:I
    :goto_39
    const/4 v7, -0x1

    if-eq v2, v7, :cond_20

    .line 3275
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    .line 3276
    .local v1, eType:I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 3279
    .local v3, nodeName:Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3281
    .local v0, dataIndex:I
    if-gez v0, :cond_59

    .line 3282
    neg-int v0, v0

    .line 3283
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3286
    :cond_59
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3288
    .local v4, nodeValue:Ljava/lang/String;
    invoke-interface {p2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 3290
    if-eqz p3, :cond_7c

    .line 3291
    invoke-virtual {v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    if-ge v6, v7, :cond_20

    .line 3292
    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    .line 3293
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 3270
    .end local v0           #dataIndex:I
    .end local v1           #eType:I
    .end local v2           #nextNSNode:I
    .end local v3           #nodeName:Ljava/lang/String;
    .end local v4           #nodeValue:Ljava/lang/String;
    .end local v6           #nsIndex:I
    :cond_77
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    move-result v2

    .restart local v2       #nextNSNode:I
    goto :goto_38

    .line 3299
    .restart local v0       #dataIndex:I
    .restart local v1       #eType:I
    .restart local v3       #nodeName:Ljava/lang/String;
    .restart local v4       #nodeValue:Ljava/lang/String;
    .restart local v6       #nsIndex:I
    :cond_7c
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getNextNamespaceNode2(I)I

    move-result v2

    goto :goto_39
.end method

.method protected final copyTextNode(ILorg/apache/xml/serializer/SerializationHandler;)V
    .registers 8
    .parameter "nodeID"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3171
    const/4 v1, -0x1

    if-eq p1, v1, :cond_14

    .line 3172
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3173
    .local v0, dataIndex:I
    if-ltz v0, :cond_15

    .line 3174
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v2, v0, 0xa

    and-int/lit16 v3, v0, 0x3ff

    invoke-virtual {v1, p2, v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    .line 3182
    .end local v0           #dataIndex:I
    :cond_14
    :goto_14
    return-void

    .line 3178
    .restart local v0       #dataIndex:I
    :cond_15
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v2

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v4, v0

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    invoke-virtual {v1, p2, v2, v3}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_14
.end method

.method public final dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .registers 15
    .parameter "nodeHandle"
    .parameter "ch"
    .parameter "normalize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 3018
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    .line 3020
    .local v1, identity:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_8

    .line 3115
    :cond_7
    :goto_7
    return-void

    .line 3023
    :cond_8
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v6

    .line 3025
    .local v6, type:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_13

    const/16 v7, 0x9

    if-ne v6, v7, :cond_64

    .line 3027
    :cond_13
    move v4, v1

    .line 3028
    .local v4, startNode:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    .line 3029
    const/4 v7, -0x1

    if-eq v7, v1, :cond_7

    .line 3031
    const/4 v3, -0x1

    .line 3032
    .local v3, offset:I
    const/4 v2, 0x0

    .line 3036
    .local v2, length:I
    :cond_1d
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v6

    .line 3038
    const/4 v7, 0x3

    if-eq v6, v7, :cond_27

    const/4 v7, 0x4

    if-ne v6, v7, :cond_37

    .line 3040
    :cond_27
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3042
    .local v0, dataIndex:I
    if-ltz v0, :cond_49

    .line 3044
    const/4 v7, -0x1

    if-ne v7, v3, :cond_34

    .line 3046
    ushr-int/lit8 v3, v0, 0xa

    .line 3049
    :cond_34
    and-int/lit16 v7, v0, 0x3ff

    add-int/2addr v2, v7

    .line 3062
    .end local v0           #dataIndex:I
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    .line 3063
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v7

    if-ge v7, v4, :cond_1d

    .line 3065
    if-lez v2, :cond_7

    .line 3067
    if-eqz p3, :cond_5e

    .line 3068
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, p2, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_7

    .line 3053
    .restart local v0       #dataIndex:I
    :cond_49
    const/4 v7, -0x1

    if-ne v7, v3, :cond_53

    .line 3055
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 3058
    :cond_53
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_37

    .line 3070
    .end local v0           #dataIndex:I
    :cond_5e
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, p2, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_7

    .line 3074
    .end local v2           #length:I
    .end local v3           #offset:I
    .end local v4           #startNode:I
    :cond_64
    const/4 v7, 0x3

    if-eq v7, v6, :cond_6a

    const/4 v7, 0x4

    if-ne v7, v6, :cond_b8

    .line 3076
    :cond_6a
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3078
    .restart local v0       #dataIndex:I
    if-ltz v0, :cond_88

    .line 3080
    if-eqz p3, :cond_7e

    .line 3081
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v8, v0, 0xa

    and-int/lit16 v9, v0, 0x3ff

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto :goto_7

    .line 3084
    :cond_7e
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v8, v0, 0xa

    and-int/lit16 v9, v0, 0x3ff

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto :goto_7

    .line 3089
    :cond_88
    if-eqz p3, :cond_a1

    .line 3090
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v10, v0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v9

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters(Lorg/xml/sax/ContentHandler;II)I

    goto/16 :goto_7

    .line 3093
    :cond_a1
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v10, v0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v9

    invoke-virtual {v7, p2, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->sendSAXcharacters(Lorg/xml/sax/ContentHandler;II)V

    goto/16 :goto_7

    .line 3099
    .end local v0           #dataIndex:I
    :cond_b8
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3101
    .restart local v0       #dataIndex:I
    if-gez v0, :cond_c9

    .line 3103
    neg-int v0, v0

    .line 3104
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3107
    :cond_c9
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3109
    .local v5, str:Ljava/lang/String;
    if-eqz p3, :cond_e1

    .line 3110
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v7, v8, v9, p2}, Lorg/apache/xml/utils/FastStringBuffer;->sendNormalizedSAXcharacters([CIILorg/xml/sax/ContentHandler;)V

    goto/16 :goto_7

    .line 3113
    :cond_e1
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-interface {p2, v7, v8, v9}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_7
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 2304
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->endDocument()V

    .line 2308
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2309
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2310
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2311
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2314
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExtendedTypes()[Lorg/apache/xml/dtm/ref/ExtendedType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 2315
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    .line 2316
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_nextsib_map:[[I

    .line 2317
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_firstch_map:[[I

    .line 2318
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->getMap()[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parent_map:[[I

    .line 2319
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2229
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    .line 2233
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 2236
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v0

    .line 2237
    .local v0, topContextIndex:I
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_1c

    .line 2238
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    .line 2241
    :cond_1c
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    .line 2243
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->popShouldStripWhitespace()V

    .line 2244
    return-void
.end method

.method public final getExpandedTypeID2(I)I
    .registers 5
    .parameter "nodeHandle"

    .prologue
    const/4 v1, -0x1

    .line 2009
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v0

    .line 2013
    .local v0, nodeID:I
    if-eq v0, v1, :cond_f

    .line 2014
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_blocksize:I

    if-ge v0, v1, :cond_10

    .line 2015
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map0:[I

    aget v1, v1, v0

    .line 2020
    :cond_f
    :goto_f
    return v1

    .line 2017
    :cond_10
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_exptype_map:[[I

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_SHIFT:I

    ushr-int v2, v0, v2

    aget-object v1, v1, v2

    iget v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_MASK:I

    and-int/2addr v2, v0

    aget v1, v1, v2

    goto :goto_f
.end method

.method public final getFirstAttribute(I)I
    .registers 6
    .parameter "nodeHandle"

    .prologue
    const/4 v3, -0x1

    .line 2483
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v0

    .line 2485
    .local v0, nodeID:I
    if-ne v0, v3, :cond_9

    move v2, v3

    .line 2510
    :goto_8
    return v2

    .line 2488
    :cond_9
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    .line 2490
    .local v1, type:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_22

    .line 2495
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 2497
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v1

    .line 2499
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 2501
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v2

    goto :goto_8

    .line 2503
    :cond_1e
    const/16 v2, 0xd

    if-eq v2, v1, :cond_10

    :cond_22
    move v2, v3

    .line 2510
    goto :goto_8
.end method

.method protected getFirstAttributeIdentity(I)I
    .registers 5
    .parameter "identity"

    .prologue
    const/4 v2, -0x1

    .line 2522
    if-ne p1, v2, :cond_5

    move v1, v2

    .line 2548
    :goto_4
    return v1

    .line 2525
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    .line 2527
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1b

    .line 2532
    :cond_c
    add-int/lit8 p1, p1, 0x1

    .line 2535
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    .line 2537
    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    move v1, p1

    .line 2539
    goto :goto_4

    .line 2541
    :cond_17
    const/16 v1, 0xd

    if-eq v1, v0, :cond_c

    :cond_1b
    move v1, v2

    .line 2548
    goto :goto_4
.end method

.method public getIdForNamespace(Ljava/lang/String;)I
    .registers 5
    .parameter "uri"

    .prologue
    .line 2049
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2050
    .local v0, index:I
    if-gez v0, :cond_14

    .line 2052
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2053
    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    .line 2056
    :goto_13
    return v1

    :cond_14
    move v1, v0

    goto :goto_13
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 6
    .parameter "nodeHandle"

    .prologue
    .line 2639
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype(I)I

    move-result v1

    .line 2641
    .local v1, expType:I
    const/4 v2, 0x7

    if-ne v1, v2, :cond_21

    .line 2643
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v0

    .line 2644
    .local v0, dataIndex:I
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2645
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    .line 2648
    .end local v0           #dataIndex:I
    :goto_20
    return-object v2

    :cond_21
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v2, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_20
.end method

.method protected getNextAttributeIdentity(I)I
    .registers 4
    .parameter "identity"

    .prologue
    .line 2566
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2567
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    .line 2569
    .local v0, type:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    move v1, p1

    .line 2576
    :goto_a
    return v1

    .line 2571
    :cond_b
    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 2576
    const/4 v1, -0x1

    goto :goto_a
.end method

.method protected final getNextNamespaceNode2(I)I
    .registers 4
    .parameter "baseID"

    .prologue
    .line 3312
    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v0

    .local v0, type:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3314
    const/16 v1, 0xd

    if-ne v0, v1, :cond_f

    move v1, p1

    .line 3317
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public getNodeName(I)Ljava/lang/String;
    .registers 11
    .parameter "nodeHandle"

    .prologue
    .line 2710
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v4

    .line 2711
    .local v4, nodeID:I
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    .line 2713
    .local v1, eType:I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v2, v7, v1

    .line 2714
    .local v2, extType:Lorg/apache/xml/dtm/ref/ExtendedType;
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_61

    .line 2716
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v6

    .line 2718
    .local v6, type:I
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 2719
    .local v3, localName:Ljava/lang/String;
    const/16 v7, 0xd

    if-ne v6, v7, :cond_3f

    .line 2721
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2b

    .line 2722
    const-string v7, "xmlns"

    .line 2752
    .end local v3           #localName:Ljava/lang/String;
    .end local v6           #type:I
    :goto_2a
    return-object v7

    .line 2724
    .restart local v3       #localName:Ljava/lang/String;
    .restart local v6       #type:I
    :cond_2b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2a

    .line 2726
    :cond_3f
    const/4 v7, 0x7

    if-ne v6, v7, :cond_54

    .line 2728
    invoke-virtual {p0, v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v0

    .line 2729
    .local v0, dataIndex:I
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2730
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v7, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2a

    .line 2732
    .end local v0           #dataIndex:I
    :cond_54
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5f

    .line 2734
    invoke-virtual {p0, v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getFixedNames(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2a

    :cond_5f
    move-object v7, v3

    .line 2737
    goto :goto_2a

    .line 2741
    .end local v3           #localName:Ljava/lang/String;
    .end local v6           #type:I
    :cond_61
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    .line 2743
    .local v5, qnameIndex:I
    if-nez v5, :cond_6e

    .line 2744
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v7

    goto :goto_2a

    .line 2746
    :cond_6e
    if-gez v5, :cond_77

    .line 2748
    neg-int v5, v5

    .line 2749
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v7, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    .line 2752
    :cond_77
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v7, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2a
.end method

.method public final getNodeNameX(I)Ljava/lang/String;
    .registers 9
    .parameter "nodeHandle"

    .prologue
    .line 2663
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v3

    .line 2664
    .local v3, nodeID:I
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v1

    .line 2666
    .local v1, eType:I
    const/4 v5, 0x7

    if-ne v1, v5, :cond_1d

    .line 2668
    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v0

    .line 2669
    .local v0, dataIndex:I
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v6, v0

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2670
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    .line 2692
    .end local v0           #dataIndex:I
    :goto_1c
    return-object v5

    .line 2673
    :cond_1d
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v2, v5, v1

    .line 2675
    .local v2, extType:Lorg/apache/xml/dtm/ref/ExtendedType;
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_30

    .line 2677
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1c

    .line 2681
    :cond_30
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v3}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    .line 2683
    .local v4, qnameIndex:I
    if-nez v4, :cond_3d

    .line 2684
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1c

    .line 2686
    :cond_3d
    if-gez v4, :cond_46

    .line 2688
    neg-int v4, v4

    .line 2689
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v5, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    .line 2692
    :cond_46
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1c
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .registers 9
    .parameter "nodeHandle"

    .prologue
    .line 3129
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    .line 3130
    .local v1, identity:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    .line 3132
    .local v2, type:I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_e

    const/4 v3, 0x4

    if-ne v2, v3, :cond_36

    .line 3134
    :cond_e
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_dataOrQName(I)I

    move-result v0

    .line 3135
    .local v0, dataIndex:I
    if-lez v0, :cond_1f

    .line 3137
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v4, v0, 0xa

    and-int/lit16 v5, v0, 0x3ff

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v3

    .line 3161
    .end local v0           #dataIndex:I
    .end local p0
    :goto_1e
    return-object v3

    .line 3142
    .restart local v0       #dataIndex:I
    .restart local p0
    :cond_1f
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v6, v0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 3146
    .end local v0           #dataIndex:I
    :cond_36
    const/4 v3, 0x1

    if-eq v3, v2, :cond_41

    const/16 v3, 0xb

    if-eq v3, v2, :cond_41

    const/16 v3, 0x9

    if-ne v3, v2, :cond_43

    .line 3149
    :cond_41
    const/4 v3, 0x0

    goto :goto_1e

    .line 3153
    :cond_43
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3155
    .restart local v0       #dataIndex:I
    if-gez v0, :cond_54

    .line 3157
    neg-int v0, v0

    .line 3158
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 3161
    :cond_54
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    goto :goto_1e
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 2976
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v0

    .line 2977
    .local v0, child:I
    if-ne v0, v4, :cond_b

    const-string v2, ""

    .line 2990
    :goto_a
    return-object v2

    .line 2980
    :cond_b
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_42

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_nextsib2(I)I

    move-result v2

    if-ne v2, v4, :cond_42

    .line 2982
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v1

    .line 2983
    .local v1, dataIndex:I
    if-ltz v1, :cond_2b

    .line 2984
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v3, v1, 0xa

    and-int/lit16 v4, v1, 0x3ff

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 2986
    :cond_2b
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v5, v1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 2990
    .end local v1           #dataIndex:I
    :cond_42
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getDocument()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getStringValueX(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_a
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .registers 13
    .parameter "nodeHandle"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, -0x1

    .line 2775
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    .line 2776
    .local v1, identity:I
    if-ne v1, v8, :cond_c

    .line 2777
    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    .line 2868
    .end local p0
    :goto_b
    return-object v6

    .line 2779
    .restart local p0
    :cond_c
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v5

    .line 2781
    .local v5, type:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_17

    const/16 v6, 0x9

    if-ne v5, v6, :cond_74

    .line 2783
    :cond_17
    move v4, v1

    .line 2784
    .local v4, startNode:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    .line 2785
    if-eq v8, v1, :cond_71

    .line 2787
    const/4 v3, -0x1

    .line 2788
    .local v3, offset:I
    const/4 v2, 0x0

    .line 2792
    .local v2, length:I
    :cond_20
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v5

    .line 2794
    if-eq v5, v9, :cond_28

    if-ne v5, v10, :cond_37

    .line 2796
    :cond_28
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2797
    .local v0, dataIndex:I
    if-ltz v0, :cond_4e

    .line 2799
    if-ne v8, v3, :cond_34

    .line 2801
    ushr-int/lit8 v3, v0, 0xa

    .line 2804
    :cond_34
    and-int/lit16 v6, v0, 0x3ff

    add-int/2addr v2, v6

    .line 2817
    .end local v0           #dataIndex:I
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    .line 2818
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v6

    if-ge v6, v4, :cond_20

    .line 2820
    if-lez v2, :cond_6e

    .line 2822
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v6, :cond_62

    .line 2823
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v6, v7, v3, v2}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    goto :goto_b

    .line 2808
    .restart local v0       #dataIndex:I
    :cond_4e
    if-ne v8, v3, :cond_57

    .line 2810
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 2813
    :cond_57
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_37

    .line 2825
    .end local v0           #dataIndex:I
    :cond_62
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v7, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 2828
    :cond_6e
    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    goto :goto_b

    .line 2831
    .end local v2           #length:I
    .end local v3           #offset:I
    :cond_71
    sget-object v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->EMPTY_XML_STR:Lorg/apache/xml/utils/XMLString;

    goto :goto_b

    .line 2833
    .end local v4           #startNode:I
    :cond_74
    if-eq v9, v5, :cond_78

    if-ne v10, v5, :cond_de

    .line 2835
    :cond_78
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2836
    .restart local v0       #dataIndex:I
    if-ltz v0, :cond_a3

    .line 2838
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v6, :cond_92

    .line 2839
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v8, v0, 0xa

    and-int/lit16 v9, v0, 0x3ff

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    goto/16 :goto_b

    .line 2842
    :cond_92
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v8, v0, 0xa

    and-int/lit16 v9, v0, 0x3ff

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2847
    :cond_a3
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v6, :cond_c1

    .line 2848
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v10, v0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Lorg/apache/xml/utils/FastStringBuffer;II)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    goto/16 :goto_b

    .line 2851
    :cond_c1
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v10, v0

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 2857
    .end local v0           #dataIndex:I
    :cond_de
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2859
    .restart local v0       #dataIndex:I
    if-gez v0, :cond_ef

    .line 2861
    neg-int v0, v0

    .line 2862
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2865
    :cond_ef
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    if-eqz v6, :cond_103

    .line 2866
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_xstrf:Lorg/apache/xml/utils/XMLStringFactory;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v6

    goto/16 :goto_b

    .line 2868
    .restart local p0
    :cond_103
    new-instance v6, Lorg/apache/xml/utils/XMLStringDefault;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-direct {v6, p0}, Lorg/apache/xml/utils/XMLStringDefault;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public final getStringValueX(I)Ljava/lang/String;
    .registers 13
    .parameter "nodeHandle"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, -0x1

    .line 2888
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    .line 2889
    .local v1, identity:I
    if-ne v1, v8, :cond_c

    .line 2890
    const-string v6, ""

    .line 2967
    .end local p0
    :goto_b
    return-object v6

    .line 2892
    .restart local p0
    :cond_c
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v5

    .line 2894
    .local v5, type:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_17

    const/16 v6, 0x9

    if-ne v5, v6, :cond_62

    .line 2896
    :cond_17
    move v4, v1

    .line 2897
    .local v4, startNode:I
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_firstch2(I)I

    move-result v1

    .line 2898
    if-eq v8, v1, :cond_5f

    .line 2900
    const/4 v3, -0x1

    .line 2901
    .local v3, offset:I
    const/4 v2, 0x0

    .line 2905
    .local v2, length:I
    :cond_20
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v5

    .line 2907
    if-eq v5, v9, :cond_28

    if-ne v5, v10, :cond_37

    .line 2909
    :cond_28
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2910
    .local v0, dataIndex:I
    if-ltz v0, :cond_48

    .line 2912
    if-ne v8, v3, :cond_34

    .line 2914
    ushr-int/lit8 v3, v0, 0xa

    .line 2917
    :cond_34
    and-int/lit16 v6, v0, 0x3ff

    add-int/2addr v2, v6

    .line 2930
    .end local v0           #dataIndex:I
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, 0x1

    .line 2931
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_parent2(I)I

    move-result v6

    if-ge v6, v4, :cond_20

    .line 2933
    if-lez v2, :cond_5c

    .line 2935
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v6, v3, v2}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    .line 2921
    .restart local v0       #dataIndex:I
    :cond_48
    if-ne v8, v3, :cond_51

    .line 2923
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v3

    .line 2926
    :cond_51
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v7, v0

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v6

    add-int/2addr v2, v6

    goto :goto_37

    .line 2938
    .end local v0           #dataIndex:I
    :cond_5c
    const-string v6, ""

    goto :goto_b

    .line 2941
    .end local v2           #length:I
    .end local v3           #offset:I
    :cond_5f
    const-string v6, ""

    goto :goto_b

    .line 2943
    .end local v4           #startNode:I
    :cond_62
    if-eq v9, v5, :cond_66

    if-ne v10, v5, :cond_91

    .line 2945
    :cond_66
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2946
    .restart local v0       #dataIndex:I
    if-ltz v0, :cond_79

    .line 2948
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    ushr-int/lit8 v7, v0, 0xa

    and-int/lit16 v8, v0, 0x3ff

    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    .line 2953
    :cond_79
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v8, v0

    invoke-virtual {v7, v8}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v7

    iget-object v8, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    neg-int v9, v0

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_b

    .line 2959
    .end local v0           #dataIndex:I
    :cond_91
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v6, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2961
    .restart local v0       #dataIndex:I
    if-gez v0, :cond_a2

    .line 2963
    neg-int v0, v0

    .line 2964
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    .line 2967
    :cond_a2
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v6, p0

    goto/16 :goto_b
.end method

.method protected final getTypedAttribute(II)I
    .registers 8
    .parameter "nodeHandle"
    .parameter "attType"

    .prologue
    const/4 v4, -0x1

    .line 2593
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeIdentity(I)I

    move-result v1

    .line 2595
    .local v1, nodeID:I
    if-ne v1, v4, :cond_9

    move v3, v4

    .line 2624
    :goto_8
    return v3

    .line 2598
    :cond_9
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_type2(I)I

    move-result v2

    .line 2600
    .local v2, type:I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_30

    .line 2605
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 2606
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->_exptype2(I)I

    move-result v0

    .line 2608
    .local v0, expType:I
    if-eq v0, v4, :cond_2a

    .line 2609
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result v2

    .line 2613
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 2615
    if-ne v0, p2, :cond_10

    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v3

    goto :goto_8

    :cond_2a
    move v3, v4

    .line 2611
    goto :goto_8

    .line 2617
    :cond_2c
    const/16 v3, 0xd

    if-eq v3, v2, :cond_10

    .end local v0           #expType:I
    :cond_30
    move v3, v4

    .line 2624
    goto :goto_8
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x7

    .line 2459
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    .line 2461
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v7

    .line 2462
    .local v7, dataIndex:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v3

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    neg-int v5, v7

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    .line 2467
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2468
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2469
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2471
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

    .line 2285
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v7

    .line 2289
    .local v7, doc:I
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v7}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 2290
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    .line 2292
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 2293
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
    .line 2086
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->charactersFlush()V

    .line 2088
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-object v4, v0

    const/4 v5, 0x1

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 2090
    .local v6, exName:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_c7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    .line 2093
    .local v9, prefixIndex:I
    :goto_2a
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    move v8, v0

    const/4 v10, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    move-result v13

    .line 2096
    .local v13, elemNode:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_indexing:Z

    move v4, v0

    if-eqz v4, :cond_4e

    .line 2097
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->indexNode(II)V

    .line 2099
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_parents:Lorg/apache/xml/utils/IntStack;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 2101
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result v27

    .line 2102
    .local v27, startDecls:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v24

    .line 2105
    .local v24, nDecls:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_pastFirstElement:Z

    move v4, v0

    if-nez v4, :cond_ac

    .line 2108
    const-string v25, "xml"

    .line 2109
    .local v25, prefix:Ljava/lang/String;
    const-string v21, "http://www.w3.org/XML/1998/namespace"

    .line 2110
    .local v21, declURL:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

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

    .line 2111
    .restart local v6       #exName:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2112
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    move v15, v0

    add-int/lit8 v4, v15, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    .line 2113
    .local v15, val:I
    const/16 v11, 0xd

    const/4 v14, -0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v12, v6

    invoke-virtual/range {v10 .. v16}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    .line 2115
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_pastFirstElement:Z

    .line 2118
    .end local v15           #val:I
    .end local v21           #declURL:Ljava/lang/String;
    .end local v25           #prefix:Ljava/lang/String;
    :cond_ac
    move/from16 v22, v27

    .local v22, i:I
    :goto_ae
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_10c

    .line 2120
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 2122
    .restart local v25       #prefix:Ljava/lang/String;
    if-nez v25, :cond_cb

    .line 2118
    :goto_c4
    add-int/lit8 v22, v22, 0x2

    goto :goto_ae

    .line 2090
    .end local v9           #prefixIndex:I
    .end local v13           #elemNode:I
    .end local v22           #i:I
    .end local v24           #nDecls:I
    .end local v25           #prefix:Ljava/lang/String;
    .end local v27           #startDecls:I
    :cond_c7
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_2a

    .line 2125
    .restart local v9       #prefixIndex:I
    .restart local v13       #elemNode:I
    .restart local v22       #i:I
    .restart local v24       #nDecls:I
    .restart local v25       #prefix:Ljava/lang/String;
    .restart local v27       #startDecls:I
    :cond_cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    move-object v4, v0

    add-int/lit8 v5, v22, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2127
    .restart local v21       #declURL:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

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

    .line 2129
    .restart local v6       #exName:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2130
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    move v15, v0

    add-int/lit8 v4, v15, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    .line 2132
    .restart local v15       #val:I
    const/16 v11, 0xd

    const/4 v14, -0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v12, v6

    invoke-virtual/range {v10 .. v16}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    goto :goto_c4

    .line 2135
    .end local v15           #val:I
    .end local v21           #declURL:Ljava/lang/String;
    .end local v25           #prefix:Ljava/lang/String;
    :cond_10c
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v23

    .line 2137
    .local v23, n:I
    const/16 v22, 0x0

    :goto_112
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1f2

    .line 2139
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v19

    .line 2140
    .local v19, attrUri:Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v18

    .line 2141
    .local v18, attrQName:Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v28

    .line 2145
    .local v28, valString:Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v17

    .line 2147
    .local v17, attrLocalName:Ljava/lang/String;
    if-eqz v18, :cond_1d0

    const-string v4, "xmlns"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_150

    const-string v4, "xmlns:"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d0

    .line 2151
    :cond_150
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2152
    .restart local v25       #prefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->declAlreadyDeclared(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_167

    .line 2137
    .end local v25           #prefix:Ljava/lang/String;
    :goto_164
    add-int/lit8 v22, v22, 0x1

    goto :goto_112

    .line 2155
    .restart local v25       #prefix:Ljava/lang/String;
    :cond_167
    const/16 v11, 0xd

    .line 2167
    .end local v25           #prefix:Ljava/lang/String;
    .local v11, nodeType:I
    :cond_169
    :goto_169
    if-nez v28, :cond_16d

    .line 2168
    const-string v28, ""

    .line 2170
    :cond_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_values:Ljava/util/Vector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2171
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    move v15, v0

    add-int/lit8 v4, v15, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valueIndex:I

    .line 2173
    .restart local v15       #val:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1b7

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_valuesOrPrefixes:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v9

    .line 2178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v20

    .line 2180
    .local v20, dataIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v4, v0

    invoke-virtual {v4, v9}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    move-object v4, v0

    invoke-virtual {v4, v15}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    .line 2183
    move/from16 v0, v20

    neg-int v0, v0

    move v15, v0

    .line 2186
    .end local v20           #dataIndex:I
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 2187
    const/4 v14, -0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v12, v6

    invoke-virtual/range {v10 .. v16}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->addNode(IIIIIZ)I

    goto :goto_164

    .line 2159
    .end local v11           #nodeType:I
    .end local v15           #val:I
    :cond_1d0
    const/4 v11, 0x2

    .line 2161
    .restart local v11       #nodeType:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_buildIdIndex:Z

    move v4, v0

    if-eqz v4, :cond_169

    move-object/from16 v0, p4

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_169

    .line 2162
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->setIDAttribute(Ljava/lang/String;I)V

    goto/16 :goto_169

    .line 2191
    .end local v11           #nodeType:I
    .end local v17           #attrLocalName:Ljava/lang/String;
    .end local v18           #attrQName:Ljava/lang/String;
    .end local v19           #attrUri:Ljava/lang/String;
    .end local v28           #valString:Ljava/lang/String;
    :cond_1f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object v4, v0

    if-eqz v4, :cond_220

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_wsfilter:Lorg/apache/xml/dtm/DTMWSFilter;

    move-object v4, v0

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->makeNodeHandle(I)I

    move-result v5

    move-object v0, v4

    move v1, v5

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/dtm/DTMWSFilter;->getShouldStripSpace(ILorg/apache/xml/dtm/DTM;)S

    move-result v29

    .line 2194
    .local v29, wsv:S
    const/4 v4, 0x3

    move v0, v4

    move/from16 v1, v29

    if-ne v0, v1, :cond_238

    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->getShouldStripWhitespace()Z

    move-result v4

    move/from16 v26, v4

    .line 2198
    .local v26, shouldStrip:Z
    :goto_219
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->pushShouldStripWhitespace(Z)V

    .line 2201
    .end local v26           #shouldStrip:Z
    .end local v29           #wsv:S
    :cond_220
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_previous:I

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM2;->m_prefixMappings:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 2204
    return-void

    .line 2194
    .restart local v29       #wsv:S
    :cond_238
    const/4 v4, 0x2

    move v0, v4

    move/from16 v1, v29

    if-ne v0, v1, :cond_242

    const/4 v4, 0x1

    move/from16 v26, v4

    goto :goto_219

    :cond_242
    const/4 v4, 0x0

    move/from16 v26, v4

    goto :goto_219
.end method
