.class public Lorg/apache/xalan/templates/ElemSort;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemSort.java"


# static fields
.field static final serialVersionUID:J = -0x454568220538dba2L


# instance fields
.field private m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

.field private m_dataType_avt:Lorg/apache/xalan/templates/AVT;

.field private m_lang_avt:Lorg/apache/xalan/templates/AVT;

.field private m_order_avt:Lorg/apache/xalan/templates/AVT;

.field private m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 54
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    .line 102
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    .line 135
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    .line 216
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    .line 249
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 6
    .parameter "newChild"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 318
    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemSort;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemSort;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 336
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 337
    .local v0, cstate:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    .line 338
    .local v1, vnames:Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_18

    .line 339
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 340
    :cond_18
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_25

    .line 341
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 342
    :cond_25
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_32

    .line 343
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 344
    :cond_32
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_3f

    .line 345
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 346
    :cond_3f
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_4c

    .line 347
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 348
    :cond_4c
    return-void
.end method

.method public getCaseOrder()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getDataType()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getLang()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 303
    const-string v0, "sort"

    return-object v0
.end method

.method public getOrder()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 293
    const/16 v0, 0x40

    return v0
.end method

.method public setCaseOrder(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 266
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_caseorder_avt:Lorg/apache/xalan/templates/AVT;

    .line 267
    return-void
.end method

.method public setDataType(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 171
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_dataType_avt:Lorg/apache/xalan/templates/AVT;

    .line 172
    return-void
.end method

.method public setLang(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_lang_avt:Lorg/apache/xalan/templates/AVT;

    .line 115
    return-void
.end method

.method public setOrder(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 228
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_order_avt:Lorg/apache/xalan/templates/AVT;

    .line 229
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_f

    .line 74
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemSort;->m_selectExpression:Lorg/apache/xpath/XPath;

    .line 77
    :goto_e
    return-void

    .line 76
    :cond_f
    const-string v0, "ER_NO_CURLYBRACE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemSort;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e
.end method
