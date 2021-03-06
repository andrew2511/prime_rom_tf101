.class public Lcom/asus/cm/util/DMTreeParser2;
.super Ljava/lang/Object;
.source "DMTreeParser2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;
    }
.end annotation


# instance fields
.field private mChildURIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentFootprintUri:Ljava/lang/String;

.field private mDestUriTokens:[Ljava/lang/String;

.field private mParseHandler:Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSAXParser:Ljavax/xml/parsers/SAXParser;

.field private mSAXParserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private mXMLReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "pContext"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    iput-object p1, p0, Lcom/asus/cm/util/DMTreeParser2;->mContext:Landroid/content/Context;

    .line 39
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mChildURIs:Ljava/util/ArrayList;

    .line 42
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mSAXParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 43
    iget-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mSAXParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mSAXParser:Ljavax/xml/parsers/SAXParser;

    .line 44
    new-instance v1, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;

    invoke-direct {v1, p0}, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;-><init>(Lcom/asus/cm/util/DMTreeParser2;)V

    iput-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mParseHandler:Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;

    .line 45
    iget-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mSAXParser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mXMLReader:Lorg/xml/sax/XMLReader;

    .line 46
    iget-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mXMLReader:Lorg/xml/sax/XMLReader;

    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2;->mParseHandler:Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 48
    .local v0, ex:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0           #ex:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 50
    .local v0, ex:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/asus/cm/util/DMTreeParser2;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/cm/util/DMTreeParser2;->mCurrentFootprintUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/asus/cm/util/DMTreeParser2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/asus/cm/util/DMTreeParser2;->mCurrentFootprintUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$084(Lcom/asus/cm/util/DMTreeParser2;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/cm/util/DMTreeParser2;->mCurrentFootprintUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/util/DMTreeParser2;->mCurrentFootprintUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/cm/util/DMTreeParser2;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/asus/cm/util/DMTreeParser2;->mChildURIs:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getAllChildURIs(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "pUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v6, 0x0

    :try_start_0
    iput-object v6, p0, Lcom/asus/cm/util/DMTreeParser2;->mCurrentFootprintUri:Ljava/lang/String;

    .line 57
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/cm/util/DMTreeParser2;->mDestUriTokens:[Ljava/lang/String;

    .line 58
    iget-object v6, p0, Lcom/asus/cm/util/DMTreeParser2;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 60
    iget-object v0, p0, Lcom/asus/cm/util/DMTreeParser2;->mDestUriTokens:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 61
    .local v5, token:Ljava/lang/String;
    iget-object v6, p0, Lcom/asus/cm/util/DMTreeParser2;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mQueue content: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v5           #token:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/asus/cm/util/DMTreeParser2;->mContext:Landroid/content/Context;

    const-string v7, "tree.xml"

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 66
    .local v3, in:Ljava/io/InputStream;
    iget-object v6, p0, Lcom/asus/cm/util/DMTreeParser2;->mXMLReader:Lorg/xml/sax/XMLReader;

    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #len$:I
    :goto_1
    iget-object v6, p0, Lcom/asus/cm/util/DMTreeParser2;->mChildURIs:Ljava/util/ArrayList;

    return-object v6

    .line 67
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 68
    .local v1, ex:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 70
    .local v1, ex:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1
.end method
