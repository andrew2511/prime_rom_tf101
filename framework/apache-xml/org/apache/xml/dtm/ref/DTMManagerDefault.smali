.class public Lorg/apache/xml/dtm/ref/DTMManagerDefault;
.super Lorg/apache/xml/dtm/DTMManager;
.source "DTMManagerDefault.java"


# static fields
.field private static final DEBUG:Z

.field private static final DUMPTREE:Z


# instance fields
.field protected m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

.field m_dtm_offsets:[I

.field protected m_dtms:[Lorg/apache/xml/dtm/DTM;

.field private m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field protected m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x100

    .line 207
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    .line 94
    new-array v0, v1, [Lorg/apache/xml/dtm/DTM;

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    .line 109
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    .line 120
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    .line 200
    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 207
    return-void
.end method


# virtual methods
.method public declared-synchronized addDTM(Lorg/apache/xml/dtm/DTM;I)V
    .registers 4
    .parameter "dtm"
    .parameter "id"

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addDTM(Lorg/apache/xml/dtm/DTM;II)V
    .registers 11
    .parameter "dtm"
    .parameter "id"
    .parameter "offset"

    .prologue
    const/high16 v4, 0x1

    .line 145
    monitor-enter p0

    if-lt p2, v4, :cond_15

    .line 148
    :try_start_5
    new-instance v4, Lorg/apache/xml/dtm/DTMException;

    const-string v5, "ER_NO_DTMIDS_AVAIL"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_12

    .line 145
    :catchall_12
    move-exception v4

    monitor-exit p0

    throw v4

    .line 156
    :cond_15
    :try_start_15
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v3, v4

    .line 157
    .local v3, oldlen:I
    if-gt v3, p2, :cond_38

    .line 164
    add-int/lit16 v4, p2, 0x100

    const/high16 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 166
    .local v2, newlen:I
    new-array v1, v2, [Lorg/apache/xml/dtm/DTM;

    .line 167
    .local v1, new_m_dtms:[Lorg/apache/xml/dtm/DTM;
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    .line 169
    new-array v0, v2, [I

    .line 170
    .local v0, new_m_dtm_offsets:[I
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    .line 174
    .end local v0           #new_m_dtm_offsets:[I
    .end local v1           #new_m_dtms:[Lorg/apache/xml/dtm/DTM;
    .end local v2           #newlen:I
    :cond_38
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aput-object p1, v4, p2

    .line 175
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aput p3, v4, p2

    .line 176
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRegistration()V
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_12

    .line 179
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 3
    .parameter "node"

    .prologue
    .line 829
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .registers 5
    .parameter "whatToShow"
    .parameter "filter"
    .parameter "entityReferenceExpansion"

    .prologue
    .line 797
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 4
    .parameter "xpathCompiler"
    .parameter "pos"

    .prologue
    .line 845
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .registers 4
    .parameter "xpathString"
    .parameter "presolver"

    .prologue
    .line 814
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .registers 12

    .prologue
    .line 766
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    .line 768
    .local v7, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 770
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 771
    .local v6, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    .line 772
    .local v9, doc:Lorg/w3c/dom/Document;
    invoke-interface {v9}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v8

    .line 774
    .local v8, df:Lorg/w3c/dom/Node;
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_25

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 776
    .end local v6           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8           #df:Lorg/w3c/dom/Node;
    .end local v9           #doc:Lorg/w3c/dom/Document;
    :catch_25
    move-exception v0

    move-object v10, v0

    .line 778
    .local v10, e:Ljava/lang/Exception;
    :try_start_27
    new-instance v0, Lorg/apache/xml/dtm/DTMException;

    invoke-direct {v0, v10}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    .line 766
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 648
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    ushr-int/lit8 v2, p1, 0x10

    aget-object v1, v1, v2
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_7} :catch_9

    .line 653
    :goto_7
    monitor-exit p0

    return-object v1

    .line 650
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 652
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_10

    .line 653
    const/4 v1, 0x0

    goto :goto_7

    .line 655
    :cond_10
    :try_start_10
    throw v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_11

    .line 648
    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .registers 29
    .parameter "source"
    .parameter "unique"
    .parameter "whiteSpaceFilter"
    .parameter "incremental"
    .parameter "doIndexing"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    move-object v9, v0

    .line 248
    .local v9, xstringFactory:Lorg/apache/xml/utils/XMLStringFactory;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getFirstFreeDTMID()I

    move-result v12

    .line 249
    .local v12, dtmPos:I
    shl-int/lit8 v7, v12, 0x10

    .line 251
    .local v7, documentID:I
    if-eqz p1, :cond_30

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/dom/DOMSource;

    move v5, v0

    if-eqz v5, :cond_30

    .line 253
    new-instance v4, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    move-object/from16 v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    move-object v6, v0

    move-object/from16 v5, p0

    move-object/from16 v8, p3

    move/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/dom/DOMSource;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 256
    .local v4, dtm:Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v12

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_e8

    .line 471
    .end local v4           #dtm:Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    :goto_2e
    monitor-exit p0

    return-object v4

    .line 267
    :cond_30
    if-eqz p1, :cond_eb

    :try_start_32
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/sax/SAXSource;

    move v5, v0

    move/from16 v17, v5

    .line 269
    .local v17, isSAXSource:Z
    :goto_39
    if-eqz p1, :cond_f0

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/xml/transform/stream/StreamSource;

    move v5, v0
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_e8

    move/from16 v18, v5

    .line 272
    .local v18, isStreamSource:Z
    :goto_42
    if-nez v17, :cond_46

    if-eqz v18, :cond_276

    .line 273
    :cond_46
    const/16 v20, 0x0

    .line 279
    .local v20, reader:Lorg/xml/sax/XMLReader;
    if-nez p1, :cond_f5

    .line 280
    const/16 v22, 0x0

    .line 299
    .local v22, xmlSource:Lorg/xml/sax/InputSource;
    :cond_4c
    :goto_4c
    if-nez p1, :cond_16c

    if-eqz p2, :cond_16c

    if-nez p4, :cond_16c

    if-nez p5, :cond_16c

    .line 307
    :try_start_54
    new-instance v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 326
    .local v4, dtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    :goto_61
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v12

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->addDTM(Lorg/apache/xml/dtm/DTM;II)V

    .line 329
    if-eqz v20, :cond_17b

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "org.apache.xerces.parsers.SAXParser"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17b

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 335
    .local v16, haveXercesParser:Z
    :goto_7f
    if-eqz v16, :cond_83

    .line 336
    const/16 p4, 0x1

    .line 341
    :cond_83
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    move v5, v0
    :try_end_88
    .catchall {:try_start_54 .. :try_end_88} :catchall_110

    if-eqz v5, :cond_1fc

    if-eqz p4, :cond_1fc

    .line 343
    const/4 v11, 0x0

    .line 345
    .local v11, coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    if-eqz v16, :cond_9b

    .line 348
    :try_start_8f
    const-string v5, "org.apache.xml.dtm.ref.IncrementalSAXSource_Xerces"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    check-cast v11, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_110
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9b} :catch_180

    .line 356
    .restart local v11       #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :cond_9b
    :goto_9b
    if-nez v11, :cond_a4

    .line 358
    if-nez v20, :cond_188

    .line 359
    :try_start_9f
    new-instance v11, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    .end local v11           #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    invoke-direct {v11}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    .line 388
    .restart local v11       #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :cond_a4
    :goto_a4
    invoke-virtual {v4, v11}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_110

    .line 390
    if-nez v22, :cond_196

    .line 460
    if-eqz v20, :cond_df

    :try_start_ab
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    move v5, v0

    if-eqz v5, :cond_b4

    if-nez p4, :cond_df

    .line 461
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_d5
    .catchall {:try_start_ab .. :try_end_d5} :catchall_e8

    .line 467
    :try_start_d5
    const-string v5, "http://xml.org/sax/properties/lexical-handler"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_e8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_df} :catch_294

    .line 471
    :cond_df
    :goto_df
    :try_start_df
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_e6
    .catchall {:try_start_df .. :try_end_e6} :catchall_e8

    goto/16 :goto_2e

    .line 247
    .end local v4           #dtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    .end local v7           #documentID:I
    .end local v9           #xstringFactory:Lorg/apache/xml/utils/XMLStringFactory;
    .end local v11           #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .end local v12           #dtmPos:I
    .end local v16           #haveXercesParser:Z
    .end local v17           #isSAXSource:Z
    .end local v18           #isStreamSource:Z
    .end local v20           #reader:Lorg/xml/sax/XMLReader;
    .end local v22           #xmlSource:Lorg/xml/sax/InputSource;
    :catchall_e8
    move-exception v5

    monitor-exit p0

    throw v5

    .line 267
    .restart local v7       #documentID:I
    .restart local v9       #xstringFactory:Lorg/apache/xml/utils/XMLStringFactory;
    .restart local v12       #dtmPos:I
    :cond_eb
    const/4 v5, 0x1

    move/from16 v17, v5

    goto/16 :goto_39

    .line 269
    .restart local v17       #isSAXSource:Z
    :cond_f0
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_42

    .line 282
    .restart local v18       #isStreamSource:Z
    .restart local v20       #reader:Lorg/xml/sax/XMLReader;
    :cond_f5
    :try_start_f5
    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;

    move-result-object v20

    .line 283
    invoke-static/range {p1 .. p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v22

    .line 285
    .restart local v22       #xmlSource:Lorg/xml/sax/InputSource;
    invoke-virtual/range {v22 .. v22}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;
    :try_end_100
    .catchall {:try_start_f5 .. :try_end_100} :catchall_110

    move-result-object v21

    .line 287
    .local v21, urlOfSource:Ljava/lang/String;
    if-eqz v21, :cond_4c

    .line 289
    :try_start_103
    invoke-static/range {v21 .. v21}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_106
    .catchall {:try_start_103 .. :try_end_106} :catchall_110
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_14f

    move-result-object v21

    .line 295
    :goto_107
    :try_start_107
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_10e
    .catchall {:try_start_107 .. :try_end_10e} :catchall_110

    goto/16 :goto_4c

    .line 460
    .end local v21           #urlOfSource:Ljava/lang/String;
    .end local v22           #xmlSource:Lorg/xml/sax/InputSource;
    :catchall_110
    move-exception v5

    if-eqz v20, :cond_147

    :try_start_113
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    move v6, v0

    if-eqz v6, :cond_11c

    if-nez p4, :cond_147

    .line 461
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_13d
    .catchall {:try_start_113 .. :try_end_13d} :catchall_e8

    .line 467
    :try_start_13d
    const-string v6, "http://xml.org/sax/properties/lexical-handler"

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_147
    .catchall {:try_start_13d .. :try_end_147} :catchall_e8
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_147} :catch_288

    .line 471
    .end local v7           #documentID:I
    :cond_147
    :goto_147
    :try_start_147
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    throw v5
    :try_end_14f
    .catchall {:try_start_147 .. :try_end_14f} :catchall_e8

    .line 290
    .restart local v7       #documentID:I
    .restart local v21       #urlOfSource:Ljava/lang/String;
    .restart local v22       #xmlSource:Lorg/xml/sax/InputSource;
    :catch_14f
    move-exception v13

    .line 292
    .local v13, e:Ljava/lang/Exception;
    :try_start_150
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can not absolutize URL: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_107

    .line 319
    .end local v13           #e:Ljava/lang/Exception;
    .end local v21           #urlOfSource:Ljava/lang/String;
    :cond_16c
    new-instance v4, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .restart local v4       #dtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    goto/16 :goto_61

    .line 329
    :cond_17b
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_7f

    .line 350
    .restart local v16       #haveXercesParser:Z
    :catch_180
    move-exception v5

    move-object v14, v5

    .line 351
    .local v14, ex:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 352
    const/4 v11, 0x0

    .restart local v11       #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    goto/16 :goto_9b

    .line 361
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_188
    new-instance v15, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    invoke-direct {v15}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;-><init>()V

    .line 363
    .local v15, filter:Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 364
    move-object v11, v15

    goto/16 :goto_a4

    .line 396
    .end local v15           #filter:Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    :cond_196
    invoke-interface/range {v20 .. v20}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v5

    if-nez v5, :cond_1a2

    .line 397
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 399
    :cond_1a2
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_1a8
    .catchall {:try_start_150 .. :try_end_1a8} :catchall_110

    .line 405
    :try_start_1a8
    move-object v0, v11

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->startParse(Lorg/xml/sax/InputSource;)V
    :try_end_1ae
    .catchall {:try_start_1a8 .. :try_end_1ae} :catchall_110
    .catch Ljava/lang/RuntimeException; {:try_start_1a8 .. :try_end_1ae} :catch_1ed
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_1ae} :catch_1f2

    .line 460
    .end local v11           #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :goto_1ae
    if-eqz v20, :cond_1e4

    :try_start_1b0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    move v5, v0

    if-eqz v5, :cond_1b9

    if-nez p4, :cond_1e4

    .line 461
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_1da
    .catchall {:try_start_1b0 .. :try_end_1da} :catchall_e8

    .line 467
    :try_start_1da
    const-string v5, "http://xml.org/sax/properties/lexical-handler"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e4
    .catchall {:try_start_1da .. :try_end_1e4} :catchall_e8
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e4} :catch_28b

    .line 471
    :cond_1e4
    :goto_1e4
    :try_start_1e4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_1eb
    .catchall {:try_start_1e4 .. :try_end_1eb} :catchall_e8

    goto/16 :goto_2e

    .line 406
    .restart local v11       #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :catch_1ed
    move-exception v19

    .line 408
    .local v19, re:Ljava/lang/RuntimeException;
    :try_start_1ee
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 410
    throw v19

    .line 411
    .end local v19           #re:Ljava/lang/RuntimeException;
    :catch_1f2
    move-exception v13

    .line 413
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 415
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v13}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1fc
    .catchall {:try_start_1ee .. :try_end_1fc} :catchall_110

    .line 418
    .end local v11           #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_1fc
    if-nez v20, :cond_23d

    .line 460
    if-eqz v20, :cond_234

    :try_start_200
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_incremental:Z

    move v5, v0

    if-eqz v5, :cond_209

    if-nez p4, :cond_234

    .line 461
    :cond_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_defaultHandler:Lorg/xml/sax/helpers/DefaultHandler;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_22a
    .catchall {:try_start_200 .. :try_end_22a} :catchall_e8

    .line 467
    :try_start_22a
    const-string v5, "http://xml.org/sax/properties/lexical-handler"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_234
    .catchall {:try_start_22a .. :try_end_234} :catchall_e8
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_234} :catch_292

    .line 471
    :cond_234
    :goto_234
    :try_start_234
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_23b
    .catchall {:try_start_234 .. :try_end_23b} :catchall_e8

    goto/16 :goto_2e

    .line 425
    :cond_23d
    :try_start_23d
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 426
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 427
    invoke-interface/range {v20 .. v20}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v5

    if-nez v5, :cond_255

    .line 428
    move-object/from16 v0, v20

    move-object v1, v4

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_255
    .catchall {:try_start_23d .. :try_end_255} :catchall_110

    .line 432
    :cond_255
    :try_start_255
    const-string v5, "http://xml.org/sax/properties/lexical-handler"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_25e
    .catchall {:try_start_255 .. :try_end_25e} :catchall_110
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_255 .. :try_end_25e} :catch_290
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_255 .. :try_end_25e} :catch_28e

    .line 439
    :goto_25e
    :try_start_25e
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_265
    .catchall {:try_start_25e .. :try_end_265} :catchall_110
    .catch Ljava/lang/RuntimeException; {:try_start_25e .. :try_end_265} :catch_267
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_265} :catch_26c

    goto/16 :goto_1ae

    .line 440
    :catch_267
    move-exception v19

    .line 441
    .restart local v19       #re:Ljava/lang/RuntimeException;
    :try_start_268
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 443
    throw v19

    .line 444
    .end local v19           #re:Ljava/lang/RuntimeException;
    :catch_26c
    move-exception v13

    .line 445
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 447
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v13}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_276
    .catchall {:try_start_268 .. :try_end_276} :catchall_110

    .line 477
    .end local v4           #dtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v16           #haveXercesParser:Z
    .end local v20           #reader:Lorg/xml/sax/XMLReader;
    .end local v22           #xmlSource:Lorg/xml/sax/InputSource;
    :cond_276
    :try_start_276
    new-instance v5, Lorg/apache/xml/dtm/DTMException;

    const-string v6, "ER_NOT_SUPPORTED"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .end local v7           #documentID:I
    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_288
    .catchall {:try_start_276 .. :try_end_288} :catchall_e8

    .line 469
    .restart local v20       #reader:Lorg/xml/sax/XMLReader;
    :catch_288
    move-exception v6

    goto/16 :goto_147

    .restart local v4       #dtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    .restart local v7       #documentID:I
    .restart local v16       #haveXercesParser:Z
    .restart local v22       #xmlSource:Lorg/xml/sax/InputSource;
    :catch_28b
    move-exception v5

    goto/16 :goto_1e4

    .line 436
    :catch_28e
    move-exception v5

    goto :goto_25e

    .line 435
    :catch_290
    move-exception v5

    goto :goto_25e

    .line 469
    :catch_292
    move-exception v5

    goto :goto_234

    .restart local v11       #coParser:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;
    :catch_294
    move-exception v5

    goto/16 :goto_df
