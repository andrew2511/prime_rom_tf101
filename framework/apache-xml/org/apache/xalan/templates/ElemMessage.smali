.class public Lorg/apache/xalan/templates/ElemMessage;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemMessage.java"


# static fields
.field static final serialVersionUID:J = 0x153d549875451337L


# instance fields
.field private m_terminate:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

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
    .line 117
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, data:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v1

    iget-boolean v2, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    invoke-virtual {v1, p0, v0, v2}, Lorg/apache/xalan/transformer/MsgMgr;->message(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Z)V

    .line 121
    iget-boolean v1, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    if-eqz v1, :cond_24

    .line 122
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v1

    new-instance v2, Ljavax/xml/transform/TransformerException;

    const-string v3, "ER_STYLESHEET_DIRECTED_TERMINATION"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 123
    :cond_24
    return-void
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    const-string v0, "message"

    return-object v0
.end method

.method public getTerminate()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    return v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 87
    const/16 v0, 0x4b

    return v0
.end method

.method public setTerminate(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 63
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemMessage;->m_terminate:Z

    .line 64
    return-void
.end method
