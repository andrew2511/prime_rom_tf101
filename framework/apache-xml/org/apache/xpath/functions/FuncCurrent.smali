.class public Lorg/apache/xpath/functions/FuncCurrent;
.super Lorg/apache/xpath/functions/Function;
.source "FuncCurrent.java"


# static fields
.field static final serialVersionUID:J = 0x4f50e25a5d8e8640L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 8
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNodeList()Lorg/apache/xpath/axes/SubContextList;

    move-result-object v2

    .line 56
    .local v2, subContextList:Lorg/apache/xpath/axes/SubContextList;
    const/4 v0, -0x1

    .line 58
    .local v0, currentNode:I
    if-eqz v2, :cond_30

    .line 59
    instance-of v3, v2, Lorg/apache/xpath/axes/PredicatedNodeTest;

    if-eqz v3, :cond_1f

    .line 60
    check-cast v2, Lorg/apache/xpath/axes/PredicatedNodeTest;

    .end local v2           #subContextList:Lorg/apache/xpath/axes/SubContextList;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getLocPathIterator()Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object v1

    .line 62
    .local v1, iter:Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getCurrentContextNode()I

    move-result v0

    .line 71
    .end local v1           #iter:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_15
    :goto_15
    new-instance v3, Lorg/apache/xpath/objects/XNodeSet;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    return-object v3

    .line 63
    .restart local v2       #subContextList:Lorg/apache/xpath/axes/SubContextList;
    :cond_1f
    instance-of v3, v2, Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v3, :cond_15

    .line 64
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ER_PROCESSOR_ERROR"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    :cond_30
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getContextNode()I

    move-result v0

    goto :goto_15
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 3
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 80
    return-void
.end method
