.class public Lorg/apache/xalan/templates/ElemComment;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemComment.java"


# static fields
.field static final serialVersionUID:J = -0x7a4ec5e86dcb651eL


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
    .registers 7
    .parameter "newChild"

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 108
    .local v0, type:I
    sparse-switch v0, :sswitch_data_22

    .line 134
    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemComment;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemComment;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :sswitch_1d
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    .line 108
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

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 5
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, data:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/xml/serializer/SerializationHandler;->comment(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_b} :catch_c

    .line 92
    return-void

    .line 88
    .end local v0           #data:Ljava/lang/String;
    :catch_c
    move-exception v2

    move-object v1, v2

    .line 90
    .local v1, se:Lorg/xml/sax/SAXException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const-string v0, "comment"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 49
    const/16 v0, 0x3b

    return v0
.end method
