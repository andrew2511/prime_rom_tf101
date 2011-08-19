.class public Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;
.super Ljava/lang/Object;
.source "CLibraryCachedBookBuilderTopaz.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;


# instance fields
.field private annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

.field private deviceInfo:Lcom/amazon/system/security/Security;

.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

.field private inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

.field private localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field private final memorySize:J

.field private saxFactory:Lcom/amazon/system/xml/SAXParserFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/kcp/application/ILocalStorage;J)V
    .locals 1
    .parameter "fileSystem"
    .parameter "annotationCache"
    .parameter "deviceInfo"
    .parameter "inflaterFactory"
    .parameter "imageFactory"
    .parameter "saxFactory"
    .parameter "localStorage"
    .parameter "memorySize"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    .line 79
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 80
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->deviceInfo:Lcom/amazon/system/security/Security;

    .line 81
    iput-object p4, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    .line 82
    iput-object p5, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    .line 83
    iput-object p6, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->saxFactory:Lcom/amazon/system/xml/SAXParserFactory;

    .line 84
    iput-object p7, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 85
    iput-wide p8, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->memorySize:J

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    invoke-static {v0}, Lcom/amazon/topaz/Viewer;->setImageFactory(Lcom/amazon/system/drawing/ImageFactoryExtended;)V

    .line 87
    return-void
.end method


# virtual methods
.method public buildBooks(Ljava/util/Vector;Ljava/util/Vector;)I
    .locals 5
    .parameter "fileNamePaths"
    .parameter "builtBookList"

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    .local v1, count:I
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, index:I
    :goto_0
    if-ltz v2, :cond_1

    .line 119
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->buildCachedBook(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-result-object v0

    .line 120
    .local v0, book:Lcom/amazon/kcp/library/models/ILocalBookItem;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 123
    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 117
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 128
    .end local v0           #book:Lcom/amazon/kcp/library/models/ILocalBookItem;
    :cond_1
    return v1
.end method

.method public buildCachedBook(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 96
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->annotationCache:Lcom/amazon/kcp/application/IAnnotationCache;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->deviceInfo:Lcom/amazon/system/security/Security;

    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    iget-object v6, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    iget-object v7, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->saxFactory:Lcom/amazon/system/xml/SAXParserFactory;

    iget-object v8, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    iget-wide v9, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderTopaz;->memorySize:J

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kcp/library/models/internal/CBookItemTopaz;-><init>(Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/kcp/application/ILocalStorage;J)V
    :try_end_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Lcom/amazon/topaz/exception/TopazException;->getMessage()Ljava/lang/String;

    move-object v0, v11

    .line 101
    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-object v0, v11

    .line 106
    goto :goto_0
.end method
