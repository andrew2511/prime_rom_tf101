.class public Lorg/apache/xalan/templates/ElemText;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemText.java"


# static fields
.field static final serialVersionUID:J = 0x1331e74c772b66a7L


# instance fields
.field private m_disableOutputEscaping:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 7
    .parameter "newChild"

    .prologue
    .line 132
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 134
    .local v0, type:I
    packed-switch v0, :pswitch_data_22

    .line 139
    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemText;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemText;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :pswitch_1d
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    .line 134
    :pswitch_data_22
    .packed-switch 0x4e
        :pswitch_1d
    .end packed-switch
.end method

.method public getDisableOutputEscaping()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    const-string v0, "text"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 107
    const/16 v0, 0x2a

    return v0
.end method

.method public setDisableOutputEscaping(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemText;->m_disableOutputEscaping:Z

    .line 71
    return-void
.end method
