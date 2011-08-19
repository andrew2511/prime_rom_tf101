.class public Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;
.super Ljava/lang/Object;
.source "CLibraryCachedBookBuilderMobi.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;


# instance fields
.field private annotations:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

.field private applicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

.field private bookManager:Lcom/mobipocket/common/library/reader/BookManager;

.field private fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private fontFactory:Lcom/amazon/system/drawing/FontFactory;

.field private imageFactory:Lcom/amazon/system/drawing/ImageFactory;

.field private localStorage:Lcom/amazon/kcp/application/ILocalStorage;

.field private security:Lcom/amazon/system/security/Security;

.field private utilities:Lcom/amazon/system/util/Utilities;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/util/Utilities;)V
    .locals 2
    .parameter "annotations"
    .parameter "fileSystem"
    .parameter "fontFactory"
    .parameter "imageFactory"
    .parameter "security"
    .parameter "localStorage"
    .parameter "applicationsCommands"
    .parameter "utilities"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    .line 31
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 32
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    .line 33
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 34
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->annotations:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    .line 35
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->security:Lcom/amazon/system/security/Security;

    .line 36
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 37
    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->applicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    .line 54
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 55
    iput-object p4, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->annotations:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    .line 57
    new-instance v0, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-direct {v0, p2}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    .line 58
    new-instance v0, Lcom/mobipocket/common/library/reader/BookManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/BookManager;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    .line 59
    iput-object p5, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->security:Lcom/amazon/system/security/Security;

    .line 60
    iput-object p6, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    .line 61
    iput-object p7, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->applicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    .line 62
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fontFactory:Lcom/amazon/system/drawing/FontFactory;

    .line 63
    iput-object p8, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->utilities:Lcom/amazon/system/util/Utilities;

    .line 64
    return-void
.end method

.method private removePathFromListOfPaths(Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v2

    .line 156
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 147
    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 149
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 156
    goto :goto_0
.end method


# virtual methods
.method public buildBooks(Ljava/util/Vector;Ljava/util/Vector;)I
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v3, 0x0

    .line 97
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v3

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookManager;->listFrom(Ljava/util/Vector;)[Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v14

    .line 103
    if-eqz v14, :cond_0

    .line 108
    const/4 v4, 0x0

    move v15, v4

    move/from16 v16, v3

    :goto_1
    array-length v3, v14

    if-ge v15, v3, :cond_3

    .line 110
    aget-object v3, v14, v15

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookItem;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 114
    :try_start_0
    new-instance v3, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;

    aget-object v4, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->annotations:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->security:Lcom/amazon/system/security/Security;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->applicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fontFactory:Lcom/amazon/system/drawing/FontFactory;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->utilities:Lcom/amazon/system/util/Utilities;

    move-object v13, v0

    invoke-direct/range {v3 .. v13}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;-><init>(Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/internal/FileConnectionPDBFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/util/Utilities;)V

    .line 119
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 120
    aget-object v3, v14, v15

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->removePathFromListOfPaths(Ljava/util/Vector;Ljava/lang/String;)Z

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file name path not found and not removed from list of paths: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v14, v15

    invoke-virtual {v4}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    add-int/lit8 v3, v16, 0x1

    .line 108
    :goto_2
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move/from16 v16, v3

    goto :goto_1

    .line 124
    :catch_0
    move-exception v3

    .line 126
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    :cond_2
    move/from16 v3, v16

    goto :goto_2

    :cond_3
    move/from16 v3, v16

    .line 131
    goto/16 :goto_0
.end method

.method public buildCachedBook(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 73
    :try_start_0
    new-instance v1, Lcom/mobipocket/common/library/reader/BookItem;

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-direct {v1, p1, v0}, Lcom/mobipocket/common/library/reader/BookItem;-><init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;)V

    .line 74
    new-instance v0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->annotations:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget-object v6, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->security:Lcom/amazon/system/security/Security;

    iget-object v7, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->localStorage:Lcom/amazon/kcp/application/ILocalStorage;

    iget-object v8, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->applicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    iget-object v9, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->fontFactory:Lcom/amazon/system/drawing/FontFactory;

    iget-object v10, p0, Lcom/amazon/kcp/library/models/internal/CLibraryCachedBookBuilderMobi;->utilities:Lcom/amazon/system/util/Utilities;

    invoke-direct/range {v0 .. v10}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;-><init>(Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/internal/FileConnectionPDBFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/util/Utilities;)V
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_0
    return-object v0

    .line 79
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/InvalidBookException;->getMessage()Ljava/lang/String;

    move-object v0, v11

    .line 82
    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-object v0, v11

    .line 87
    goto :goto_0
.end method
