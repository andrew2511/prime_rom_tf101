.class public Lcom/amazon/kcp/library/models/internal/CBookItemMobi;
.super Lcom/amazon/kcp/library/models/internal/CLocalBookItem;
.source "CBookItemMobi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/models/internal/CBookItemMobi$1;,
        Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;
    }
.end annotation


# static fields
.field public static final METRIC_CLASS_NAME:Ljava/lang/String; = "BookItemMobi"


# instance fields
.field private annotations:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

.field private applicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

.field private bookItem:Lcom/mobipocket/common/library/reader/BookItem;

.field private coverCache:Lcom/amazon/system/drawing/Image;

.field private coverChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

.field private fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

.field private fontFactory:Lcom/amazon/system/drawing/FontFactory;

.field private security:Lcom/amazon/system/security/Security;

.field private utilities:Lcom/amazon/system/util/Utilities;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/io/internal/FileConnectionPDBFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/util/Utilities;)V
    .locals 12
    .parameter "bookItem"
    .parameter "annotations"
    .parameter "fileSystem"
    .parameter "pdbFactory"
    .parameter "imageFactory"
    .parameter "security"
    .parameter "localStorage"
    .parameter "applicationCommands"
    .parameter "fontFactory"
    .parameter "utilities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 96
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    .line 97
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    .line 98
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverCache:Lcom/amazon/system/drawing/Image;

    .line 146
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    .line 147
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    .line 148
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->annotations:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    .line 149
    new-instance v4, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    invoke-direct {v4}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;-><init>()V

    iput-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    .line 150
    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->security:Lcom/amazon/system/security/Security;

    .line 151
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->applicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    .line 152
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fontFactory:Lcom/amazon/system/drawing/FontFactory;

    .line 153
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->utilities:Lcom/amazon/system/util/Utilities;

    .line 156
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/amazon/system/io/IFileConnectionFactory;->openFile(Ljava/lang/String;)Lcom/amazon/system/io/IFileConnection;

    move-result-object v11

    .line 159
    .local v11, fileConn:Lcom/amazon/system/io/IFileConnection;
    :try_start_0
    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getGUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->getBookType()I

    move-result v7

    invoke-virtual {p1}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11}, Lcom/amazon/system/io/IFileConnection;->lastModified()J

    move-result-wide v9

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->computeBookID(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-interface {v11}, Lcom/amazon/system/io/IFileConnection;->close()V

    .line 165
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->loadLocalBookState()V

    .line 166
    return-void

    .line 163
    :catchall_0
    move-exception v4

    invoke-interface {v11}, Lcom/amazon/system/io/IFileConnection;->close()V

    throw v4
.end method


# virtual methods
.method public createDocument()Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 173
    new-instance v0, Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fontFactory:Lcom/amazon/system/drawing/FontFactory;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->imageFactory:Lcom/amazon/system/drawing/ImageFactory;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->security:Lcom/amazon/system/security/Security;

    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->applicationCommands:Lcom/mobipocket/common/library/reader/ApplicationCommands;

    invoke-direct/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/BookViewManager;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/security/Security;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/mobipocket/common/library/historizer/HistoryManager;)V

    .line 177
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    const/16 v2, 0x104

    const/16 v3, 0x140

    invoke-virtual {v1, v2, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->setSize(II)Z

    .line 178
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-virtual {v1, v7}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->setCoverInBookFlow(Z)V

    .line 179
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->enableNoteDecoration(ZZ)V

    .line 180
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->annotations:Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;

    invoke-virtual {v1, v7}, Lcom/mobipocket/common/library/reader/BookViewManager$Annotations;->enableNoteAsSelectableObject(Z)V

    .line 181
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->utilities:Lcom/amazon/system/util/Utilities;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->utilities:Lcom/amazon/system/util/Utilities;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->enablePrelayouting(Lcom/amazon/system/util/Utilities;)V

    .line 187
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->openBook(Lcom/mobipocket/common/library/reader/BookItem;[I)Z
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 222
    new-instance v2, Lcom/mobipocket/common/library/reader/BookManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-direct {v2, v1}, Lcom/mobipocket/common/library/reader/BookManager;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;)V

    .line 223
    new-instance v9, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;

    iget-object v7, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->annotations:Lcom/amazon/kcp/application/IAnnotationUpdateHandler;

    new-instance v1, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    iget-object v4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->security:Lcom/amazon/system/security/Security;

    iget-object v5, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fontFactory:Lcom/amazon/system/drawing/FontFactory;

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;-><init>(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/security/Security;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/kcp/library/models/internal/CBookItemMobi$1;)V

    move-object v3, v9

    move-object v4, v0

    move-object v5, v2

    move-object v6, p0

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/reader/models/internal/CMBPBookDocument;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookManager;Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/application/IAnnotationUpdateHandler;Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;)V

    iput-object v9, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDocumentCloseEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->closeDocumentCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/InvalidBookException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/common/library/reader/InvalidBookException;->INVALID_PID:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/InvalidBookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mobipocket/common/library/reader/InvalidBookException;->WRONG_PASSWORD:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 195
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    .line 198
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 199
    const-string v2, "reason"

    const-string v3, "InvalidPID"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v2, "BookItemMobi"

    const-string v3, "DocumentOpenFailed"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    :cond_2
    move-object v0, v6

    .line 204
    goto :goto_0

    .line 206
    :catch_1
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open book because of RuntimeException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_3

    .line 214
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 215
    const-string v3, "reason"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v0, "BookItemMobi"

    const-string v3, "DocumentOpenFailed"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    :cond_3
    move-object v0, v6

    .line 219
    goto :goto_0

    .line 187
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getAmzGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAmznUserLocationFromPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 488
    invoke-static {p1}, Lcom/amazon/kcp/reader/models/internal/CMBPUserLocation;->getAmznUserLocationFromPosition(I)I

    move-result v0

    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    const-string v1, "; "

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/BookItem;->getAuthors(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getBaseLanguage()I

    move-result v0

    .line 554
    .local v0, languageCode:I
    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 556
    const-string v1, "de-DE"

    .line 560
    .end local v0           #languageCode:I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBookFurthestLocation()I
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getMaxPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->getAmznUserLocationFromPosition(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBookType()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->isEbook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->isSample()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 531
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 520
    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->isEnews()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 525
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getType()I

    move-result v0

    const/16 v1, 0x103

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 530
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported content-type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->isSample()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public getCover()Lcom/amazon/system/drawing/Image;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverCache:Lcom/amazon/system/drawing/Image;

    return-object v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCreationDate()J
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getBookDate()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getLastModificationDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 1
    .parameter "imageFactory"
    .parameter "maxDimensions"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->hasRealCoverArt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/BookItem;->getCoverArt(Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLargeEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 1
    .parameter "imageFactory"
    .parameter "maxDimensions"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->hasBigCoverArt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0, p1, p2}, Lcom/mobipocket/common/library/reader/BookItem;->getBigCoverArt(Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalBookItemCoverChangeEvent()Lcom/amazon/foundation/internal/ILocalBookItemEventProvider;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getMetaData()Lcom/mobipocket/common/library/reader/book/MetaDataCollection;

    move-result-object v0

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/book/MetaDataCollection;->publishing_date:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserCurrentLocation()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getLastReadPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->getAmznUserLocationFromPosition(I)I

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWatermark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getWatermark()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public isSample()Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->isSample()Z

    move-result v0

    return v0
.end method

.method public loadCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;
    .locals 2
    .parameter "imageFactory"
    .parameter "dimensionMax"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverCache:Lcom/amazon/system/drawing/Image;

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/amazon/system/drawing/Dimension;->height:I

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverCache:Lcom/amazon/system/drawing/Image;

    invoke-interface {v1}, Lcom/amazon/system/drawing/Image;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/amazon/system/drawing/Dimension;->width:I

    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverCache:Lcom/amazon/system/drawing/Image;

    invoke-interface {v1}, Lcom/amazon/system/drawing/Image;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->deSerializeCover()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->getEmbeddedCover(Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/drawing/Dimension;)Lcom/amazon/system/drawing/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->setCover(Lcom/amazon/system/drawing/Image;)V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverCache:Lcom/amazon/system/drawing/Image;

    return-object v0
.end method

.method protected onBookClose()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->onBookClose()V

    .line 237
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->setNowAsLastReadDate()Z

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->lastReadDateChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 243
    return-void
.end method

.method protected replaceAnnotationFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "sourceFileName"

    .prologue
    .line 111
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, mbpFilename:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v2, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->selectFileNameWithExtension(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    const/4 v3, 0x1

    invoke-static {v2, p1, v0, v3}, Lcom/amazon/system/io/internal/FileSystemHelper;->rename(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 117
    .local v1, ok:Z
    if-eqz v1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookItem;->refreshLastModificationDate()V

    .line 120
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->lastReadDateChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    invoke-virtual {v2, p0}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 122
    :cond_0
    return v1
.end method

.method public setAnnotationFile(Ljava/lang/String;Z)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 250
    .line 252
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->openedBook:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v0, :cond_0

    move v0, v4

    .line 289
    :goto_0
    return v0

    .line 258
    :cond_0
    if-eqz p2, :cond_2

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->getLastReadPosition()I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/BookItem;->getLastReadPageNumber()I

    move-result v1

    .line 263
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookItem;->getLastPageStackInformation()[B

    move-result-object v2

    .line 266
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->replaceAnnotationFile(Ljava/lang/String;)Z

    move-result v3

    .line 278
    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->setLastPageReadInAnnotationFile(II[B)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->replaceAnnotationFile(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCover(Lcom/amazon/system/drawing/Image;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverCache:Lcom/amazon/system/drawing/Image;

    .line 449
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->coverChangeEvent:Lcom/amazon/foundation/internal/LocalBookItemEventProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/foundation/internal/LocalBookItemEventProvider;->notifyListeners(Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 450
    return-void
.end method

.method protected setLastPageReadInAnnotationFile(II[B)Z
    .locals 1
    .parameter "lastPageReadPosition"
    .parameter "lastPageNumber"
    .parameter "parserState"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobipocket/common/library/reader/BookItem;->saveBookState(II[B)Z

    move-result v0

    return v0
.end method

.method public setNowAsLastReadDate()Z
    .locals 4

    .prologue
    .line 379
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileConnectionPdbFactory:Lcom/amazon/system/io/internal/FileConnectionPDBFactory;

    iget-object v3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/system/io/internal/FileConnectionPDBFactory;->getBookSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, mbpFilename:Ljava/lang/String;
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v2, v0}, Lcom/amazon/system/io/internal/FileSystemHelper;->setLastModifiedDateAsNow(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Z

    move-result v1

    .line 381
    .local v1, ok:Z
    if-eqz v1, :cond_0

    .line 383
    iget-object v2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/BookItem;->refreshLastModificationDate()V

    .line 385
    :cond_0
    return v1
.end method

.method public supportsDictionaryCapability()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->isDictionary()Z

    move-result v0

    return v0
.end method
