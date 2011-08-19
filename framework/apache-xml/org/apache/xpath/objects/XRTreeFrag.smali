.class public Lorg/apache/xpath/objects/XRTreeFrag;
.super Lorg/apache/xpath/objects/XObject;
.source "XRTreeFrag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x2c6e343d20cc504fL


# instance fields
.field private m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

.field protected m_allowRelease:Z

.field private m_dtmRoot:I

.field private m_xmlStr:Lorg/apache/xml/utils/XMLString;


# direct methods
.method public constructor <init>(ILorg/apache/xpath/XPathContext;)V
    .registers 5
    .parameter "root"
    .parameter "xctxt"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, v1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 171
    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    .line 65
    return-void
.end method

.method public constructor <init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    .registers 6
    .parameter "root"
    .parameter "xctxt"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, v1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 171
    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 53
    invoke-virtual {p0, p3}, Lorg/apache/xpath/objects/XRTreeFrag;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/xpath/objects/XRTreeFrag;->initDTM(ILorg/apache/xpath/XPathContext;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/Expression;)V
    .registers 3
    .parameter "expr"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 96
    return-void
.end method

.method private final initDTM(ILorg/apache/xpath/XPathContext;)V
    .registers 5
    .parameter "root"
    .parameter "xctxt"

    .prologue
    .line 68
    iput p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    .line 69
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 70
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    if-eqz v0, :cond_12

    .line 71
    invoke-virtual {p2, v0}, Lorg/apache/xpath/XPathContext;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/xpath/XPathContext;->getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    .line 73
    :cond_12
    return-void
.end method


# virtual methods
.method public allowDetachToRelease(Z)V
    .registers 2
    .parameter "allowRelease"

    .prologue
    .line 106
    iput-boolean p1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    .line 107
    return-void
.end method

.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 3
    .parameter "fsb"

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    .line 194
    .local v0, xstring:Lorg/apache/xpath/objects/XString;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XString;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 195
    return-void
.end method

.method public asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;
    .registers 4

    .prologue
    .line 229
    new-instance v0, Lorg/apache/xpath/axes/RTFIterator;

    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v2}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/axes/RTFIterator;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-object v0
.end method

.method public bool()Z
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public convertToNodeset()Lorg/w3c/dom/NodeList;
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_c

    .line 241
    iget-object p0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lorg/w3c/dom/NodeList;

    move-object v0, p0

    .line 243
    :goto_b
    return-object v0

    .restart local p0
    :cond_c
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeList;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->asNodeIterator()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_b
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_allowRelease:Z

    if-eqz v0, :cond_d

    .line 120
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XRTreeFrag;->setObject(Ljava/lang/Object;)V

    .line 123
    :cond_d
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 9
    .parameter "obj2"

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 260
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v3, v1, :cond_e

    .line 266
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result v1

    .line 292
    :goto_d
    return v1

    .line 268
    :cond_e
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v5, v1, :cond_22

    .line 270
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->bool()Z

    move-result v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v2

    if-ne v1, v2, :cond_20

    move v1, v5

    goto :goto_d

    :cond_20
    move v1, v6

    goto :goto_d

    .line 272
    :cond_22
    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    if-ne v1, v2, :cond_39

    .line 274
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->num()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-nez v1, :cond_37

    move v1, v5

    goto :goto_d

    :cond_37
    move v1, v6

    goto :goto_d

    .line 276
    :cond_39
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v3, v1, :cond_4c

    .line 278
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_d

    .line 280
    :cond_4c
    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    if-ne v1, v2, :cond_60

    .line 282
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_d

    .line 284
    :cond_60
    const/4 v1, 0x5

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v2

    if-ne v1, v2, :cond_74

    .line 288
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    move-result v1

    goto :goto_d

    .line 292
    :cond_74
    invoke-super {p0, p1}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z
    :try_end_77
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_77} :catch_79

    move-result v1

    goto :goto_d

    .line 295
    :catch_79
    move-exception v1

    move-object v0, v1

    .line 297
    .local v0, te:Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x5

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    const-string v0, "#RTREEFRAG"

    return-object v0
.end method

.method public num()D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XRTreeFrag;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 157
    .local v0, s:Lorg/apache/xml/utils/XMLString;
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v1

    return-wide v1
.end method

.method public object()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 84
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    new-instance v1, Lorg/apache/xpath/NodeSetDTM;

    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    iget-object v3, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v3}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/xpath/NodeSetDTM;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 86
    :goto_1e
    return-object v0

    :cond_1f
    invoke-super {p0}, Lorg/apache/xpath/objects/XObject;->object()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1e
.end method

.method public rtf()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    return v0
.end method

.method public str()Ljava/lang/String;
    .registers 4

    .prologue
    .line 205
    iget-object v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    iget v2, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, str:Ljava/lang/String;
    if-nez v0, :cond_15

    const-string v1, ""

    :goto_14
    return-object v1

    :cond_15
    move-object v1, v0

    goto :goto_14
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    if-nez v0, :cond_12

    .line 181
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_DTMXRTreeFrag:Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iget v1, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_dtmRoot:I

    invoke-interface {v0, v1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    .line 183
    :cond_12
    iget-object v0, p0, Lorg/apache/xpath/objects/XRTreeFrag;->m_xmlStr:Lorg/apache/xml/utils/XMLString;

    return-object v0
.end method
