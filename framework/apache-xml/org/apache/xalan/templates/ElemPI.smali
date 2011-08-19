.class public Lorg/apache/xalan/templates/ElemPI;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemPI.java"


# static fields
.field static final serialVersionUID:J = 0x4e0545caffe5c0e1L


# instance fields
.field private m_name_atv:Lorg/apache/xalan/templates/AVT;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 7
    .parameter "newChild"

    .prologue
    .line 187
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 189
    .local v0, type:I
    sparse-switch v0, :sswitch_data_22

    .line 215
    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemPI;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemPI;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    :sswitch_1d
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    .line 189
    :sswitch_data_22
    .sparse-switch
        0x9 -> :sswitch_1d
        0x11 -> :sswitch_1d
        0x1c -> :sswitch_1d
        0x1e -> :sswitch_1d
        0x23 -> :sswitch_1d
        0x24 -> :sswitch_1d
        0x25 -> :sswitch_1d
        0x2a -> :sswitch_1d
        0x32 -> :sswitch_1d
        0x48 -> :sswitch_1d
        0x49 -> :sswitch_1d
        0x4a -> :sswitch_1d
        0x4b -> :sswitch_1d
        0x4e -> :sswitch_1d
    .end sparse-switch
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 86
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 87
    .local v0, vnames:Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    if-eqz v1, :cond_1c

    .line 88
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 89
    :cond_1c
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 13
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 129
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v4

    .line 130
    .local v4, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v4}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v3

    .line 132
    .local v3, sourceNode:I
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    if-nez v5, :cond_14

    const/4 v5, 0x0

    move-object v1, v5

    .line 135
    .local v1, piName:Ljava/lang/String;
    :goto_11
    if-nez v1, :cond_1c

    .line 173
    :goto_13
    return-void

    .line 132
    .end local v1           #piName:Ljava/lang/String;
    :cond_14
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v5, v4, v3, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_11

    .line 137
    .restart local v1       #piName:Ljava/lang/String;
    :cond_1c
    const-string v5, "xml"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 139
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v5

    const-string v6, "WG_PROCESSINGINSTRUCTION_NAME_CANT_BE_XML"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "name"

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-virtual {v5, p0, v6, v7}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    .line 147
    :cond_36
    iget-object v5, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v5}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v5

    if-nez v5, :cond_56

    invoke-static {v1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 149
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v5

    const-string v6, "WG_PROCESSINGINSTRUCTION_NOTVALID_NCNAME"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "name"

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-virtual {v5, p0, v6, v7}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13

    .line 163
    :cond_56
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, data:Ljava/lang/String;
    :try_start_5a
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v5

    invoke-interface {v5, v1, v0}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Lorg/xml/sax/SAXException; {:try_start_5a .. :try_end_61} :catch_62

    goto :goto_13

    .line 169
    :catch_62
    move-exception v5

    move-object v2, v5

    .line 171
    .local v2, se:Lorg/xml/sax/SAXException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getName()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "processing-instruction"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 101
    const/16 v0, 0x3a

    return v0
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemPI;->m_name_atv:Lorg/apache/xalan/templates/AVT;

    .line 64
    return-void
.end method
