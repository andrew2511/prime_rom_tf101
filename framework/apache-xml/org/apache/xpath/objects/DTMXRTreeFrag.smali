.class public final Lorg/apache/xpath/objects/DTMXRTreeFrag;
.super Ljava/lang/Object;
.source "DTMXRTreeFrag.java"


# instance fields
.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_dtmIdentity:I

.field private m_xctxt:Lorg/apache/xpath/XPathContext;


# direct methods
.method public constructor <init>(ILorg/apache/xpath/XPathContext;)V
    .registers 4
    .parameter "dtmIdentity"
    .parameter "xctxt"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    .line 36
    iput-object p2, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    .line 37
    iput p1, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    .line 38
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 39
    return-void
.end method


# virtual methods
.method public final destruct()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 43
    iput-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    .line 44
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x0

    .line 52
    instance-of v0, p1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    if-eqz v0, :cond_13

    .line 53
    iget v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    check-cast p1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->getDTMIdentity()I

    move-result v1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    .line 55
    :goto_10
    return v0

    :cond_11
    move v0, v2

    .line 53
    goto :goto_10

    .restart local p1
    :cond_13
    move v0, v2

    .line 55
    goto :goto_10
.end method

.method final getDTM()Lorg/apache/xml/dtm/DTM;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtm:Lorg/apache/xml/dtm/DTM;

    return-object v0
.end method

.method public final getDTMIdentity()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    return v0
.end method

.method final getXPathContext()Lorg/apache/xpath/XPathContext;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_xctxt:Lorg/apache/xpath/XPathContext;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;->m_dtmIdentity:I

    return v0
.end method
