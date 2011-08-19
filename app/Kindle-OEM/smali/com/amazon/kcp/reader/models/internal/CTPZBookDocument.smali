.class public Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;
.super Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;
.source "CTPZBookDocument.java"


# instance fields
.field private annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

.field private bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

.field private currentPageAnnotationUpdateCallback:Lcom/amazon/foundation/IIntCallback;

.field private deviceInfo:Lcom/amazon/system/security/Security;

.field private display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

.field private documentCloseEvent:Lcom/amazon/foundation/internal/EventProvider;

.field private file:Lcom/amazon/system/io/IFileInputStream;

.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

.field private final memorySize:J

.field private navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

.field private positionChangedCallback:Lcom/amazon/foundation/ICallback;

.field private saxFactory:Lcom/amazon/system/xml/SAXParserFactory;

.field private worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/models/ILocalBookInfo;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/system/security/Security;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/system/xml/SAXParserFactory;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/AbstractBookDocument;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    .line 125
    iput-object p3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->deviceInfo:Lcom/amazon/system/security/Security;

    .line 126
    iput-object p4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    .line 127
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    .line 128
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    invoke-direct {v0, p6, p2, v1, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/IAnnotationCache;Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/kcp/library/models/ILocalBookInfo;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    .line 129
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    invoke-direct {v0, v1, v2, p5, p7}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/xml/SAXParserFactory;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->setDisplay(Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;)V

    .line 131
    iput-object p6, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->file:Lcom/amazon/system/io/IFileInputStream;

    .line 133
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->documentCloseEvent:Lcom/amazon/foundation/internal/EventProvider;

    .line 134
    iput-object p7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->saxFactory:Lcom/amazon/system/xml/SAXParserFactory;

    .line 135
    iput-wide p8, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->memorySize:J

    .line 136
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$1;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->currentPageAnnotationUpdateCallback:Lcom/amazon/foundation/IIntCallback;

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getCurrentPageAnnotationUpdateEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->currentPageAnnotationUpdateCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;)Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;)Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    return-object v0
.end method

