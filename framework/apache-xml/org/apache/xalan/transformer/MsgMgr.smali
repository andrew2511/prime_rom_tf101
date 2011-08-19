.class public Lorg/apache/xalan/transformer/MsgMgr;
.super Ljava/lang/Object;
.source "MsgMgr.java"


# instance fields
.field private m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 2
    .parameter "transformer"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    .line 46
    return-void
.end method


# virtual methods
.method public error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V
    .registers 9
    .parameter "srcLctr"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "srcLctr"
    .parameter "msg"
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 232
    return-void
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .parameter "srcLctr"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 8
    .parameter "srcLctr"
    .parameter "msg"
    .parameter "args"
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, formattedMsg:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 259
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_15

    .line 260
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 263
    return-void

    .line 262
    :cond_15
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v2
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 11
    .parameter "srcLctr"
    .parameter "styleNode"
    .parameter "sourceNode"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 281
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public error(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .parameter "srcLctr"
    .parameter "styleNode"
    .parameter "sourceNode"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-static {p4, p5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, formattedMsg:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 310
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_15

    .line 311
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 314
    return-void

    .line 313
    :cond_15
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v2
.end method

.method public message(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;Z)V
    .registers 6
    .parameter "srcLctr"
    .parameter "msg"
    .parameter "terminate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 67
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_11

    .line 69
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 78
    :goto_10
    return-void

    .line 73
    :cond_11
    if-eqz p3, :cond_19

    .line 74
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    throw v1

    .line 76
    :cond_19
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_10
.end method

.method public warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V
    .registers 9
    .parameter "srcLctr"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .parameter "srcLctr"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 108
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .registers 11
    .parameter "srcLctr"
    .parameter "styleNode"
    .parameter "sourceNode"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public warn(Ljavax/xml/transform/SourceLocator;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .parameter "srcLctr"
    .parameter "styleNode"
    .parameter "sourceNode"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {p4, p5}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, formattedMsg:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xalan/transformer/MsgMgr;->m_transformer:Lorg/apache/xalan/transformer/TransformerImpl;

    invoke-virtual {v2}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 150
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_15

    .line 151
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 154
    :goto_14
    return-void

    .line 153
    :cond_15
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14
.end method
