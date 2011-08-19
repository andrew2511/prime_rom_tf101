.class public Lorg/apache/xalan/templates/ElemApplyImport;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemApplyImport.java"


# static fields
.field static final serialVersionUID:J = 0x343f00c5e0148b26L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 6
    .parameter "newChild"

    .prologue
    .line 105
    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemApplyImport;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemApplyImport;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 6
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->currentTemplateRuleIsNull()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 76
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v2

    const-string v3, "ER_NO_APPLY_IMPORT_IN_FOR_EACH"

    invoke-virtual {v2, p0, v3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    .line 80
    :cond_f
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v1

    .line 81
    .local v1, sourceNode:I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_22

    .line 84
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMatchedTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    .line 85
    .local v0, matchTemplate:Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, p0, v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->applyTemplateToNode(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplate;I)Z

    .line 92
    .end local v0           #matchTemplate:Lorg/apache/xalan/templates/ElemTemplate;
    :goto_21
    return-void

    .line 89
    :cond_22
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v2

    const-string v3, "ER_NULL_SOURCENODE_APPLYIMPORTS"

    invoke-virtual {v2, p0, v3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const-string v0, "apply-imports"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 49
    const/16 v0, 0x48

    return v0
.end method
