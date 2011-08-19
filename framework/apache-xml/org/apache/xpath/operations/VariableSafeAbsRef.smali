.class public Lorg/apache/xpath/operations/VariableSafeAbsRef;
.super Lorg/apache/xpath/operations/Variable;
.source "VariableSafeAbsRef.java"


# static fields
.field static final serialVersionUID:J = -0x7f52f278a11a31dcL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xpath/operations/Variable;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .registers 9
    .parameter "xctxt"
    .parameter "destructiveOK"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/operations/Variable;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    .line 62
    .local v3, xns:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    .line 63
    .local v1, dtmMgr:Lorg/apache/xml/dtm/DTMManager;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result v0

    .line 64
    .local v0, context:I
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->getRoot()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v4

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v5

    if-eq v4, v5, :cond_30

    .line 67
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XNodeSet;->getContainedIter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    check-cast v2, Lorg/apache/xpath/Expression;

    .line 68
    .local v2, expr:Lorg/apache/xpath/Expression;
    invoke-virtual {v2, p1, v0}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v3

    .end local v3           #xns:Lorg/apache/xpath/objects/XNodeSet;
    check-cast v3, Lorg/apache/xpath/objects/XNodeSet;

    .line 70
    .end local v2           #expr:Lorg/apache/xpath/Expression;
    .restart local v3       #xns:Lorg/apache/xpath/objects/XNodeSet;
    :cond_30
    return-object v3
.end method