.end method

.method public declared-synchronized getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .registers 16
    .parameter "node"

    .prologue
    .line 493
    monitor-enter p0

    if-nez p1, :cond_13

    .line 494
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ER_NODE_NON_NULL"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 493
    .end local p1
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1

    .line 496
    .restart local p1
    :cond_13
    :try_start_13
    instance-of v1, p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    if-eqz v1, :cond_1f

    .line 497
    check-cast p1, Lorg/apache/xml/dtm/ref/DTMNodeProxy;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/xml/dtm/ref/DTMNodeProxy;->getDTMNodeNumber()I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_10

    move-result v1

    .line 578
    :goto_1d
    monitor-exit p0

    return v1

    .line 522
    .restart local p1
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v10, v1

    .line 523
    .local v10, max:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_23
    if-ge v9, v10, :cond_3d

    .line 525
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v13, v1, v9

    .line 526
    .local v13, thisDTM:Lorg/apache/xml/dtm/DTM;
    if-eqz v13, :cond_3a

    instance-of v1, v13, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    if-eqz v1, :cond_3a

    .line 528
    check-cast v13, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    .end local v13           #thisDTM:Lorg/apache/xml/dtm/DTM;
    invoke-virtual {v13, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v8

    .line 529
    .local v8, handle:I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_3a

    move v1, v8

    goto :goto_1d

    .line 523
    .end local v8           #handle:I
    :cond_3a
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 552
    :cond_3d
    move-object v12, p1

    .line 553
    .local v12, root:Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_56

    move-object v0, v12

    check-cast v0, Lorg/w3c/dom/Attr;

    move-object v13, v0

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    move-object v11, v1

    .line 554
    .local v11, p:Lorg/w3c/dom/Node;
    :goto_4e
    if-eqz v11, :cond_5c

    .line 556
    move-object v12, v11

    .line 554
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    goto :goto_4e

    .line 553
    .end local v11           #p:Lorg/w3c/dom/Node;
    :cond_56
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v11, v1

    goto :goto_4e

    .line 559
    .restart local v11       #p:Lorg/w3c/dom/Node;
    :cond_5c
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, v12}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v7

    check-cast v7, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;

    .line 564
    .local v7, dtm:Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;
    instance-of v1, p1, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTMdefaultNamespaceDeclarationNode;

    if-eqz v1, :cond_98

    .line 569
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Attr;

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I

    move-result v8

    .line 570
    .restart local v8       #handle:I
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v1, v2}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 575
    :goto_88
    const/4 v1, -0x1

    if-ne v1, v8, :cond_9d

    .line 576
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_COULD_NOT_RESOLVE_NODE"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    .end local v8           #handle:I
    :cond_98
    invoke-virtual {v7, p1}, Lorg/apache/xml/dtm/ref/dom2dtm/DOM2DTM;->getHandleOfNode(Lorg/w3c/dom/Node;)I
    :try_end_9b
    .catchall {:try_start_1f .. :try_end_9b} :catchall_10

    move-result v8

    .restart local v8       #handle:I
    goto :goto_88

    :cond_9d
    move v1, v8

    .line 578
    goto/16 :goto_1d
