.class public Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
.super Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
.source "SAX2RTFDTM.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private m_currentDocumentNode:I

.field m_emptyCharsCount:I

.field m_emptyDataCount:I

.field m_emptyDataQNCount:I

.field m_emptyNSDeclSetCount:I

.field m_emptyNSDeclSetElemsCount:I

.field m_emptyNodeCount:I

.field mark_char_size:Lorg/apache/xml/utils/IntStack;

.field mark_data_size:Lorg/apache/xml/utils/IntStack;

.field mark_doq_size:Lorg/apache/xml/utils/IntStack;

.field mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

.field mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

.field mark_size:Lorg/apache/xml/utils/IntStack;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V
    .registers 10
    .parameter "mgr"
    .parameter "source"
    .parameter "dtmIdentity"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"
    .parameter "doIndexing"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct/range {p0 .. p6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;-><init>(Lorg/apache/xml/dtm/DTMManager;Ljavax/xml/transform/Source;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;Z)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    .line 71
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    .line 73
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    .line 75
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    .line 77
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    .line 83
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    .line 89
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    .line 132
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    .line 133
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_80

    new-instance v0, Lorg/apache/xml/utils/StringVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/StringVector;-><init>()V

    :goto_3d
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceSystemId:Lorg/apache/xml/utils/StringVector;

    .line 135
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_82

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :goto_48
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceLine:Lorg/apache/xml/utils/IntVector;

    .line 136
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_useSourceLocationProperty:Z

    if-eqz v0, :cond_84

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntVector;-><init>()V

    :goto_53
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_sourceColumn:Lorg/apache/xml/utils/IntVector;

    .line 141
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    .line 142
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez v0, :cond_86

    move v0, v1

    :goto_5e
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    .line 144
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-nez v0, :cond_8d

    move v0, v1

    :goto_65
    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    .line 146
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    .line 147
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    .line 148
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    .line 149
    return-void

    :cond_80
    move-object v0, v2

    .line 133
    goto :goto_3d

    :cond_82
    move-object v0, v2

    .line 135
    goto :goto_48

    :cond_84
    move-object v0, v2

    .line 136
    goto :goto_53

    .line 142
    :cond_86
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_5e

    .line 144
    :cond_8d
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v0

    goto :goto_65
.end method


# virtual methods
.method protected _documentRoot(I)I
    .registers 4
    .parameter "nodeIdentifier"

    .prologue
    const/4 v1, -0x1

    .line 201
    if-ne p1, v1, :cond_4

    .line 208
    :goto_3
    return v1

    .line 203
    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    .line 204
    .local v0, parent:I
    :goto_8
    if-eq v0, v1, :cond_10

    .line 205
    move p1, v0

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    goto :goto_8

    :cond_10
    move v1, p1

    .line 208
    goto :goto_3
.end method

.method public endDocument()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 249
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->charactersFlush()V

    .line 251
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 253
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->elementAt(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1e

    .line 254
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 256
    :cond_1e
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_previous:I

    if-eq v2, v0, :cond_29

    .line 257
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_previous:I

    invoke-virtual {v0, v2, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setElementAt(II)V

    .line 259
    :cond_29
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 260
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prefixMappings:Ljava/util/Vector;

    .line 261
    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 263
    iput v2, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    .line 265
    return-void
.end method

.method public getDocument()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeHandle(I)I

    move-result v0

    return v0
.end method

.method public getDocumentRoot(I)I
    .registers 6
    .parameter "nodeHandle"

    .prologue
    const/4 v3, -0x1

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeIdentity(I)I

    move-result v0

    .local v0, id:I
    :goto_5
    if-eq v0, v3, :cond_19

    .line 183
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_type(I)S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_14

    .line 184
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->makeNodeHandle(I)I

    move-result v1

    .line 188
    :goto_13
    return v1

    .line 182
    :cond_14
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->_parent(I)I

    move-result v0

    goto :goto_5

    :cond_19
    move v1, v3

    .line 188
    goto :goto_13
.end method

.method public isTreeIncomplete()Z
    .registers 2

    .prologue
    .line 360
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public popRewindMark()Z
    .registers 6

    .prologue
    .line 326
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->empty()Z

    move-result v2

    .line 328
    .local v2, top:Z
    if-eqz v2, :cond_71

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNodeCount:I

    :goto_a
    iput v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    .line 329
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_exptype:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 330
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_firstch:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 331
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_nextsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 332
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prevsib:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 333
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parent:Lorg/apache/xml/utils/SuballocatedIntVector;

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 335
    const/4 v3, 0x0

    check-cast v3, [[[I

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_elemIndexes:[[[I

    .line 337
    if-eqz v2, :cond_78

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetCount:I

    move v0, v3

    .line 338
    .local v0, ds:I
    :goto_39
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    if-eqz v3, :cond_42

    .line 339
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->setSize(I)V

    .line 342
    :cond_42
    if-eqz v2, :cond_80

    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyNSDeclSetElemsCount:I

    move v1, v3

    .line 343
    .local v1, ds1:I
    :goto_47
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v3, :cond_50

    .line 344
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v3, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 348
    :cond_50
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v2, :cond_88

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataCount:I

    :goto_56
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 349
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    if-eqz v2, :cond_8f

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyCharsCount:I

    :goto_5f
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->setLength(I)V

    .line 350
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-eqz v2, :cond_96

    iget v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_emptyDataQNCount:I

    :goto_68
    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/SuballocatedIntVector;->setSize(I)V

    .line 353
    iget v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    if-nez v3, :cond_9d

    const/4 v3, 0x1

    :goto_70
    return v3

    .line 328
    .end local v0           #ds:I
    .end local v1           #ds1:I
    :cond_71
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    goto :goto_a

    .line 337
    :cond_78
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    move v0, v3

    goto :goto_39

    .line 342
    .restart local v0       #ds:I
    :cond_80
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v3}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v3

    move v1, v3

    goto :goto_47

    .line 348
    .restart local v1       #ds1:I
    :cond_88
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v4}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v4

    goto :goto_56

    .line 349
    :cond_8f
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v4}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v4

    goto :goto_5f

    .line 350
    :cond_96
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v4}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v4

    goto :goto_68

    .line 353
    :cond_9d
    const/4 v3, 0x0

    goto :goto_70
.end method

.method public pushRewindMark()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_indexing:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_elemIndexes:[[[I

    if-eqz v0, :cond_11

    .line 281
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Coding error; Don\'t try to mark/rewind an indexed DTM"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_11
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_size:Lorg/apache/xml/utils/IntStack;

    iget v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 286
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclset_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    if-nez v1, :cond_4e

    move v1, v2

    :goto_1f
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 289
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_nsdeclelem_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    if-nez v1, :cond_55

    move v1, v2

    :goto_29
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 294
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_data_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_data:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 295
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_char_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_chars:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 296
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->mark_doq_size:Lorg/apache/xml/utils/IntStack;

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_dataOrQName:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 297
    return-void

    .line 286
    :cond_4e
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_1f

    .line 289
    :cond_55
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_namespaceDeclSetElements:Lorg/apache/xml/utils/SuballocatedIntVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->size()I

    move-result v1

    goto :goto_29
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_endDocumentOccured:Z

    .line 227
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_prefixMappings:Ljava/util/Vector;

    .line 228
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_contextIndexes:Lorg/apache/xml/utils/IntStack;

    .line 229
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_parents:Lorg/apache/xml/utils/IntStack;

    .line 231
    iget v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_size:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->m_currentDocumentNode:I

    .line 232
    invoke-super {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->startDocument()V

    .line 233
    return-void
.end method
