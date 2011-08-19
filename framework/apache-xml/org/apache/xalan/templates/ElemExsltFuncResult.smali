.class public Lorg/apache/xalan/templates/ElemExsltFuncResult;
.super Lorg/apache/xalan/templates/ElemVariable;
.source "ElemExsltFuncResult.java"


# static fields
.field static final serialVersionUID:J = -0x3045724a014950b3L


# instance fields
.field private m_callerFrameSize:I

.field private m_isResultSet:Z

.field private m_result:Lorg/apache/xpath/objects/XObject;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    .line 40
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_isResultSet:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_result:Lorg/apache/xpath/objects/XObject;

    .line 46
    iput v1, p0, Lorg/apache/xalan/templates/ElemExsltFuncResult;->m_callerFrameSize:I

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 7
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 60
    .local v0, context:Lorg/apache/xpath/XPathContext;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->currentFuncResultSeen()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 61
    new-instance v3, Ljavax/xml/transform/TransformerException;

    const-string v4, "An EXSLT function cannot set more than one result!"

    invoke-direct {v3, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_12
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 67
    .local v1, sourceNode:I
    invoke-virtual {p0, p1, v1}, Lorg/apache/xalan/templates/ElemExsltFuncResult;->getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 68
    .local v2, var:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentFuncResult()Ljava/lang/Object;

    .line 69
    invoke-virtual {p1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentFuncResult(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string v0, "result"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 81
    const/16 v0, 0x59

    return v0
.end method