.end method

.method public declared-synchronized getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .registers 9
    .parameter "dtm"

    .prologue
    const/4 v6, -0x1

    .line 673
    monitor-enter p0

    :try_start_2
    instance-of v5, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    if-eqz v5, :cond_1d

    .line 675
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    move-object v1, v0

    .line 676
    .local v1, dtmdb:Lorg/apache/xml/dtm/ref/DTMDefaultBase;
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v5

    if-ne v5, p0, :cond_1b

    .line 677
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_37

    move-result v5

    .line 692
    .end local v1           #dtmdb:Lorg/apache/xml/dtm/ref/DTMDefaultBase;
    :goto_19
    monitor-exit p0

    return v5

    .restart local v1       #dtmdb:Lorg/apache/xml/dtm/ref/DTMDefaultBase;
    :cond_1b
    move v5, v6

    .line 679
    goto :goto_19

    .line 682
    .end local v1           #dtmdb:Lorg/apache/xml/dtm/ref/DTMDefaultBase;
    :cond_1d
    :try_start_1d
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v3, v5

    .line 684
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    if-ge v2, v3, :cond_35

    .line 686
    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v4, v5, v2

    .line 688
    .local v4, tdtm:Lorg/apache/xml/dtm/DTM;
    if-ne v4, p1, :cond_32

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtm_offsets:[I

    aget v5, v5, v2
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_37

    if-nez v5, :cond_32

    .line 689
    shl-int/lit8 v5, v2, 0x10

    goto :goto_19

    .line 684
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .end local v4           #tdtm:Lorg/apache/xml/dtm/DTM;
    :cond_35
    move v5, v6

    .line 692
    goto :goto_19

    .line 673
    .end local v2           #i:I
    .end local v3           #n:I
    :catchall_37
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getExpandedNameTable(Lorg/apache/xml/dtm/DTM;)Lorg/apache/xml/dtm/ref/ExpandedNameTable;
    .registers 3
    .parameter "dtm"

    .prologue
    .line 857
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    return-object v0
.end method

.method public declared-synchronized getFirstFreeDTMID()I
    .registers 4

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    array-length v1, v2

    .line 187
    .local v1, n:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_13

    .line 189
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    aget-object v2, v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    if-nez v2, :cond_10

    move v2, v0

    .line 194
    :goto_e
    monitor-exit p0

    return v2

    .line 187
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    move v2, v1

    .line 194
    goto :goto_e

    .line 186
    .end local v0           #i:I
    .end local v1           #n:I
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getXMLReader(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLReader;
    .registers 6
    .parameter "inputSource"

    .prologue
    .line 601
    monitor-enter p0

    :try_start_1
    instance-of v2, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_20

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    .end local p1
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    move-object v0, v2

    .line 605
    .local v0, reader:Lorg/xml/sax/XMLReader;
    :goto_c
    if-nez v0, :cond_1e

    .line 606
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    if-nez v2, :cond_18

    .line 607
    invoke-static {}, Lorg/apache/xml/utils/XMLReaderManager;->getInstance()Lorg/apache/xml/utils/XMLReaderManager;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    .line 610
    :cond_18
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    invoke-virtual {v2}, Lorg/apache/xml/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2f
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1d} :catch_23

    move-result-object v0

    .line 613
    :cond_1e
    monitor-exit p0

    return-object v0

    .line 601
    .end local v0           #reader:Lorg/xml/sax/XMLReader;
    .restart local p1
    :cond_20
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_c

    .line 615
    .end local p1
    :catch_23
    move-exception v2

    move-object v1, v2

    .line 616
    .local v1, se:Lorg/xml/sax/SAXException;
    :try_start_25
    new-instance v2, Lorg/apache/xml/dtm/DTMException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/apache/xml/dtm/DTMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_2f

    .line 601
    .end local v1           #se:Lorg/xml/sax/SAXException;
    :catchall_2f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized release(Lorg/apache/xml/dtm/DTM;Z)Z
    .registers 10
    .parameter "dtm"
    .parameter "shouldHardDelete"

    .prologue
    const/4 v6, 0x1

    .line 723
    monitor-enter p0

    :try_start_2
    instance-of v3, p1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz v3, :cond_d

    .line 725
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine()V

    .line 736
    :cond_d
    instance-of v3, p1, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    if-eqz v3, :cond_2f

    .line 738
    move-object v0, p1

    check-cast v0, Lorg/apache/xml/dtm/ref/DTMDefaultBase;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBase;->getDTMIDs()Lorg/apache/xml/utils/SuballocatedIntVector;

    move-result-object v2

    .line 739
    .local v2, ids:Lorg/apache/xml/utils/SuballocatedIntVector;
    invoke-virtual {v2}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v3

    sub-int v1, v3, v6

    .local v1, i:I
    :goto_1f
    if-ltz v1, :cond_3c

    .line 740
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x10

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 739
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    .line 744
    .end local v1           #i:I
    .end local v2           #ids:Lorg/apache/xml/utils/SuballocatedIntVector;
    :cond_2f
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    .line 745
    .restart local v1       #i:I
    if-ltz v1, :cond_3c

    .line 747
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_dtms:[Lorg/apache/xml/dtm/DTM;

    ushr-int/lit8 v4, v1, 0x10

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 751
    :cond_3c
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTM;->documentRelease()V
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_41

    .line 752
    monitor-exit p0

    return v6

    .line 723
    .end local v1           #i:I
    :catchall_41
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 3
    .parameter "reader"

    .prologue
    .line 631
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    if-eqz v0, :cond_a

    .line 632
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMManagerDefault;->m_readerManager:Lorg/apache/xml/utils/XMLReaderManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 634
    :cond_a
    monitor-exit p0

    return-void

    .line 631
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
