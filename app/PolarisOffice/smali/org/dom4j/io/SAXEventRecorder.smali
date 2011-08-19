.class public Lorg/dom4j/io/SAXEventRecorder;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXEventRecorder.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final NULL:B = 0x2t

.field private static final OBJECT:B = 0x1t

.field private static final STRING:B = 0x0t

.field private static final XMLNS:Ljava/lang/String; = "xmlns"

.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private events:Ljava/util/List;

.field private prefixMappings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    .line 79
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "eName"
    .parameter "aName"
    .parameter "type"
    .parameter "valueDefault"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 435
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 436
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 437
    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {v0, p4}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 439
    invoke-virtual {v0, p5}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 371
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 372
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 373
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 374
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method public comment([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 417
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 418
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 419
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 420
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 427
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 428
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 412
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method public endDTD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 390
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 265
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v4, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 341
    .local v4, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v4, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {v4, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 343
    invoke-virtual {v4, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 344
    iget-object v5, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, elementName:Lorg/dom4j/QName;
    if-eqz p1, :cond_1

    .line 351
    new-instance v0, Lorg/dom4j/QName;

    .end local v0           #elementName:Lorg/dom4j/QName;
    invoke-static {p1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v5

    invoke-direct {v0, p2, v5}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    .line 356
    .restart local v0       #elementName:Lorg/dom4j/QName;
    :goto_0
    iget-object v5, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 357
    .local v3, prefixes:Ljava/util/List;
    if-eqz v3, :cond_0

    .line 358
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 359
    .local v1, itr:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 367
    .end local v1           #itr:Ljava/util/Iterator;
    :cond_0
    return-void

    .line 353
    .end local v3           #prefixes:Ljava/util/List;
    :cond_1
    new-instance v0, Lorg/dom4j/QName;

    .end local v0           #elementName:Lorg/dom4j/QName;
    invoke-direct {v0, p2}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;)V

    .restart local v0       #elementName:Lorg/dom4j/QName;
    goto :goto_0

    .line 361
    .restart local v1       #itr:Ljava/util/Iterator;
    .restart local v3       #prefixes:Ljava/util/List;
    :cond_2
    new-instance v2, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 362
    .local v2, prefixEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 363
    iget-object v5, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 401
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 402
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 254
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 255
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "publicId"
    .parameter "sysId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 454
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 457
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 446
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 447
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 448
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 239
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 472
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    .line 474
    :cond_0
    return-void
.end method

.method public replay(Lorg/xml/sax/ContentHandler;)V
    .locals 23
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 85
    .end local p0
    .local v20, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 232
    return-void

    .line 86
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    .line 88
    .local v21, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    move-object/from16 v0, v21

    iget-byte v0, v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->event:B

    move v6, v0

    packed-switch v6, :pswitch_data_0

    .line 228
    new-instance v6, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "Unrecognized event: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, v21

    iget-byte v0, v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->event:B

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 228
    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 91
    :pswitch_0
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 92
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_1
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 98
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 97
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :pswitch_2
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    goto :goto_0

    .line 113
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto/16 :goto_0

    .line 119
    :pswitch_5
    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 120
    .local v5, attributes:Lorg/xml/sax/helpers/AttributesImpl;
    const/4 v6, 0x3

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 122
    .local v12, attParmList:Ljava/util/List;
    if-eqz v12, :cond_1

    .line 123
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 125
    .local v14, attsItr:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 132
    .end local v14           #attsItr:Ljava/util/Iterator;
    :cond_1
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 133
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 134
    const/4 v7, 0x2

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v7

    .line 133
    check-cast v7, Ljava/lang/String;

    .line 132
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 126
    .restart local v14       #attsItr:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    .line 127
    .local v13, attParms:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v13, v6

    const/4 v7, 0x1

    aget-object v7, v13, v7

    .line 128
    const/4 v8, 0x2

    aget-object v8, v13, v8

    const/4 v9, 0x3

    aget-object v9, v13, v9

    const/4 v10, 0x4

    aget-object v10, v13, v10

    .line 127
    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .end local v5           #attributes:Lorg/xml/sax/helpers/AttributesImpl;
    .end local v12           #attParmList:Ljava/util/List;
    .end local v13           #attParms:[Ljava/lang/String;
    .end local v14           #attsItr:Ljava/util/Iterator;
    :pswitch_6
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 140
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    const/4 v6, 0x2

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v6

    .line 140
    check-cast v6, Ljava/lang/String;

    .line 139
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v6

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :pswitch_7
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [C

    .line 148
    .local v17, chars:[C
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 149
    .local v22, start:I
    const/4 v6, 0x2

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 150
    .local v19, end:I
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v22

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_0

    .line 156
    .end local v17           #chars:[C
    .end local v19           #end:I
    .end local v22           #start:I
    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v0

    .line 157
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    .line 156
    check-cast p0, Ljava/lang/String;

    .line 157
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 158
    const/4 v7, 0x2

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 156
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v0

    invoke-interface {v5}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    goto/16 :goto_0

    .line 168
    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v0

    .line 169
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    .line 168
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v0

    .line 175
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    .line 174
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v0

    invoke-interface {v5}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    goto/16 :goto_0

    .line 185
    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v0

    invoke-interface {v5}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_0

    .line 191
    :pswitch_e
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [C

    .line 192
    .local v15, cchars:[C
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 193
    .local v18, cstart:I
    const/4 v6, 0x2

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 194
    .local v16, cend:I
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto/16 :goto_0

    .line 200
    .end local v15           #cchars:[C
    .end local v16           #cend:I
    .end local v18           #cstart:I
    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    move-object v5, v0

    .line 201
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    .line 200
    check-cast p0, Ljava/lang/String;

    .line 201
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 200
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    move-object v6, v0

    .line 207
    const/4 v7, 0x0

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v7

    .line 206
    check-cast v7, Ljava/lang/String;

    .line 207
    const/4 v8, 0x1

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 208
    const/4 v9, 0x2

    move-object/from16 v0, v21

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 209
    const/4 v10, 0x3

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v10

    .line 208
    check-cast v10, Ljava/lang/String;

    .line 209
    const/4 v11, 0x4

    move-object/from16 v0, v21

    move v1, v11

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 206
    invoke-interface/range {v6 .. v11}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    move-object v5, v0

    .line 215
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 216
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v6

    .line 215
    check-cast v6, Ljava/lang/String;

    .line 214
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    move-object v5, v0

    .line 222
    const/4 v6, 0x0

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 223
    const/4 v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v6

    .line 222
    check-cast v6, Ljava/lang/String;

    .line 223
    const/4 v7, 0x2

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->getParm(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 221
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 407
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 382
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 383
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 384
    invoke-virtual {v0, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 385
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 260
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qualifiedName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v8, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 271
    .local v8, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v8, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 272
    invoke-virtual {v8, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 273
    invoke-virtual {v8, p3}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, qName:Lorg/dom4j/QName;
    if-eqz p1, :cond_1

    .line 277
    new-instance v7, Lorg/dom4j/QName;

    .end local v7           #qName:Lorg/dom4j/QName;
    invoke-static {p1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v9

    invoke-direct {v7, p2, v9}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;Lorg/dom4j/Namespace;)V

    .line 282
    .restart local v7       #qName:Lorg/dom4j/QName;
    :goto_0
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v9

    if-lez v9, :cond_0

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    .local v1, attParmList:Ljava/util/List;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 286
    .local v2, attParms:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v9

    if-lt v3, v9, :cond_2

    .line 331
    invoke-virtual {v8, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 334
    .end local v1           #attParmList:Ljava/util/List;
    .end local v2           #attParms:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    iget-object v9, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-void

    .line 279
    :cond_1
    new-instance v7, Lorg/dom4j/QName;

    .end local v7           #qName:Lorg/dom4j/QName;
    invoke-direct {v7, p2}, Lorg/dom4j/QName;-><init>(Ljava/lang/String;)V

    .restart local v7       #qName:Lorg/dom4j/QName;
    goto :goto_0

    .line 288
    .restart local v1       #attParmList:Ljava/util/List;
    .restart local v2       #attParms:[Ljava/lang/String;
    .restart local v3       #i:I
    :cond_2
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, attLocalName:Ljava/lang/String;
    const-string v9, "xmlns"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 295
    const/4 v4, 0x0

    .line 296
    .local v4, prefix:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_4

    .line 297
    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    :goto_2
    new-instance v5, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    .line 303
    const/4 v9, 0x2

    .line 302
    invoke-direct {v5, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 304
    .local v5, prefixEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v5, v4}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 305
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 306
    iget-object v9, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v9, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 311
    .local v6, prefixes:Ljava/util/List;
    if-nez v6, :cond_3

    .line 312
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #prefixes:Ljava/util/List;
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .restart local v6       #prefixes:Ljava/util/List;
    iget-object v9, p0, Lorg/dom4j/io/SAXEventRecorder;->prefixMappings:Ljava/util/Map;

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_3
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #prefixEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    .end local v6           #prefixes:Ljava/util/List;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 299
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_4
    const-string v4, ""

    goto :goto_2

    .line 319
    .end local v4           #prefix:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x5

    new-array v2, v9, [Ljava/lang/String;

    .line 320
    const/4 v9, 0x0

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 321
    const/4 v9, 0x1

    aput-object v0, v2, v9

    .line 322
    const/4 v9, 0x2

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 323
    const/4 v9, 0x3

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 324
    const/4 v9, 0x4

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 325
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 395
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 396
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;-><init>(B)V

    .line 247
    .local v0, saxEvent:Lorg/dom4j/io/SAXEventRecorder$SAXEvent;
    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v0, p2}, Lorg/dom4j/io/SAXEventRecorder$SAXEvent;->addParm(Ljava/lang/Object;)V

    .line 249
    iget-object v1, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 467
    :goto_0
    return-void

    .line 464
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 465
    iget-object v0, p0, Lorg/dom4j/io/SAXEventRecorder;->events:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method
