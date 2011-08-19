.class public final Lcom/google/android/youtube/core/converter/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/converter/XmlParser$1;,
        Lcom/google/android/youtube/core/converter/XmlParser$EmptyAttributes;,
        Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;,
        Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;,
        Lcom/google/android/youtube/core/converter/XmlParser$Rule;
    }
.end annotation


# static fields
.field private static final EMPTY_ATTRS:Lorg/xml/sax/Attributes;

.field private static final PREFIXES_ONLY_FEATURES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final factory:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v1, Lcom/google/android/youtube/core/converter/XmlParser$EmptyAttributes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/youtube/core/converter/XmlParser$EmptyAttributes;-><init>(Lcom/google/android/youtube/core/converter/XmlParser$1;)V

    sput-object v1, Lcom/google/android/youtube/core/converter/XmlParser;->EMPTY_ATTRS:Lorg/xml/sax/Attributes;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "http://xml.org/sax/features/namespaces"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/core/converter/XmlParser;->PREFIXES_ONLY_FEATURES:Ljava/util/Map;

    .line 107
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, features:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v6, "SAX initilization error"

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const-string v3, "features can\'t be null"

    invoke-static {p1, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/core/converter/XmlParser;->factory:Ljavax/xml/parsers/SAXParserFactory;

    .line 137
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v5, p0, Lcom/google/android/youtube/core/converter/XmlParser;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v3, v4}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 140
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 142
    .local v0, e:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "SAX initilization error"

    invoke-direct {v3, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 143
    .end local v0           #e:Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 144
    .local v0, e:Lorg/xml/sax/SAXNotSupportedException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "SAX initilization error"

    invoke-direct {v3, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 145
    .end local v0           #e:Lorg/xml/sax/SAXNotSupportedException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 146
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "SAX initilization error"

    invoke-direct {v3, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 148
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method static synthetic access$100()Lorg/xml/sax/Attributes;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/youtube/core/converter/XmlParser;->EMPTY_ATTRS:Lorg/xml/sax/Attributes;

    return-object v0
.end method

.method public static create()Lcom/google/android/youtube/core/converter/XmlParser;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/XmlParser;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/android/youtube/core/converter/XmlParser;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/google/android/youtube/core/converter/XmlParser;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, features:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/converter/XmlParser;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createPrefixesOnlyParser()Lcom/google/android/youtube/core/converter/XmlParser;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/youtube/core/converter/XmlParser;

    sget-object v1, Lcom/google/android/youtube/core/converter/XmlParser;->PREFIXES_ONLY_FEATURES:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/XmlParser;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/Rules;)Ljava/lang/Object;
    .locals 5
    .parameter "input"
    .parameter "rules"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ParserException;
        }
    .end annotation

    .prologue
    .line 162
    const-string v3, "input can\'t be null"

    invoke-static {p1, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v3, "rules can\'t be null"

    invoke-static {p2, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/google/android/youtube/core/converter/XmlParser;->factory:Ljavax/xml/parsers/SAXParserFactory;

    monitor-enter v3
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    :try_start_1
    iget-object v4, p0, Lcom/google/android/youtube/core/converter/XmlParser;->factory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 168
    .local v2, reader:Lorg/xml/sax/XMLReader;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    :try_start_2
    new-instance v1, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;

    invoke-direct {v1, p2}, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;-><init>(Lcom/google/android/youtube/core/converter/Rules;)V

    .line 170
    .local v1, handler:Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 171
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 172
    iget-object v3, v1, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->result:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 174
    new-instance v3, Lcom/google/android/youtube/core/converter/ParserException;

    const-string v4, "XML is well-formed but invalid"

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 177
    .end local v1           #handler:Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;
    .end local v2           #reader:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 178
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lcom/google/android/youtube/core/converter/ParserException;

    invoke-direct {v3, v0}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 168
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2

    .line 179
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 180
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Lcom/google/android/youtube/core/converter/ParserException;

    invoke-direct {v3, v0}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 176
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #handler:Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;
    .restart local v2       #reader:Lorg/xml/sax/XMLReader;
    :cond_0
    :try_start_5
    iget-object v3, v1, Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;->result:Ljava/lang/Object;
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v3

    .line 181
    .end local v1           #handler:Lcom/google/android/youtube/core/converter/XmlParser$InternalHandler;
    .end local v2           #reader:Lorg/xml/sax/XMLReader;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 182
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v3, Lcom/google/android/youtube/core/converter/ParserException;

    invoke-direct {v3, v0}, Lcom/google/android/youtube/core/converter/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
