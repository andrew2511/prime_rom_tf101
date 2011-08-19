.class public Lorg/apache/xalan/templates/ElemTextLiteral;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemTextLiteral.java"


# static fields
.field static final serialVersionUID:J = -0x6d412a2f6b050c38L


# instance fields
.field private m_ch:[C

.field private m_disableOutputEscaping:Z

.field private m_preserveSpace:Z

.field private m_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

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
    .line 206
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 208
    .local v0, rth:Lorg/apache/xml/serializer/SerializationHandler;
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    if-eqz v2, :cond_f

    .line 210
    const-string v2, "javax.xml.transform.disable-output-escaping"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_f
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    array-length v4, v4

    invoke-interface {v0, v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    .line 215
    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    if-eqz v2, :cond_23

    .line 217
    const-string v2, "javax.xml.transform.enable-output-escaping"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_23} :catch_24

    .line 224
    :cond_23
    return-void

    .line 220
    .end local v0           #rth:Lorg/apache/xml/serializer/SerializationHandler;
    :catch_24
    move-exception v2

    move-object v1, v2

    .line 222
    .local v1, se:Lorg/xml/sax/SAXException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getChars()[C
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    return-object v0
.end method

.method public getDisableOutputEscaping()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    const-string v0, "#Text"

    return-object v0
.end method

.method public declared-synchronized getNodeValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 108
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;

    .line 111
    :cond_e
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_str:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    .line 106
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreserveSpace()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_preserveSpace:Z

    return v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 180
    const/16 v0, 0x4e

    return v0
.end method

.method public setChars([C)V
    .registers 2
    .parameter "v"

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_ch:[C

    .line 86
    return-void
.end method

.method public setDisableOutputEscaping(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 143
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_disableOutputEscaping:Z

    .line 144
    return-void
.end method

.method public setPreserveSpace(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 52
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemTextLiteral;->m_preserveSpace:Z

    .line 53
    return-void
.end method
