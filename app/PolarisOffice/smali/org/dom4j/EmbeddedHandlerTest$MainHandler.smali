.class Lorg/dom4j/EmbeddedHandlerTest$MainHandler;
.super Ljava/lang/Object;
.source "EmbeddedHandlerTest.java"

# interfaces
.implements Lorg/dom4j/ElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/dom4j/EmbeddedHandlerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field private mainDir:Ljava/lang/String;

.field private mainReader:Lorg/dom4j/io/SAXReader;

.field final this$0:Lorg/dom4j/EmbeddedHandlerTest;


# direct methods
.method public constructor <init>(Lorg/dom4j/EmbeddedHandlerTest;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "dir"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->this$0:Lorg/dom4j/EmbeddedHandlerTest;

    .line 87
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    iput-object v0, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->mainReader:Lorg/dom4j/io/SAXReader;

    .line 88
    iput-object p2, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->mainDir:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->mainReader:Lorg/dom4j/io/SAXReader;

    const-string v1, "/import/stuff"

    new-instance v2, Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;

    invoke-direct {v2, p1}, Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;-><init>(Lorg/dom4j/EmbeddedHandlerTest;)V

    invoke-virtual {v0, v1, v2}, Lorg/dom4j/io/SAXReader;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onEnd(Lorg/dom4j/ElementPath;)V
    .locals 10
    .parameter "path"

    .prologue
    .line 96
    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v7

    const-string v8, "href"

    invoke-interface {v7, v8}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, href:Ljava/lang/String;
    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v4

    .line 98
    .local v4, importRef:Lorg/dom4j/Element;
    invoke-interface {v4}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v6

    .line 99
    .local v6, parentElement:Lorg/dom4j/Element;
    new-instance v5, Lorg/dom4j/io/SAXReader;

    invoke-direct {v5}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 100
    .local v5, onEndReader:Lorg/dom4j/io/SAXReader;
    const-string v7, "/import/stuff"

    new-instance v8, Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;

    iget-object v9, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->this$0:Lorg/dom4j/EmbeddedHandlerTest;

    invoke-direct {v8, v9}, Lorg/dom4j/EmbeddedHandlerTest$EmbeddedHandler;-><init>(Lorg/dom4j/EmbeddedHandlerTest;)V

    invoke-virtual {v5, v7, v8}, Lorg/dom4j/io/SAXReader;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 102
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuffer;

    iget-object v8, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->mainDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 106
    .local v3, importElement:Lorg/dom4j/Element;
    :try_start_0
    iget-object v7, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->this$0:Lorg/dom4j/EmbeddedHandlerTest;

    iget v7, v7, Lorg/dom4j/EmbeddedHandlerTest;->test:I

    if-nez v7, :cond_1

    .line 107
    iget-object v7, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->mainReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {v7, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 118
    :cond_0
    :goto_0
    invoke-interface {v4}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 119
    invoke-interface {v6, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 120
    return-void

    .line 108
    :cond_1
    :try_start_1
    iget-object v7, p0, Lorg/dom4j/EmbeddedHandlerTest$MainHandler;->this$0:Lorg/dom4j/EmbeddedHandlerTest;

    iget v7, v7, Lorg/dom4j/EmbeddedHandlerTest;->test:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 109
    invoke-virtual {v5, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v7

    invoke-interface {v7}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 111
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 114
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStart(Lorg/dom4j/ElementPath;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 93
    return-void
.end method
