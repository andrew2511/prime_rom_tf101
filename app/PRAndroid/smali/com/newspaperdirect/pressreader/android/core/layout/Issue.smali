.class public Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
.super Ljava/lang/Object;
.source "Issue.java"


# static fields
.field private static final LAYOUT_XML_FILE_NAME:Ljava/lang/String; = "layout.xml"


# instance fields
.field private mArticles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Article;",
            ">;"
        }
    .end annotation
.end field

.field private mDate:Ljava/util/Date;

.field private mId:Ljava/lang/String;

.field private mLanguageCode:Ljava/lang/String;

.field private mMyLibraryItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

.field private mPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mArticles:Ljava/util/HashMap;

    .line 75
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mMyLibraryItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 76
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mTitle:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mLanguageCode:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mDate:Ljava/util/Date;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mVersion:I

    .line 81
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mLanguageCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mDate:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mVersion:I

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mPages:Ljava/util/List;

    return-void
.end method

.method public static getPagesLoaderFromLicenseXml(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;Landroid/sax/Element;)Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;
    .locals 2
    .parameter "item"
    .parameter "uri"
    .parameter "pages"

    .prologue
    .line 103
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 104
    .local v0, issue:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    invoke-direct {v1, v0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/lang/String;Landroid/sax/Element;)V

    return-object v1
.end method

.method public static load(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    .locals 2
    .parameter "item"

    .prologue
    .line 92
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 93
    .local v0, result:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkLayoutFileConsistency()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->loadFromFile()V

    .line 95
    iget-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mPages:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 99
    :goto_0
    return-object v1

    .line 97
    :cond_0
    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->LoadFromDb(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mPages:Ljava/util/List;

    .line 98
    iget-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mPages:Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadFromFile()V
    .locals 9

    .prologue
    .line 108
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "dd/MM/yyyy"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, format:Ljava/text/SimpleDateFormat;
    new-instance v5, Landroid/sax/RootElement;

    const-string v7, "issue"

    invoke-direct {v5, v7}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 110
    .local v5, root:Landroid/sax/RootElement;
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;

    const-string v7, "page"

    invoke-virtual {v5, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Landroid/sax/Element;)V

    .line 111
    .local v4, loader:Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;
    new-instance v7, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;

    invoke-direct {v7, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Ljava/text/SimpleDateFormat;)V

    invoke-virtual {v5, v7}, Landroid/sax/RootElement;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 122
    new-instance v7, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$2;

    invoke-direct {v7, p0, v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/layout/Issue;Lcom/newspaperdirect/pressreader/android/core/layout/Page$Loader;)V

    invoke-virtual {v5, v7}, Landroid/sax/RootElement;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, file:Ljava/util/zip/ZipFile;
    const/4 v6, 0x0

    .line 131
    .local v6, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mMyLibraryItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayoutFile()Ljava/io/File;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #file:Ljava/util/zip/ZipFile;
    .local v2, file:Ljava/util/zip/ZipFile;
    :try_start_1
    const-string v7, "layout.xml"

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 133
    sget-object v7, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v5}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 140
    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 141
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    :goto_1
    move-object v1, v2

    .line 143
    .end local v2           #file:Ljava/util/zip/ZipFile;
    .restart local v1       #file:Ljava/util/zip/ZipFile;
    :cond_2
    :goto_2
    return-void

    .line 135
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 136
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 141
    :cond_3
    :goto_4
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_2

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 140
    :goto_5
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 141
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 142
    :cond_5
    :goto_7
    throw v7

    .line 140
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_6

    .line 141
    :catch_4
    move-exception v8

    goto :goto_7

    .line 140
    .end local v1           #file:Ljava/util/zip/ZipFile;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    :catch_5
    move-exception v7

    goto :goto_0

    .line 141
    :catch_6
    move-exception v7

    goto :goto_1

    .line 139
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #file:Ljava/util/zip/ZipFile;
    .restart local v1       #file:Ljava/util/zip/ZipFile;
    goto :goto_5

    .line 135
    .end local v1           #file:Ljava/util/zip/ZipFile;
    .restart local v2       #file:Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v7

    move-object v0, v7

    move-object v1, v2

    .end local v2           #file:Ljava/util/zip/ZipFile;
    .restart local v1       #file:Ljava/util/zip/ZipFile;
    goto :goto_3
.end method


# virtual methods
.method public addArticle(Lcom/newspaperdirect/pressreader/android/core/layout/Article;)V
    .locals 2
    .parameter "article"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mArticles:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Article;->getArticleUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public getArticle(Ljava/util/UUID;)Lcom/newspaperdirect/pressreader/android/core/layout/Article;
    .locals 1
    .parameter "uid"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mArticles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/layout/Article;

    return-object p0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mMyLibraryItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayoutFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getMyLibraryItem()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mMyLibraryItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    return-object v0
.end method

.method public getPage(I)Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .locals 2
    .parameter "pageNumber"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    if-gtz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 63
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mPages:Ljava/util/List;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-object v0, p0

    goto :goto_0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mPages:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->mVersion:I

    return v0
.end method
