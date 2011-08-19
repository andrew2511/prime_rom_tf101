.class public Lorg/apache/xalan/transformer/TransformerHandlerImpl;
.super Ljava/lang/Object;
.source "TransformerHandlerImpl.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/ErrorHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# static fields
.field private static DEBUG:Z


# instance fields
.field private m_baseSystemID:Ljava/lang/String;

.field private m_contentHandler:Lorg/xml/sax/ContentHandler;

.field private m_declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_dtdHandler:Lorg/xml/sax/DTDHandler;

.field m_dtm:Lorg/apache/xml/dtm/DTM;

.field private m_entityResolver:Lorg/xml/sax/EntityResolver;

.field private m_errorHandler:Lorg/xml/sax/ErrorHandler;

.field private final m_incremental:Z

.field private m_insideParse:Z

.field private m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_locator:Lorg/xml/sax/Locator;

.field private final m_optimizer:Z

.field private m_result:Ljavax/xml/transform/Result;

.field private final m_source_location:Z

.field private m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1043
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;ZLjava/lang/String;)V
    .registers 11
    .parameter "transformer"
    .parameter "doFragment"
    .parameter "baseSystemID"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    .line 1055
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    .line 1058
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    .line 1061
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    .line 1064
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 1067
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 1070
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 1073
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 1076
    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 94
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 95
    iput-object p3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .local v0, xctxt:Lorg/apache/xpath/XPathContext;
    move-object v3, p1

    move v4, v2

    move v5, v2

    .line 98
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xpath/XPathContext;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v6

    .line 100
    .local v6, dtm:Lorg/apache/xml/dtm/DTM;
    iput-object v6, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 101
    invoke-interface {v6, p3}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    .line 103
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 104
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 105
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    .line 106
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 107
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTM;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 108
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getIncremental()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    .line 109
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getOptimize()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_optimizer:Z

    .line 110
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSource_location()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_source_location:Z

    .line 111
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
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
    .line 972
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 973
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#attributeDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", etc..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 976
    :cond_2c
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_3a

    .line 978
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    :cond_3a
    return-void
.end method

