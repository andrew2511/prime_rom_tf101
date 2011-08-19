.class public Lorg/apache/xml/dtm/ref/DTMDocumentImpl;
.super Ljava/lang/Object;
.source "DTMDocumentImpl.java"

# interfaces
.implements Lorg/apache/xml/dtm/DTM;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field protected static final DOCHANDLE_MASK:I = -0x800000

.field protected static final DOCHANDLE_SHIFT:B = 0x16t

.field protected static final NODEHANDLE_MASK:I = 0x7fffff

.field private static final fixednames:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field currentParent:I

.field private done:Z

.field gotslot:[I

.field private m_char:Lorg/apache/xml/utils/FastStringBuffer;

.field private m_char_current_start:I

.field protected m_currentNode:I

.field m_docElement:I

.field m_docHandle:I

.field protected m_documentBaseURI:Ljava/lang/String;

.field private m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field private m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

.field m_isError:Z

.field private m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

.field private m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

.field nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

.field previousSibling:I

.field private previousSiblingWasParent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1586
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

    sput-object v0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;ILorg/apache/xml/dtm/DTMWSFilter;Lorg/apache/xml/utils/XMLStringFactory;)V
    .registers 8
    .parameter "mgr"
    .parameter "documentNumber"
    .parameter "whiteSpaceFilter"
    .parameter "xstringfactory"

    .prologue
    const/4 v2, 0x4

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    .line 77
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    .line 80
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 81
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 82
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_currentNode:I

    .line 88
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 90
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    .line 93
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    .line 94
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    .line 96
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->DEBUG:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 121
    new-instance v0, Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-direct {v0, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    .line 125
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    .line 128
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 135
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 136
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 137
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 145
    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_expandedNames:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 164
    invoke-virtual {p0, p2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    .line 165
    iput-object p4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    .line 166
    return-void
.end method

.method private final appendNode(IIII)I
    .registers 9
    .parameter "w0"
    .parameter "w1"
    .parameter "w2"
    .parameter "w3"

    .prologue
    .line 209
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->appendSlot(IIII)I

    move-result v0

    .line 213
    .local v0, slotnumber:I
    iget-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz v1, :cond_12

    .line 214
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    .line 216
    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 218
    return v0
.end method

.method private processAccumulatedText()V
    .registers 4

    .prologue
    .line 419
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v1}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v0

    .line 420
    .local v0, len:I
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    if-eq v0, v1, :cond_15

    .line 423
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendTextChild(II)V

    .line 424
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 426
    :cond_15
    return-void
.end method


# virtual methods
.method appendAttribute(IIIZII)V
    .registers 15
    .parameter "namespaceIndex"
    .parameter "localNameIndex"
    .parameter "prefixIndex"
    .parameter "isID"
    .parameter "m_char_current_start"
    .parameter "contentLength"

    .prologue
    .line 2237
    shl-int/lit8 v5, p1, 0x10

    or-int/lit8 v1, v5, 0x2

    .line 2240
    .local v1, w0:I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2242
    .local v2, w1:I
    const/4 v3, 0x0

    .line 2244
    .local v3, w2:I
    shl-int/lit8 v5, p3, 0x10

    or-int v4, p2, v5

    .line 2245
    .local v4, w3:I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set w3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v4, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xffff

    and-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2247
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    .line 2248
    .local v0, ourslot:I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2253
    const/4 v1, 0x3

    .line 2255
    move v2, v0

    .line 2257
    move v3, p5

    .line 2259
    move v4, p6

    .line 2260
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    .line 2263
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 2264
    return-void
.end method

.method public appendChild(IZZ)V
    .registers 7
    .parameter "newChild"
    .parameter "clone"
    .parameter "cloneDepth"

    .prologue
    .line 2056
    const/high16 v1, -0x80

    and-int/2addr v1, p1

    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    move v0, v1

    .line 2057
    .local v0, sameDoc:Z
    :goto_9
    if-nez p2, :cond_d

    if-nez v0, :cond_d

    .line 2062
    :cond_d
    return-void

    .line 2056
    .end local v0           #sameDoc:Z
    :cond_e
    const/4 v1, 0x0

    move v0, v1

    goto :goto_9
.end method

.method appendComment(II)V
    .registers 8
    .parameter "m_char_current_start"
    .parameter "contentLength"

    .prologue
    .line 2118
    const/16 v1, 0x8

    .line 2120
    .local v1, w0:I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2122
    .local v2, w1:I
    move v3, p1

    .line 2124
    .local v3, w2:I
    move v4, p2

    .line 2126
    .local v4, w3:I
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    .line 2127
    .local v0, ourslot:I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2128
    return-void
.end method

.method appendEndDocument()V
    .registers 2

    .prologue
    .line 2353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    .line 2356
    return-void
.end method

.method appendEndElement()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2320
    iget-boolean v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    if-eqz v0, :cond_e

    .line 2321
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeEntry(III)V

    .line 2324
    :cond_e
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2325
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 2326
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v0, v0, v4

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2330
    iput-boolean v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 2334
    return-void
.end method

.method appendNSDeclaration(IIZ)V
    .registers 12
    .parameter "prefixIndex"
    .parameter "namespaceIndex"
    .parameter "isID"

    .prologue
    .line 2197
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    .line 2200
    .local v0, namespaceForNamespaces:I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/lit8 v2, v6, 0xd

    .line 2203
    .local v2, w0:I
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2205
    .local v3, w1:I
    const/4 v4, 0x0

    .line 2207
    .local v4, w2:I
    move v5, p2

    .line 2209
    .local v5, w3:I
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v1

    .line 2210
    .local v1, ourslot:I
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2211
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSiblingWasParent:Z

    .line 2212
    return-void
.end method

.method appendStartDocument()V
    .registers 2

    .prologue
    .line 2344
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    .line 2345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->initDocument(I)V

    .line 2346
    return-void
.end method

.method appendStartElement(III)V
    .registers 12
    .parameter "namespaceIndex"
    .parameter "localNameIndex"
    .parameter "prefixIndex"

    .prologue
    .line 2154
    shl-int/lit8 v5, p1, 0x10

    or-int/lit8 v1, v5, 0x1

    .line 2156
    .local v1, w0:I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2158
    .local v2, w1:I
    const/4 v3, 0x0

    .line 2160
    .local v3, w2:I
    shl-int/lit8 v5, p3, 0x10

    or-int v4, p2, v5

    .line 2161
    .local v4, w3:I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set w3="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    shr-int/lit8 v7, v4, 0x10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0xffff

    and-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2164
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    .line 2165
    .local v0, ourslot:I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2166
    const/4 v5, 0x0

    iput v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2169
    iget v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4d

    .line 2170
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    .line 2171
    :cond_4d
    return-void
.end method

.method appendTextChild(II)V
    .registers 8
    .parameter "m_char_current_start"
    .parameter "contentLength"

    .prologue
    .line 2095
    const/4 v1, 0x3

    .line 2097
    .local v1, w0:I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->currentParent:I

    .line 2099
    .local v2, w1:I
    move v3, p1

    .line 2101
    .local v3, w2:I
    move v4, p2

    .line 2103
    .local v4, w3:I
    invoke-direct {p0, v1, v2, v3, v4}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNode(IIII)I

    move-result v0

    .line 2104
    .local v0, ourslot:I
    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->previousSibling:I

    .line 2105
    return-void
.end method

.method public appendTextChild(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 2076
    return-void
.end method

.method public characters([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 414
    return-void
.end method

.method public comment([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 572
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/utils/FastStringBuffer;->append([CII)V

    .line 573
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    invoke-virtual {p0, v0, p3}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendComment(II)V

    .line 574
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 575
    return-void
.end method

.method public dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V
    .registers 4
    .parameter "nodeHandle"
    .parameter "ch"
    .parameter "normalize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2012
    return-void
.end method

.method public dispatchToEvents(ILorg/xml/sax/ContentHandler;)V
    .registers 3
    .parameter "nodeHandle"
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 2024
    return-void
.end method

.method public documentRegistration()V
    .registers 1

    .prologue
    .line 2389
    return-void
.end method

.method public documentRelease()V
    .registers 1

    .prologue
    .line 2398
    return-void
.end method

.method public endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 580
    return-void
.end method

.method public endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 585
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndDocument()V

    .line 433
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 441
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendEndElement()V

    .line 442
    return-void
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
    .line 590
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 447
    return-void
.end method

.method public getAttributeNode(ILjava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "nodeHandle"
    .parameter "namespaceURI"
    .parameter "name"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1087
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p2}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 1088
    .local v1, nsIndex:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p3}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v0

    .line 1089
    .local v0, nameIndex:I
    const v3, 0x7fffff

    and-int/2addr p1, v3

    .line 1090
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1091
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v2, v3

    .line 1093
    .local v2, type:S
    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    .line 1094
    add-int/lit8 p1, p1, 0x1

    .line 1096
    :cond_27
    :goto_27
    if-ne v2, v6, :cond_48

    .line 1097
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v5

    shl-int/lit8 v3, v3, 0x10

    if-ne v1, v3, :cond_3c

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    if-ne v3, v0, :cond_3c

    .line 1098
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, p1

    .line 1103
    :goto_3b
    return v3

    .line 1100
    :cond_3c
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget p1, v3, v6

    .line 1101
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_27

    .line 1103
    :cond_48
    const/4 v3, -0x1

    goto :goto_3b
.end method

.method public getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 3
    .parameter "axis"

    .prologue
    .line 2293
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;
    .registers 3
    .parameter "axis"

    .prologue
    .line 2277
    const/4 v0, 0x0

    return-object v0
.end method

.method getContentBuffer()Lorg/apache/xml/utils/FastStringBuffer;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_c

    .line 324
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .end local p0
    check-cast p0, Lorg/xml/sax/ContentHandler;

    move-object v0, p0

    .line 326
    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    move-object v0, p0

    goto :goto_b
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocument()I
    .registers 2

    .prologue
    .line 1371
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    return v0
.end method

.method public getDocumentAllDeclarationsProcessed()Z
    .registers 2

    .prologue
    .line 1843
    const/4 v0, 0x0

    return v0
.end method

.method public getDocumentBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1777
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentEncoding(I)Ljava/lang/String;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1807
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentRoot()I
    .registers 3

    .prologue
    .line 1362
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docElement:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getDocumentRoot(I)I
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1408
    const v0, 0x7fffff

    and-int/2addr v0, p1

    if-nez v0, :cond_8

    .line 1409
    const/4 v0, -0x1

    .line 1410
    :goto_7
    return v0

    :cond_8
    const/high16 v0, -0x80

    and-int/2addr v0, p1

    goto :goto_7
.end method

.method public getDocumentStandalone(I)Ljava/lang/String;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1819
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentSystemIdentifier(I)Ljava/lang/String;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1798
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationPublicIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1863
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentTypeDeclarationSystemIdentifier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1853
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentVersion(I)Ljava/lang/String;
    .registers 3
    .parameter "documentHandle"

    .prologue
    .line 1831
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)I
    .registers 3
    .parameter "elementId"

    .prologue
    .line 1882
    const/4 v0, 0x0

    return v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedTypeID(I)I
    .registers 11
    .parameter "nodeHandle"

    .prologue
    .line 1511
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v6, p1, v7}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1512
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v5

    .line 1515
    .local v5, qName:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1516
    .local v0, colonpos:I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1518
    .local v3, localName:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    iget-object v7, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0x10

    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v4

    .line 1520
    .local v4, namespace:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1521
    .local v1, expandedName:Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v6, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v2

    .line 1523
    .local v2, expandedNameID:I
    return v2
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8
    .parameter "namespace"
    .parameter "localName"
    .parameter "type"

    .prologue
    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1542
    .local v0, expandedName:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v2, v0}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v1

    .line 1544
    .local v1, expandedNameID:I
    return v1
.end method

.method public getFirstAttribute(I)I
    .registers 7
    .parameter "nodeHandle"

    .prologue
    const v4, 0xffff

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1113
    const v0, 0x7fffff

    and-int/2addr p1, v0

    .line 1121
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    and-int/2addr v1, v4

    if-eq v0, v1, :cond_15

    move v0, v2

    .line 1125
    :goto_14
    return v0

    .line 1124
    :cond_15
    add-int/lit8 p1, p1, 0x1

    .line 1125
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    and-int/2addr v1, v4

    if-ne v0, v1, :cond_25

    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v0, p1

    goto :goto_14

    :cond_25
    move v0, v2

    goto :goto_14
.end method

.method public getFirstChild(I)I
    .registers 12
    .parameter "nodeHandle"

    .prologue
    const v9, 0xffff

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1013
    const v3, 0x7fffff

    and-int/2addr p1, v3

    .line 1015
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1018
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v6

    and-int/2addr v3, v9

    int-to-short v2, v3

    .line 1021
    .local v2, type:S
    if-eq v2, v7, :cond_21

    const/16 v3, 0x9

    if-eq v2, v3, :cond_21

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4d

    .line 1031
    :cond_21
    add-int/lit8 v1, p1, 0x1

    .line 1032
    .local v1, kid:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, v1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1033
    :goto_2a
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v6

    and-int/2addr v3, v9

    if-ne v8, v3, :cond_41

    .line 1035
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v1, v3, v8

    .line 1037
    if-ne v1, v5, :cond_39

    move v3, v5

    .line 1050
    .end local v1           #kid:I
    :goto_38
    return v3

    .line 1038
    .restart local v1       #kid:I
    :cond_39
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, v1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    goto :goto_2a

    .line 1041
    :cond_41
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v3, v3, v7

    if-ne v3, p1, :cond_4d

    .line 1043
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int v0, v1, v3

    .local v0, firstChild:I
    move v3, v0

    .line 1045
    goto :goto_38

    .end local v0           #firstChild:I
    .end local v1           #kid:I
    :cond_4d
    move v3, v5

    .line 1050
    goto :goto_38
.end method

.method public getFirstNamespaceNode(IZ)I
    .registers 4
    .parameter "nodeHandle"
    .parameter "inScope"

    .prologue
    .line 1144
    const/4 v0, -0x1

    return v0
.end method

.method public getLastChild(I)I
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 1064
    const v2, 0x7fffff

    and-int/2addr p1, v2

    .line 1066
    const/4 v0, -0x1

    .line 1067
    .local v0, lastChild:I
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v1

    .local v1, nextkid:I
    :goto_9
    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 1069
    move v0, v1

    .line 1068
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    goto :goto_9

    .line 1071
    :cond_12
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v2, v0

    return v2
.end method

.method public getLevel(I)S
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 1743
    const/4 v0, 0x0

    .line 1744
    .local v0, count:S
    :goto_1
    if-eqz p1, :cond_e

    .line 1745
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    .line 1746
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result p1

    goto :goto_1

    .line 1748
    :cond_e
    return v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    instance-of v0, v0, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v0, :cond_c

    .line 343
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .end local p0
    check-cast p0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v0, p0

    .line 345
    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    move-object v0, p0

    goto :goto_b
.end method

.method public getLocalName(I)Ljava/lang/String;
    .registers 8
    .parameter "nodeHandle"

    .prologue
    const v5, 0xffff

    .line 1642
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1643
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    and-int/2addr v3, v5

    int-to-short v2, v3

    .line 1644
    .local v2, type:S
    const-string v1, ""

    .line 1645
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 1646
    :cond_19
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v0, v3, v4

    .line 1647
    .local v0, i:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    and-int v4, v0, v5

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1648
    if-nez v1, :cond_2a

    const-string v1, ""

    .line 1650
    .end local v0           #i:I
    :cond_2a
    return-object v1
.end method

.method public getLocalNameFromExpandedNameID(I)Ljava/lang/String;
    .registers 6
    .parameter "ExpandedNameID"

    .prologue
    .line 1557
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1559
    .local v1, expandedName:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1560
    .local v0, colonpos:I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1561
    .local v2, localName:Ljava/lang/String;
    return-object v2
.end method

.method public getLocalNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getNamespaceFromExpandedNameID(I)Ljava/lang/String;
    .registers 6
    .parameter "ExpandedNameID"

    .prologue
    .line 1574
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, p1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1576
    .local v1, expandedName:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1577
    .local v0, colonpos:I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1579
    .local v2, nsName:Ljava/lang/String;
    return-object v2
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1688
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextAttribute(I)I
    .registers 7
    .parameter "nodeHandle"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x2

    .line 1223
    const v1, 0x7fffff

    and-int/2addr p1, v1

    .line 1224
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1230
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v0, v1

    .line 1232
    .local v0, type:S
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 1233
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstAttribute(I)I

    move-result v1

    .line 1238
    :goto_1e
    return v1

    .line 1234
    :cond_1f
    if-ne v0, v3, :cond_2f

    .line 1235
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v1, v1, v3

    if-eq v1, v4, :cond_2f

    .line 1236
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    goto :goto_1e

    :cond_2f
    move v1, v4

    .line 1238
    goto :goto_1e
.end method

.method public getNextDescendant(II)I
    .registers 10
    .parameter "subtreeRootHandle"
    .parameter "nodeHandle"

    .prologue
    const v2, 0x7fffff

    const/4 v6, 0x2

    const/4 v5, -0x1

    .line 1267
    and-int/2addr p1, v2

    .line 1268
    and-int/2addr p2, v2

    .line 1270
    if-nez p2, :cond_2a

    move v2, v5

    .line 1298
    :goto_a
    return v2

    .line 1276
    :cond_b
    if-le p2, p1, :cond_4e

    .line 1277
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1278
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    aget v2, v2, v6

    if-eqz v2, :cond_49

    .line 1279
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-short v1, v2

    .line 1280
    .local v1, type:S
    if-ne v1, v6, :cond_3c

    .line 1281
    add-int/lit8 p2, p2, 0x2

    .line 1272
    .end local v1           #type:S
    :cond_2a
    :goto_2a
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_isError:Z

    if-nez v2, :cond_3a

    .line 1274
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->slotsUsed()I

    move-result v2

    if-le p2, v2, :cond_b

    :cond_3a
    move v2, v5

    .line 1298
    goto :goto_a

    .line 1283
    .restart local v1       #type:S
    :cond_3c
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x1

    aget v0, v2, v3

    .line 1284
    .local v0, nextParentPos:I
    if-lt v0, p1, :cond_3a

    .line 1285
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    add-int/lit8 v3, p2, 0x1

    or-int/2addr v2, v3

    goto :goto_a

    .line 1289
    .end local v0           #nextParentPos:I
    .end local v1           #type:S
    :cond_49
    iget-boolean v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    if-nez v2, :cond_3a

    goto :goto_2a

    .line 1294
    :cond_4e
    add-int/lit8 p2, p2, 0x1

    goto :goto_2a
.end method

.method public getNextFollowing(II)I
    .registers 4
    .parameter "axisContextHandle"
    .parameter "nodeHandle"

    .prologue
    .line 1311
    const/4 v0, -0x1

    return v0
.end method

.method public getNextNamespaceNode(IIZ)I
    .registers 5
    .parameter "baseHandle"
    .parameter "namespaceHandle"
    .parameter "inScope"

    .prologue
    .line 1253
    const/4 v0, -0x1

    return v0
.end method

.method public getNextPreceding(II)I
    .registers 6
    .parameter "axisContextHandle"
    .parameter "nodeHandle"

    .prologue
    .line 1324
    const v0, 0x7fffff

    and-int/2addr p2, v0

    .line 1325
    :cond_4
    const/4 v0, 0x1

    if-le p2, v0, :cond_21

    .line 1326
    add-int/lit8 p2, p2, -0x1

    .line 1327
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    .line 1338
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->specialFind(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1340
    :goto_20
    return v0

    :cond_21
    const/4 v0, -0x1

    goto :goto_20
.end method

.method public getNextSibling(I)I
    .registers 10
    .parameter "nodeHandle"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1165
    const v3, 0x7fffff

    and-int/2addr p1, v3

    .line 1167
    if-nez p1, :cond_b

    move v3, v5

    .line 1186
    :goto_a
    return v3

    .line 1170
    :cond_b
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v2, v3

    .line 1171
    .local v2, type:S
    if-eq v2, v6, :cond_1e

    if-eq v2, v7, :cond_1e

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2e

    .line 1173
    :cond_1e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v3, p1, v7}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    .line 1174
    .local v0, nextSib:I
    if-ne v0, v5, :cond_28

    move v3, v5

    .line 1175
    goto :goto_a

    .line 1176
    :cond_28
    if-eqz v0, :cond_2e

    .line 1177
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, v0

    goto :goto_a

    .line 1181
    .end local v0           #nextSib:I
    :cond_2e
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-virtual {v3, p1, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    .line 1183
    .local v1, thisParent:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1, v6}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v3

    if-ne v3, v1, :cond_42

    .line 1184
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, p1

    goto :goto_a

    :cond_42
    move v3, v5

    .line 1186
    goto :goto_a
.end method

.method public getNode(I)Lorg/w3c/dom/Node;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 2035
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .registers 10
    .parameter "nodeHandle"

    .prologue
    const v7, 0xffff

    .line 1605
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v4, p1, v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1606
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    and-int/2addr v4, v7

    int-to-short v3, v4

    .line 1607
    .local v3, type:S
    sget-object v4, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->fixednames:[Ljava/lang/String;

    aget-object v1, v4, v3

    .line 1608
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_7b

    .line 1609
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v0, v4, v5

    .line 1610
    .local v0, i:I
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v0, 0x10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1612
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    and-int v5, v0, v7

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1613
    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    shr-int/lit8 v5, v0, 0x10

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1614
    .local v2, prefix:Ljava/lang/String;
    if-eqz v2, :cond_7b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7b

    .line 1615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1617
    .end local v0           #i:I
    .end local v2           #prefix:Ljava/lang/String;
    :cond_7b
    return-object v1
.end method

.method public getNodeNameX(I)Ljava/lang/String;
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1628
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeType(I)S
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 1731
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .registers 8
    .parameter "nodeHandle"

    .prologue
    .line 1701
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1702
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 1703
    .local v0, nodetype:I
    const/4 v1, 0x0

    .line 1705
    .local v1, value:Ljava/lang/String;
    packed-switch v0, :pswitch_data_2e

    .line 1719
    :goto_12
    :pswitch_12
    return-object v1

    .line 1707
    :pswitch_13
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1711
    :pswitch_1c
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v1

    .line 1712
    goto :goto_12

    .line 1705
    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_13
        :pswitch_1c
        :pswitch_1c
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1c
    .end packed-switch
.end method

.method public getNsNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getOwnerDocument(I)I
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1389
    const v0, 0x7fffff

    and-int/2addr v0, p1

    if-nez v0, :cond_8

    .line 1390
    const/4 v0, -0x1

    .line 1391
    :goto_7
    return v0

    :cond_8
    const/high16 v0, -0x80

    and-int/2addr v0, p1

    goto :goto_7
.end method

.method public getParent(I)I
    .registers 5
    .parameter "nodeHandle"

    .prologue
    .line 1354
    iget v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    iget-object v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .registers 7
    .parameter "nodeHandle"

    .prologue
    .line 1668
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1669
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v2, v3

    .line 1670
    .local v2, type:S
    const-string v1, ""

    .line 1671
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2a

    .line 1672
    :cond_19
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x3

    aget v0, v3, v4

    .line 1673
    .local v0, i:I
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    shr-int/lit8 v4, v0, 0x10

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->indexToString(I)Ljava/lang/String;

    move-result-object v1

    .line 1674
    if-nez v1, :cond_2a

    const-string v1, ""

    .line 1676
    .end local v0           #i:I
    :cond_2a
    return-object v1
.end method

.method public getPrefixNameTable()Lorg/apache/xml/dtm/ref/DTMStringPool;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    return-object v0
.end method

.method public getPreviousSibling(I)I
    .registers 7
    .parameter "nodeHandle"

    .prologue
    .line 1199
    const v3, 0x7fffff

    and-int/2addr p1, v3

    .line 1201
    if-nez p1, :cond_8

    .line 1202
    const/4 v3, -0x1

    .line 1210
    :goto_7
    return v3

    .line 1204
    :cond_8
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readEntry(II)I

    move-result v2

    .line 1205
    .local v2, parent:I
    const/4 v0, -0x1

    .line 1206
    .local v0, kid:I
    invoke-virtual {p0, v2}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v1

    .local v1, nextkid:I
    :goto_14
    if-eq v1, p1, :cond_1c

    .line 1208
    move v0, v1

    .line 1207
    invoke-virtual {p0, v1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getNextSibling(I)I

    move-result v1

    goto :goto_14

    .line 1210
    :cond_1c
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    or-int/2addr v3, v0

    goto :goto_7
.end method

.method public getSourceLocatorFor(I)Ljavax/xml/transform/SourceLocator;
    .registers 3
    .parameter "node"

    .prologue
    .line 2378
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringValue(I)Lorg/apache/xml/utils/XMLString;
    .registers 8
    .parameter "nodeHandle"

    .prologue
    .line 1424
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    invoke-virtual {v2, p1, v3}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->readSlot(I[I)V

    .line 1425
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 1426
    .local v0, nodetype:I
    const/4 v1, 0x0

    .line 1428
    .local v1, value:Ljava/lang/String;
    packed-switch v0, :pswitch_data_2a

    .line 1441
    :goto_12
    :pswitch_12
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_xsf:Lorg/apache/xml/utils/XMLStringFactory;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/XMLStringFactory;->newstr(Ljava/lang/String;)Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    return-object v2

    .line 1432
    :pswitch_19
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->gotslot:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->getString(II)Ljava/lang/String;

    move-result-object v1

    .line 1433
    goto :goto_12

    .line 1428
    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_19
        :pswitch_19
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_19
    .end packed-switch
.end method

.method public getStringValueChunk(II[I)[C
    .registers 5
    .parameter "nodeHandle"
    .parameter "chunkIndex"
    .parameter "startAndLen"

    .prologue
    .line 1501
    const/4 v0, 0x0

    new-array v0, v0, [C

    return-object v0
.end method

.method public getStringValueChunkCount(I)I
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1472
    const/4 v0, 0x0

    return v0
.end method

.method public getTypedAxisIterator(II)Lorg/apache/xml/dtm/DTMAxisIterator;
    .registers 4
    .parameter "axis"
    .parameter "type"

    .prologue
    .line 2309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnparsedEntityURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1918
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasChildNodes(I)Z
    .registers 4
    .parameter "nodeHandle"

    .prologue
    .line 999
    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->getFirstChild(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
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
    .line 452
    return-void
.end method

.method final initDocument(I)V
    .registers 8
    .parameter "documentNumber"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 625
    shl-int/lit8 v0, p1, 0x16

    iput v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_docHandle:I

    .line 628
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->nodes:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    const/16 v2, 0x9

    move v4, v3

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/ref/ChunkedIntArray;->writeSlot(IIIII)V

    .line 630
    iput-boolean v1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->done:Z

    .line 631
    return-void
.end method

.method public isAttributeSpecified(I)Z
    .registers 3
    .parameter "attributeHandle"

    .prologue
    .line 1993
    const/4 v0, 0x0

    return v0
.end method

.method public isCharacterElementContentWhitespace(I)Z
    .registers 3
    .parameter "nodeHandle"

    .prologue
    .line 1968
    const/4 v0, 0x0

    return v0
.end method

.method public isDocumentAllDeclarationsProcessed(I)Z
    .registers 3
    .parameter "documentHandle"

    .prologue
    .line 1982
    const/4 v0, 0x0

    return v0
.end method

.method public isNodeAfter(II)Z
    .registers 4
    .parameter "nodeHandle1"
    .parameter "nodeHandle2"

    .prologue
    .line 1950
    const/4 v0, 0x0

    return v0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "feature"
    .parameter "version"

    .prologue
    .line 1765
    const/4 v0, 0x0

    return v0
.end method

.method public migrateTo(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 2
    .parameter "manager"

    .prologue
    .line 2409
    return-void
.end method

.method public needsTwoThreads()Z
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 458
    return-void
.end method

.method setContentBuffer(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 2
    .parameter "buffer"

    .prologue
    .line 300
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    .line 301
    return-void
.end method

.method public setDocumentBaseURI(Ljava/lang/String;)V
    .registers 2
    .parameter "baseURI"

    .prologue
    .line 1788
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_documentBaseURI:Ljava/lang/String;

    .line 1789
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 462
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 3
    .parameter "featureId"
    .parameter "state"

    .prologue
    .line 231
    return-void
.end method

.method public setIncrementalSAXSource(Lorg/apache/xml/dtm/ref/IncrementalSAXSource;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 181
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_incrSAXSource:Lorg/apache/xml/dtm/ref/IncrementalSAXSource;

    .line 184
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 185
    invoke-interface {p1, p0}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 192
    return-void
.end method

.method public setLocalNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .registers 2
    .parameter "poolRef"

    .prologue
    .line 241
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 242
    return-void
.end method

.method public setNsNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .registers 2
    .parameter "poolRef"

    .prologue
    .line 261
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 262
    return-void
.end method

.method public setPrefixNameTable(Lorg/apache/xml/dtm/ref/DTMStringPool;)V
    .registers 2
    .parameter "poolRef"

    .prologue
    .line 281
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    .line 282
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 2367
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
    .line 466
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 468
    return-void
.end method

.method public startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 595
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 601
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartDocument()V

    .line 473
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 20
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->processAccumulatedText()V

    .line 481
    const/4 v14, 0x0

    .line 482
    .local v14, prefix:Ljava/lang/String;
    const/16 v3, 0x3a

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 483
    .local v10, colon:I
    if-lez v10, :cond_18

    .line 484
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 487
    :cond_18
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prefix="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v14}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 488
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v5, v14}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendStartElement(III)V

    .line 495
    if-nez p4, :cond_bc

    const/4 v3, 0x0

    move v13, v3

    .line 497
    .local v13, nAtts:I
    :goto_5f
    const/4 v3, 0x1

    sub-int v12, v13, v3

    .local v12, i:I
    :goto_62
    if-ltz v12, :cond_c4

    .line 499
    move-object/from16 v0, p4

    move v1, v12

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    .line 500
    const-string v3, "xmlns:"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_81

    const-string v3, "xmlns"

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 502
    :cond_81
    const/4 v14, 0x0

    .line 503
    const/16 v3, 0x3a

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 504
    if-lez v10, :cond_c2

    .line 506
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 515
    :goto_96
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v14}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, p4

    move v1, v12

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p4

    move v1, v12

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendNSDeclaration(IIZ)V

    .line 497
    :cond_b9
    add-int/lit8 v12, v12, -0x1

    goto :goto_62

    .line 495
    .end local v12           #i:I
    .end local v13           #nAtts:I
    :cond_bc
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    move v13, v3

    goto :goto_5f

    .line 511
    .restart local v12       #i:I
    .restart local v13       #nAtts:I
    :cond_c2
    const/4 v14, 0x0

    goto :goto_96

    .line 522
    :cond_c4
    const/4 v3, 0x1

    sub-int v12, v13, v3

    :goto_c7
    if-ltz v12, :cond_167

    .line 524
    move-object/from16 v0, p4

    move v1, v12

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    .line 525
    const-string v3, "xmlns:"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15e

    const-string v3, "xmlns"

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15e

    .line 530
    const/4 v14, 0x0

    .line 531
    const/16 v3, 0x3a

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 532
    if-lez v10, :cond_162

    .line 534
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 535
    add-int/lit8 v3, v10, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 544
    :goto_104
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    move-object/from16 v0, p4

    move v1, v12

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char:Lorg/apache/xml/utils/FastStringBuffer;

    invoke-virtual {v3}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v11

    .line 547
    .local v11, contentEnd:I
    const-string v3, "xmlns"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15c

    const-string v3, "xmlns"

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15c

    .line 548
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_nsNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object/from16 v0, p4

    move v1, v12

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v4

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_localNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v5

    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_prefixNames:Lorg/apache/xml/dtm/ref/DTMStringPool;

    invoke-virtual {v3, v14}, Lorg/apache/xml/dtm/ref/DTMStringPool;->stringToIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p4

    move v1, v12

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "ID"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    iget v8, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    sub-int v9, v11, v3

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->appendAttribute(IIIZII)V

    .line 553
    :cond_15c
    iput v11, p0, Lorg/apache/xml/dtm/ref/DTMDocumentImpl;->m_char_current_start:I

    .line 522
    .end local v11           #contentEnd:I
    :cond_15e
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_c7

    .line 539
    :cond_162
    const-string v14, ""

    .line 540
    move-object/from16 p2, p3

    goto :goto_104

    .line 556
    :cond_167
    return-void
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
    .line 606
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 561
    return-void
.end method

.method public supportsPreStripping()Z
    .registers 2

    .prologue
    .line 1930
    const/4 v0, 0x0

    return v0
.end method
