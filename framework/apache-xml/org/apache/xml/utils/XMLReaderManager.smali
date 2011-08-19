.class public Lorg/apache/xml/utils/XMLReaderManager;
.super Ljava/lang/Object;
.source "XMLReaderManager.java"


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private static final m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;


# instance fields
.field private m_inUse:Ljava/util/Hashtable;

.field private m_readers:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lorg/apache/xml/utils/XMLReaderManager;

    invoke-direct {v0}, Lorg/apache/xml/utils/XMLReaderManager;-><init>()V

    sput-object v0, Lorg/apache/xml/utils/XMLReaderManager;->m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public static getInstance()Lorg/apache/xml/utils/XMLReaderManager;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lorg/apache/xml/utils/XMLReaderManager;->m_singletonManager:Lorg/apache/xml/utils/XMLReaderManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 84
    monitor-enter p0

    :try_start_3
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    if-nez v6, :cond_e

    .line 87
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    .line 90
    :cond_e
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    if-nez v6, :cond_19

    .line 91
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    .line 96
    :cond_19
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xml/sax/XMLReader;

    .line 97
    .local v4, reader:Lorg/xml/sax/XMLReader;
    if-eqz v4, :cond_50

    move v5, v7

    .line 98
    .local v5, threadHasReader:Z
    :goto_24
    if-eqz v5, :cond_30

    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_79

    if-ne v6, v7, :cond_88

    .line 105
    :cond_30
    :try_start_30
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_52
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_30 .. :try_end_33} :catch_71
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_30 .. :try_end_33} :catch_7c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_30 .. :try_end_33} :catch_92
    .catch Ljava/lang/AbstractMethodError; {:try_start_30 .. :try_end_33} :catch_90

    move-result-object v4

    .line 121
    :goto_34
    :try_start_34
    const-string v6, "http://xml.org/sax/features/namespaces"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 122
    const-string v6, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_79
    .catch Lorg/xml/sax/SAXException; {:try_start_34 .. :try_end_40} :catch_94
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_34 .. :try_end_40} :catch_71
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_34 .. :try_end_40} :catch_7c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_34 .. :try_end_40} :catch_92
    .catch Ljava/lang/AbstractMethodError; {:try_start_34 .. :try_end_40} :catch_90

    .line 137
    :goto_40
    if-nez v5, :cond_4e

    .line 138
    :try_start_42
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_79

    .line 145
    :cond_4e
    :goto_4e
    monitor-exit p0

    return-object v4

    .end local v5           #threadHasReader:Z
    :cond_50
    move v5, v8

    .line 97
    goto :goto_24

    .line 106
    .restart local v5       #threadHasReader:Z
    :catch_52
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    :try_start_53
    sget-object v6, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v6, :cond_63

    .line 111
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    sput-object v6, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 112
    sget-object v6, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 115
    :cond_63
    sget-object v6, Lorg/apache/xml/utils/XMLReaderManager;->m_parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_6c
    .catchall {:try_start_53 .. :try_end_6c} :catchall_79
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_53 .. :try_end_6c} :catch_6e
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_53 .. :try_end_6c} :catch_7c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_53 .. :try_end_6c} :catch_92
    .catch Ljava/lang/AbstractMethodError; {:try_start_53 .. :try_end_6c} :catch_90

    move-result-object v4

    goto :goto_34

    .line 116
    :catch_6e
    move-exception v6

    move-object v3, v6

    .line 117
    .local v3, pce:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_70
    throw v3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_79
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_70 .. :try_end_71} :catch_71
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_70 .. :try_end_71} :catch_7c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_70 .. :try_end_71} :catch_92
    .catch Ljava/lang/AbstractMethodError; {:try_start_70 .. :try_end_71} :catch_90

    .line 127
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #pce:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_71
    move-exception v6

    move-object v1, v6

    .line 128
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_73
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-direct {v6, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_79

    .line 84
    .end local v1           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    .end local v4           #reader:Lorg/xml/sax/XMLReader;
    .end local v5           #threadHasReader:Z
    :catchall_79
    move-exception v6

    monitor-exit p0

    throw v6

    .line 129
    .restart local v4       #reader:Lorg/xml/sax/XMLReader;
    .restart local v5       #threadHasReader:Z
    :catch_7c
    move-exception v6

    move-object v2, v6

    .line 130
    .local v2, ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :try_start_7e
    new-instance v6, Lorg/xml/sax/SAXException;

    invoke-virtual {v2}, Ljavax/xml/parsers/FactoryConfigurationError;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    .end local v2           #ex1:Ljavax/xml/parsers/FactoryConfigurationError;
    :cond_88
    iget-object v6, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_79

    goto :goto_4e

    .line 132
    :catch_90
    move-exception v6

    goto :goto_40

    .line 131
    :catch_92
    move-exception v6

    goto :goto_40

    .line 123
    :catch_94
    move-exception v6

    goto :goto_40
.end method

.method public declared-synchronized releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 3
    .parameter "reader"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_readers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_10

    if-eqz p1, :cond_10

    .line 158
    iget-object v0, p0, Lorg/apache/xml/utils/XMLReaderManager;->m_inUse:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 160
    :cond_10
    monitor-exit p0

    return-void

    .line 157
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
