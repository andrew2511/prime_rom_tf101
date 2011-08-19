.class public Lorg/apache/xpath/axes/SelfIteratorNoPredicate;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "SelfIteratorNoPredicate.java"


# static fields
.field static final serialVersionUID:J = -0x3aa8ec27a3992a39L


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 62
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 5
    .parameter "compiler"
    .parameter "opPos"
    .parameter "analysis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;IIZ)V

    .line 51
    return-void
.end method


# virtual methods
.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 3
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    return v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 3
    .parameter "xctxt"

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public nextNode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 75
    iget-boolean v1, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_foundLast:Z

    if-eqz v1, :cond_7

    move v1, v2

    .line 95
    :goto_6
    return v1

    .line 80
    :cond_7
    iget v1, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_lastFetched:I

    if-ne v2, v1, :cond_1a

    iget v1, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_context:I

    move v0, v1

    .local v0, next:I
    :goto_e
    iput v0, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_lastFetched:I

    .line 85
    if-eq v2, v0, :cond_1c

    .line 87
    iget v1, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_pos:I

    move v1, v0

    .line 89
    goto :goto_6

    .end local v0           #next:I
    :cond_1a
    move v0, v2

    .line 80
    goto :goto_e

    .line 93
    .restart local v0       #next:I
    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;->m_foundLast:Z

    move v1, v2

    .line 95
    goto :goto_6
.end method
