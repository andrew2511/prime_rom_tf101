.class public Lorg/apache/xalan/templates/KeyDeclaration;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "KeyDeclaration.java"


# static fields
.field static final serialVersionUID:J = 0x6b3144966407f67eL


# instance fields
.field private m_matchPattern:Lorg/apache/xpath/XPath;

.field private m_name:Lorg/apache/xml/utils/QName;

.field private m_use:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;I)V
    .registers 4
    .parameter "parentNode"
    .parameter "docOrderNumber"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    .line 47
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_parentNode:Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 48
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/KeyDeclaration;->setUid(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 181
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 182
    .local v0, vnames:Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_1c

    .line 183
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 184
    :cond_1c
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_2d

    .line 185
    iget-object v1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 186
    :cond_2d
    return-void
.end method

.method public getMatch()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_name:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    const-string v0, "key"

    return-object v0
.end method

.method public getUse()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 168
    const/16 v0, 0x1f

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "root"

    .prologue
    .line 195
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeKeys(Lorg/apache/xalan/templates/KeyDeclaration;)V

    .line 196
    return-void
.end method

.method public setMatch(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_matchPattern:Lorg/apache/xpath/XPath;

    .line 112
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_name:Lorg/apache/xml/utils/QName;

    .line 68
    return-void
.end method

.method public setUse(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/xalan/templates/KeyDeclaration;->m_use:Lorg/apache/xpath/XPath;

    .line 145
    return-void
.end method
