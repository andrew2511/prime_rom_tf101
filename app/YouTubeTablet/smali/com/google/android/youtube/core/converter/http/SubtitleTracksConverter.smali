.class public Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;
.super Ljava/lang/Object;
.source "SubtitleTracksConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        ">;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/SubtitleTrack;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;->convertRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public convertRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter "videoId"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://video.google.com/timedtext?hl=en&v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&type=list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/apache/http/HttpResponse;)Ljava/util/List;
    .locals 15
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v10, tracks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/SubtitleTrack;>;"
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_1

    .line 71
    :cond_0
    return-object v10

    .line 51
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 52
    .local v1, content:Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 53
    .local v3, docBuild:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 55
    .local v2, doc:Lorg/w3c/dom/Document;
    const-string v11, "track"

    invoke-interface {v2, v11}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 56
    .local v6, items:Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 57
    invoke-interface {v6, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 58
    .local v0, attribs:Lorg/w3c/dom/NamedNodeMap;
    const-string v11, "lang_code"

    invoke-interface {v0, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, languageCode:Ljava/lang/String;
    const-string v11, "lang_original"

    invoke-interface {v0, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 60
    .local v8, languageName:Ljava/lang/String;
    const-string v11, "name"

    invoke-interface {v0, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, trackName:Ljava/lang/String;
    new-instance v11, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {v11, v7, v8, v9}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 56
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    .end local v0           #attribs:Lorg/w3c/dom/NamedNodeMap;
    .end local v1           #content:Ljava/io/InputStream;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #docBuild:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #i:I
    .end local v6           #items:Lorg/w3c/dom/NodeList;
    .end local v7           #languageCode:Ljava/lang/String;
    .end local v8           #languageName:Ljava/lang/String;
    .end local v9           #trackName:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 64
    .local v4, e:Ljava/io/IOException;
    new-instance v11, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v11, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 65
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 66
    .local v4, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v11, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v11, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 67
    .end local v4           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v11

    move-object v4, v11

    .line 68
    .local v4, e:Lorg/xml/sax/SAXException;
    new-instance v11, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v11, v4}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method
