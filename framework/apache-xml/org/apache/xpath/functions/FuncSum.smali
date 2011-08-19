.class public Lorg/apache/xpath/functions/FuncSum;
.super Lorg/apache/xpath/functions/FunctionOneArg;
.source "FuncSum.java"


# static fields
.field static final serialVersionUID:J = -0x25bc00e53bbcd00fL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xpath/functions/FunctionOneArg;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 10
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v6, p0, Lorg/apache/xpath/functions/FuncSum;->m_arg0:Lorg/apache/xpath/Expression;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    .line 50
    .local v1, nodes:Lorg/apache/xml/dtm/DTMIterator;
    const-wide/16 v4, 0x0

    .line 53
    .local v4, sum:D
    :cond_c
    :goto_c
    const/4 v6, -0x1

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v2

    .local v2, pos:I
    if-eq v6, v2, :cond_23

    .line 55
    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTMIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 56
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v2}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    .line 58
    .local v3, s:Lorg/apache/xml/utils/XMLString;
    if-eqz v3, :cond_c

    .line 59
    invoke-interface {v3}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v6

    add-double/2addr v4, v6

    goto :goto_c

    .line 61
    .end local v0           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v3           #s:Lorg/apache/xml/utils/XMLString;
    :cond_23
    invoke-interface {v1}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 63
    new-instance v6, Lorg/apache/xpath/objects/XNumber;

    invoke-direct {v6, v4, v5}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    return-object v6
.end method