.method public characters([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 541
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 542
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 545
    :cond_26
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2f

    .line 547
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 549
    :cond_2f
    return-void
.end method

.method protected clearCoRoutine()V
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->clearCoRoutine(Lorg/xml/sax/SAXException;)V

    .line 119
    return-void
.end method

.method protected clearCoRoutine(Lorg/xml/sax/SAXException;)V
    .registers 7
    .parameter "ex"

    .prologue
    .line 126
    if-eqz p1, :cond_7

    .line 127
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v3, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->setExceptionThrown(Ljava/lang/Exception;)V

    .line 129
    :cond_7
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    instance-of v3, v3, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    if-eqz v3, :cond_4c

    .line 131
    sget-boolean v3, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v3, :cond_18

    .line 132
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "In clearCoRoutine..."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    :cond_18
    :try_start_18
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;

    .line 136
    .local v0, sax2dtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v3, v3, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    if-eqz v3, :cond_2e

    .line 139
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    check-cast v1, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;

    .line 142
    .local v1, sp:Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;->deliverMoreNodes(Z)Ljava/lang/Object;

    .line 145
    .end local v1           #sp:Lorg/apache/xml/dtm/ref/IncrementalSAXSource_Filter;
    :cond_2e
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;->clearCoRoutine(Z)V

    .line 146
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    .line 147
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 148
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    .line 149
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 150
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_41} :catch_4d

    .line 157
    .end local v0           #sax2dtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2DTM;
    :goto_41
    sget-boolean v3, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v3, :cond_4c

    .line 158
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "...exiting clearCoRoutine"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    :cond_4c
    return-void

    .line 152
    :catch_4d
    move-exception v3

    move-object v2, v3

    .line 154
    .local v2, throwable:Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41
.end method

.method public comment([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 908
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 909
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 912
    :cond_26
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_2f

    .line 914
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 916
    :cond_2f
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 938
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 939
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#elementDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 942
    :cond_26
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_2f

    .line 944
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_2f
    return-void
.end method

.method public endCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 884
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 885
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 887
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_14

    .line 889
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 891
    :cond_14
    return-void
.end method

.method public endDTD()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 791
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 792
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endDTD"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 794
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_14

    .line 796
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 798
    :cond_14
    return-void
.end method

.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 391
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 392
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#endDocument"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    .line 396
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_17

    .line 398
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 401
    :cond_17
    iget-boolean v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    if-eqz v0, :cond_21

    .line 403
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->waitTransformThread()V

    .line 432
    :goto_20
    return-void

    .line 407
    :cond_21
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v1}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    .line 408
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v0}, Lorg/apache/xalan/transformer/TransformerImpl;->run()V

    goto :goto_20
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 519
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 520
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 522
    :cond_1c
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_25

    .line 524
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_25
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 844
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 845
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 847
    :cond_1c
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_25

    .line 849
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    .line 851
    :cond_25
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 468
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 469
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#endPrefixMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    :cond_1c
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_25

    .line 474
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 476
    :cond_25
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 5
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 672
    .local v0, errorListener:Ljavax/xml/transform/ErrorListener;
    instance-of v2, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_19

    .line 674
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    .end local v0           #errorListener:Ljavax/xml/transform/ErrorListener;
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 675
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_18

    .line 676
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 691
    :cond_18
    :goto_18
    return-void

    .line 682
    .restart local v0       #errorListener:Ljavax/xml/transform/ErrorListener;
    :cond_19
    :try_start_19
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    .line 683
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_18

    .line 684
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_2a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_19 .. :try_end_2a} :catch_2b

    goto :goto_18

    .line 686
    :catch_2b
    move-exception v2

    move-object v1, v2

    .line 688
    .local v1, te:Ljavax/xml/transform/TransformerException;
    throw p1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1028
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 1029
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#externalEntityDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1032
    :cond_30
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_39

    .line 1034
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_39
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 5
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 703
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_9

    .line 707
    :try_start_4
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_9
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_9} :catch_37

    .line 720
    :cond_9
    :goto_9
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 722
    .local v0, errorListener:Ljavax/xml/transform/ErrorListener;
    instance-of v2, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_22

    .line 724
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    .end local v0           #errorListener:Ljavax/xml/transform/ErrorListener;
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 725
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_21

    .line 726
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 741
    :cond_21
    :goto_21
    return-void

    .line 732
    .restart local v0       #errorListener:Ljavax/xml/transform/ErrorListener;
    :cond_22
    :try_start_22
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 733
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_21

    .line 734
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v2, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_33
    .catch Ljavax/xml/transform/TransformerException; {:try_start_22 .. :try_end_33} :catch_34

    goto :goto_21

    .line 736
    :catch_34
    move-exception v2

    move-object v1, v2

    .line 738
    .local v1, te:Ljavax/xml/transform/TransformerException;
    throw p1

    .line 709
    .end local v0           #errorListener:Ljavax/xml/transform/ErrorListener;
    .end local v1           #te:Ljavax/xml/transform/TransformerException;
    :catch_37
    move-exception v2

    goto :goto_9
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 7
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 565
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 566
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#ignorableWhitespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 569
    :cond_26
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2f

    .line 571
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 573
    :cond_2f
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 999
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 1000
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#internalEntityDecl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1003
    :cond_26
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_2f

    .line 1005
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_declHandler:Lorg/xml/sax/ext/DeclHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_2f
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_9
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 588
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 589
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#processingInstruction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 592
    :cond_26
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2f

    .line 594
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_2f
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .registers 4
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_b

    .line 254
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v0

    .line 258
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 5
    .parameter "locator"

    .prologue
    .line 321
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 322
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#setDocumentLocator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 325
    :cond_20
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_locator:Lorg/xml/sax/Locator;

    .line 327
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 329
    invoke-interface {p1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->setSystemId(Ljava/lang/String;)V

    .line 332
    :cond_2d
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_36

    .line 334
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 336
    :cond_36
    return-void
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .registers 7
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 177
    if-nez p1, :cond_f

    .line 178
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_RESULT_NULL"

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_f
    :try_start_f
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2, p1}, Lorg/apache/xalan/transformer/TransformerImpl;->createSerializationHandler(Ljavax/xml/transform/Result;)Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v1

    .line 187
    .local v1, xoh:Lorg/apache/xml/serializer/SerializationHandler;
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->setSerializationHandler(Lorg/apache/xml/serializer/SerializationHandler;)V
    :try_end_1a
    .catch Ljavax/xml/transform/TransformerException; {:try_start_f .. :try_end_1a} :catch_1d

    .line 194
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_result:Ljavax/xml/transform/Result;

    .line 195
    return-void

    .line 189
    .end local v1           #xoh:Lorg/apache/xml/serializer/SerializationHandler;
    :catch_1d
    move-exception v2

    move-object v0, v2

    .line 191
    .local v0, te:Ljavax/xml/transform/TransformerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ER_RESULT_COULD_NOT_BE_SET"

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setSystemId(Ljava/lang/String;)V
    .registers 3
    .parameter "systemID"

    .prologue
    .line 204
    iput-object p1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_baseSystemID:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->setDocumentBaseURI(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 609
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 610
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#skippedEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 612
    :cond_1c
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_25

    .line 614
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 616
    :cond_25
    return-void
.end method

.method public startCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 866
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 867
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TransformerHandlerImpl#startCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_14

    .line 871
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 873
    :cond_14
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 772
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 773
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startDTD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 776
    :cond_30
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_39

    .line 778
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_39
    return-void
.end method

.method public startDocument()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 348
    sget-boolean v1, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 349
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "TransformerHandlerImpl#startDocument"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 351
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_insideParse:Z

    .line 355
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v1, :cond_33

    .line 358
    iget-boolean v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_incremental:Z

    if-eqz v1, :cond_2e

    .line 360
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtm:Lorg/apache/xml/dtm/DTM;

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->setSourceTreeDocForThread(I)V

    .line 362
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    .line 366
    .local v0, cpriority:I
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->runTransformThread(I)V

    .line 373
    .end local v0           #cpriority:I
    :cond_2e
    iget-object v1, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 379
    :cond_33
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 495
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 496
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    :cond_1c
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_25

    .line 500
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 502
    :cond_25
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 825
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 826
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startEntity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 828
    :cond_1c
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_25

    .line 830
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 832
    :cond_25
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 447
    sget-boolean v0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 448
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransformerHandlerImpl#startPrefixMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    :cond_26
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_2f

    .line 453
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_2f
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "notationName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_9

    .line 304
    iget-object v0, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_dtdHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_9
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 5
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 636
    iget-object v2, p0, Lorg/apache/xalan/transformer/TransformerHandlerImpl;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 637
    .local v0, errorListener:Ljavax/xml/transform/ErrorListener;
    instance-of v2, v0, Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_10

    .line 639
    check-cast v0, Lorg/xml/sax/ErrorHandler;

    .end local v0           #errorListener:Ljavax/xml/transform/ErrorListener;
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    .line 652
    :goto_f
    return-void

    .line 645
    .restart local v0       #errorListener:Ljavax/xml/transform/ErrorListener;
    :cond_10
    :try_start_10
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_18} :catch_19

    goto :goto_f

    .line 647
    :catch_19
    move-exception v2

    move-object v1, v2

    .line 649
    .local v1, te:Ljavax/xml/transform/TransformerException;
    throw p1
.end method
