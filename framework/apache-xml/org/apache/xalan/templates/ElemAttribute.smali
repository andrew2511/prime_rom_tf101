.class public Lorg/apache/xalan/templates/ElemAttribute;
.super Lorg/apache/xalan/templates/ElemElement;
.source "ElemAttribute.java"


# static fields
.field static final serialVersionUID:J = 0x7a5d0fbfb8530a13L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemElement;-><init>()V

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 7
    .parameter "newChild"

    .prologue
    .line 225
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    .line 227
    .local v0, type:I
    sparse-switch v0, :sswitch_data_22

    .line 253
    const-string v1, "ER_CANNOT_ADD"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemAttribute;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/xalan/templates/ElemAttribute;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :sswitch_1d
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    return-object v1

    .line 227
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

.method constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 12
    .parameter "nodeName"
    .parameter "prefix"
    .parameter "nodeNamespace"
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 184
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 186
    invoke-virtual {p4}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 189
    .local v0, rhandler:Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p4, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToString(Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, val:Ljava/lang/String;
    :try_start_10
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, localName:Ljava/lang/String;
    if-eqz p2, :cond_25

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 195
    const-string v4, "CDATA"

    const/4 v6, 0x1

    move-object v1, p3

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    .end local v0           #rhandler:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v2           #localName:Ljava/lang/String;
    .end local v5           #val:Ljava/lang/String;
    :cond_24
    :goto_24
    return-void

    .line 197
    .restart local v0       #rhandler:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v2       #localName:Ljava/lang/String;
    .restart local v5       #val:Ljava/lang/String;
    :cond_25
    const-string v1, ""

    const-string v4, "CDATA"

    const/4 v6, 0x1

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2e
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_2e} :catch_2f

    goto :goto_24

    .line 200
    .end local v2           #localName:Ljava/lang/String;
    :catch_2f
    move-exception v1

    goto :goto_24
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const-string v0, "attribute"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 59
    const/16 v0, 0x30

    return v0
.end method

.method protected resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "rhandler"
    .parameter "prefix"
    .parameter "nodeNamespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 129
    if-eqz p2, :cond_32

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "xmlns"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 133
    :cond_10
    invoke-interface {p1, p3}, Lorg/apache/xml/serializer/SerializationHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 136
    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "xmlns"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 138
    :cond_24
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_33

    .line 140
    invoke-interface {p1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object v0

    .line 141
    .local v0, prefixMapping:Lorg/apache/xml/serializer/NamespaceMappings;
    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object p2

    .line 147
    .end local v0           #prefixMapping:Lorg/apache/xml/serializer/NamespaceMappings;
    :cond_32
    :goto_32
    return-object p2

    .line 144
    :cond_33
    const-string p2, ""

    goto :goto_32
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 268
    invoke-virtual {p1}, Lorg/apache/xalan/templates/AVT;->getSimpleString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xmlns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 273
    :cond_18
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemElement;->setName(Lorg/apache/xalan/templates/AVT;)V

    .line 274
    return-void
.end method

.method protected validateNodeName(Ljava/lang/String;)Z
    .registers 4
    .parameter "nodeName"

    .prologue
    const/4 v1, 0x0

    .line 159
    if-nez p1, :cond_5

    move v0, v1

    .line 163
    :goto_4
    return v0

    .line 161
    :cond_5
    const-string v0, "xmlns"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 162
    goto :goto_4

    .line 163
    :cond_f
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_4
.end method
