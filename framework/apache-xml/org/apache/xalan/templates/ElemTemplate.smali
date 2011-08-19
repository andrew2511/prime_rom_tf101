.class public Lorg/apache/xalan/templates/ElemTemplate;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemTemplate.java"


# static fields
.field static final serialVersionUID:J = -0x49513028de1a297aL


# instance fields
.field private m_argsQNameIDs:[I

.field public m_frameSize:I

.field m_inArgsSize:I

.field private m_matchPattern:Lorg/apache/xpath/XPath;

.field private m_mode:Lorg/apache/xml/utils/QName;

.field private m_name:Lorg/apache/xml/utils/QName;

.field private m_priority:D

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

.field private m_systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 158
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    .line 196
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    .line 266
    const-wide/high16 v0, -0x10

    iput-wide v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 348
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 349
    .local v0, cstate:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    .line 350
    .local v1, vnames:Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_1c

    .line 351
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 353
    :cond_1c
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    .line 354
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_inArgsSize:I

    .line 355
    return-void
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 4
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 363
    .local v0, cstate:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 364
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getFrameSize()I

    move-result v1

    iput v1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_frameSize:I

    .line 366
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->resetStackFrameSize()V

    .line 367
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 4
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 384
    .local v0, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->pushRTFContext()V

    .line 389
    const/4 v1, 0x1

    invoke-virtual {p1, p0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 400
    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->popRTFContext()V

    .line 401
    return-void
.end method

.method public getMatch()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getMode()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_mode:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    const-string v0, "template"

    return-object v0
.end method

.method public getPriority()D
    .registers 3

    .prologue
    .line 295
    iget-wide v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    return-wide v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v0

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 306
    const/16 v0, 0x13

    return v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "root"

    .prologue
    .line 410
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeTemplates(Lorg/apache/xalan/templates/ElemTemplate;)V

    .line 411
    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .registers 3
    .parameter "locator"

    .prologue
    .line 98
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_publicId:Ljava/lang/String;

    .line 99
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_systemId:Ljava/lang/String;

    .line 101
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 102
    return-void
.end method

.method public setMatch(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 173
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_matchPattern:Lorg/apache/xpath/XPath;

    .line 174
    return-void
.end method

.method public setMode(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 244
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_mode:Lorg/apache/xml/utils/QName;

    .line 245
    return-void
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 209
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_name:Lorg/apache/xml/utils/QName;

    .line 210
    return-void
.end method

.method public setPriority(D)V
    .registers 3
    .parameter "v"

    .prologue
    .line 280
    iput-wide p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_priority:D

    .line 281
    return-void
.end method

.method public setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2
    .parameter "sheet"

    .prologue
    .line 140
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTemplate;->m_stylesheet:Lorg/apache/xalan/templates/Stylesheet;

    .line 141
    return-void
.end method
