.class public Lcom/splashtop/remote/xml/DomParser;
.super Lcom/splashtop/remote/xml/BaseXmlParser;
.source "DomParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IRISMain"


# instance fields
.field private project:Lcom/splashtop/remote/bean/Project;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "feedUrl"
    .parameter "defaultUrl"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/splashtop/remote/xml/BaseXmlParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public parse()Lcom/splashtop/remote/bean/Project;
    .locals 7

    .prologue
    .line 55
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 57
    .local v3, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 58
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Lcom/splashtop/remote/xml/DoneHandlerInputStream;

    invoke-virtual {p0}, Lcom/splashtop/remote/xml/DomParser;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/splashtop/remote/xml/DoneHandlerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v4, is:Lcom/splashtop/remote/xml/DoneHandlerInputStream;
    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 62
    .local v1, dom:Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 63
    .local v5, root:Lorg/w3c/dom/Element;
    new-instance v6, Lcom/splashtop/remote/bean/Project;

    invoke-direct {v6, v5}, Lcom/splashtop/remote/bean/Project;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v6, p0, Lcom/splashtop/remote/xml/DomParser;->project:Lcom/splashtop/remote/bean/Project;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 79
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dom:Lorg/w3c/dom/Document;
    .end local v4           #is:Lcom/splashtop/remote/xml/DoneHandlerInputStream;
    .end local v5           #root:Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/splashtop/remote/xml/DomParser;->project:Lcom/splashtop/remote/bean/Project;

    return-object v6

    .line 65
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 66
    .local v2, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v2           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 68
    .local v2, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v2           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 70
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 72
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_4
    move-exception v6

    move-object v2, v6

    .line 74
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_5
    move-exception v6

    move-object v2, v6

    .line 76
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