.method private openBookInternal(Ljava/lang/String;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/DRMException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v0, p1}, Lcom/amazon/system/io/internal/FileSystemHelper;->openFileInputStream(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)Lcom/amazon/system/io/IFileInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->file:Lcom/amazon/system/io/IFileInputStream;

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->file:Lcom/amazon/system/io/IFileInputStream;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->inflaterFactory:Lcom/amazon/system/io/InflaterFactory;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->deviceInfo:Lcom/amazon/system/security/Security;

    iget-wide v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->memorySize:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/internal/CTPZBookBuilder;->build(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/security/Security;J)Lcom/amazon/topaz/TPZBook;

    move-result-object v0

    .line 185
    if-nez v0, :cond_0

    move v0, v5

    .line 253
    :goto_0
    return v0

    .line 192
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/testing/BookTesting;->getLPROverride()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 203
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    invoke-static {v1, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;->getLastPositionRead(Lcom/amazon/system/io/IFileConnectionFactory;Ljava/lang/String;)I

    move-result v1

    .line 207
    :goto_1
    new-instance v2, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    new-instance v3, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->saxFactory:Lcom/amazon/system/xml/SAXParserFactory;

    invoke-direct {v3, p0, v0, v4}, Lcom/amazon/kcp/reader/models/internal/TPZBookBehavior;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;Lcom/amazon/topaz/TPZBook;Lcom/amazon/system/xml/SAXParserFactory;)V

    invoke-static {}, Lcom/amazon/system/SynchronizationUtilities;->getUtilities()Lcom/amazon/system/Utilities;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;Lcom/amazon/system/Utilities;)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    .line 209
    if-ltz v1, :cond_1

    .line 211
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->gotoPosition(IZ)V

    .line 218
    :goto_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;->setBookWorker(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    .line 219
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->setBookAndWorker(Lcom/amazon/topaz/TPZBook;Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->readAnnotations(Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$2;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 253
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    move v1, v5

    .line 196
    goto :goto_1

    .line 198
    :pswitch_1
    invoke-virtual {v0}, Lcom/amazon/topaz/TPZBook;->lastID()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->gotoStartReadingPosition(Z)V
    :try_end_0
    .catch Lcom/amazon/topaz/exception/DRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/topaz/exception/TopazException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_2

    .line 232
    :catch_0
    move-exception v0

    .line 237
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->resetTopazCoreData()V

    .line 238
    throw v0

    .line 242
    :catch_1
    move-exception v0

    move v0, v5

    goto :goto_0

    .line 246
    :catch_2
    move-exception v0

    move v0, v5

    goto :goto_0

    .line 250
    :catch_3
    move-exception v0

    move v0, v5

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetTopazCoreData()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->file:Lcom/amazon/system/io/IFileInputStream;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->file:Lcom/amazon/system/io/IFileInputStream;

    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->file:Lcom/amazon/system/io/IFileInputStream;

    .line 160
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public closeDocument()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->dispose()V

    .line 262
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->getCurrentPageAnnotationUpdateEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->currentPageAnnotationUpdateCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 263
    iput-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->currentPageAnnotationUpdateCallback:Lcom/amazon/foundation/IIntCallback;

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getPositionChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 265
    iput-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->positionChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->writeAnnotations()V

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->documentCloseEvent:Lcom/amazon/foundation/internal/EventProvider;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/EventProvider;->notifyListeners()V

    .line 269
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->resetTopazCoreData()V

    .line 270
    return-void
.end method

.method public getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    return-object v0
.end method

.method public getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->bookInfo:Lcom/amazon/kcp/library/models/ILocalBookInfo;

    return-object v0
.end method

.method public getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->display:Lcom/amazon/kcp/reader/models/internal/CTPZBookDisplay;

    return-object v0
.end method

.method public getDocumentCloseEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->documentCloseEvent:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    return-object v0
.end method

.method public getNoteSelectionListener()Lcom/amazon/foundation/internal/INoteSelectionListener;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->getNoteSelectionListener()Lcom/amazon/foundation/internal/INoteSelectionListener;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShowBookBuyEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getShowBookBuyEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    return-object v0
.end method

.method public getShowBookDetailsEvent()Lcom/amazon/foundation/IEventProvider;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->getShowBookDetailsEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    return-object v0
.end method

.method public openBook(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/DRMException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->resetTopazCoreData()V

    .line 172
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->openBookInternal(Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, success:Z
    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->resetTopazCoreData()V

    .line 175
    :cond_0
    return v0
.end method

.method public saveLocalBookState()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->annotationsManager:Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/CTPZBookAnnotationsManager;->writeAnnotations()V

    .line 369
    return-void
.end method

.method public search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStatusTracker;)Ljava/lang/Runnable;
    .locals 6
    .parameter "query"
    .parameter "resultCallback"
    .parameter "onFinishedCallback"
    .parameter "statusTracker"

    .prologue
    .line 375
    if-nez p3, :cond_0

    const/4 v0, 0x0

    move-object v3, v0

    .line 382
    .local v3, completeRunnable:Ljava/lang/Runnable;
    :goto_0
    new-instance v5, Lcom/amazon/foundation/internal/SimpleCanceler;

    invoke-direct {v5}, Lcom/amazon/foundation/internal/SimpleCanceler;-><init>()V

    .line 383
    .local v5, canceler:Lcom/amazon/foundation/internal/ICanceler;
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->worker:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Ljava/lang/Runnable;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;)V

    .line 385
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$4;

    invoke-direct {v0, p0, v5}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$4;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;Lcom/amazon/foundation/internal/ICanceler;)V

    return-object v0

    .line 375
    .end local v3           #completeRunnable:Ljava/lang/Runnable;
    .end local v5           #canceler:Lcom/amazon/foundation/internal/ICanceler;
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$3;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument$3;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;Lcom/amazon/foundation/ICallback;)V

    move-object v3, v0

    goto :goto_0
.end method

.method public setApplicationCommands(Lcom/mobipocket/common/library/reader/ApplicationCommands;)V
    .locals 0
    .parameter "applicationCommands"

    .prologue
    .line 360
    return-void
.end method

.method public setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZBookDocument;->navigator:Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZBookNavigator;->setNoteSelectionListener(Lcom/amazon/foundation/internal/INoteSelectionListener;)V

    .line 339
    :cond_0
    return-void
.end method
