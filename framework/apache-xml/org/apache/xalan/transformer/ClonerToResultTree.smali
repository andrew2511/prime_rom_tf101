.class public Lorg/apache/xalan/transformer/ClonerToResultTree;
.super Ljava/lang/Object;
.source "ClonerToResultTree.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneToResultTree(IILorg/apache/xml/dtm/DTM;Lorg/apache/xml/serializer/SerializationHandler;Z)V
    .registers 12
    .parameter "node"
    .parameter "nodeType"
    .parameter "dtm"
    .parameter "rth"
    .parameter "shouldCloneAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_7a

    .line 203
    :pswitch_3
    :try_start_3
    new-instance v4, Ljavax/xml/transform/TransformerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t clone node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_20
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_20} :catch_20

    .line 207
    :catch_20
    move-exception v4

    move-object v2, v4

    .line 209
    .local v2, se:Lorg/xml/sax/SAXException;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 143
    .end local v2           #se:Lorg/xml/sax/SAXException;
    :pswitch_28
    const/4 v4, 0x0

    :try_start_29
    invoke-interface {p2, p0, p3, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 211
    :cond_2c
    :goto_2c
    :pswitch_2c
    return-void

    .line 154
    :pswitch_2d
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, ns:Ljava/lang/String;
    if-nez v1, :cond_35

    const-string v1, ""

    .line 156
    :cond_35
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, localName:Ljava/lang/String;
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v1, v0, v4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz p4, :cond_2c

    .line 167
    invoke-static {p3, p0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttributes(Lorg/apache/xml/serializer/SerializationHandler;I)V

    .line 168
    invoke-static {p3, p0, p1, p2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    goto :goto_2c

    .line 173
    .end local v0           #localName:Ljava/lang/String;
    .end local v1           #ns:Ljava/lang/String;
    :pswitch_49
    invoke-interface {p3}, Lorg/apache/xml/serializer/SerializationHandler;->startCDATA()V

    .line 174
    const/4 v4, 0x0

    invoke-interface {p2, p0, p3, v4}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 175
    invoke-interface {p3}, Lorg/apache/xml/serializer/SerializationHandler;->endCDATA()V

    goto :goto_2c

    .line 178
    :pswitch_54
    invoke-static {p3, p0}, Lorg/apache/xalan/serialize/SerializerUtils;->addAttribute(Lorg/apache/xml/serializer/SerializationHandler;I)V

    goto :goto_2c

    .line 185
    :pswitch_58
    const/16 v4, 0xd

    invoke-static {p3, p0, v4, p2}, Lorg/apache/xalan/serialize/SerializerUtils;->processNSDecls(Lorg/apache/xml/serializer/SerializationHandler;IILorg/apache/xml/dtm/DTM;)V

    goto :goto_2c

    .line 188
    :pswitch_5e
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v3

    .line 189
    .local v3, xstr:Lorg/apache/xml/utils/XMLString;
    invoke-interface {v3, p3}, Lorg/apache/xml/utils/XMLString;->dispatchAsComment(Lorg/xml/sax/ext/LexicalHandler;)V

    goto :goto_2c

    .line 192
    .end local v3           #xstr:Lorg/apache/xml/utils/XMLString;
    :pswitch_66
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->entityReference(Ljava/lang/String;)V

    goto :goto_2c

    .line 197
    :pswitch_6e
    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeNameX(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, p0}, Lorg/apache/xml/dtm/DTM;->getNodeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Lorg/xml/sax/SAXException; {:try_start_29 .. :try_end_79} :catch_20

    goto :goto_2c

    .line 140
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_54
        :pswitch_28
        :pswitch_49
        :pswitch_66
        :pswitch_3
        :pswitch_6e
        :pswitch_5e
        :pswitch_2c
        :pswitch_3
        :pswitch_2c
        :pswitch_3
        :pswitch_58
    .end packed-switch
.end method
