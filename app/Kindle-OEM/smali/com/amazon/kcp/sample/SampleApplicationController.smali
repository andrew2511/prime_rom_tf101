.class public Lcom/amazon/kcp/sample/SampleApplicationController;
.super Lcom/amazon/kcp/application/AbstractApplicationController;
.source "SampleApplicationController.java"


# static fields
.field private static instance:Lcom/amazon/kcp/sample/SampleApplicationController;


# instance fields
.field private authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

.field private currentSubApp:Lcom/amazon/kcp/application/ISubAppController;

.field private fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

.field private gotoLibrary:Ljava/lang/Runnable;

.field private library:Lcom/amazon/kcp/sample/SampleLibraryController;

.field private webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/kcp/sample/SampleApplicationController;->instance:Lcom/amazon/kcp/sample/SampleApplicationController;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IRequestSigner;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/foundation/internal/net/HttpWebConnector;Lcom/amazon/kcp/application/internal/IUpdateManager;Lcom/amazon/system/util/Utilities;)V
    .locals 17
    .parameter "fileFactory"
    .parameter "secureStorage"
    .parameter "requestSigner"
    .parameter "fontfactory"
    .parameter "imageFactory"
    .parameter "security"
    .parameter "localStorage"
    .parameter "applicationCommand"
    .parameter "inflaterFactory"
    .parameter "parserFactory"
    .parameter "delayedCallbackFactory"
    .parameter "webConnector"
    .parameter "updateManager"
    .parameter "utilities"

    .prologue
    .line 78
    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p13

    invoke-direct/range {v4 .. v15}, Lcom/amazon/kcp/application/AbstractApplicationController;-><init>(Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/foundation/internal/net/LightWebConnector;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/ILocalStorage;Lcom/amazon/kcp/application/IRequestSigner;Lcom/amazon/system/drawing/ImageFactory;Lcom/amazon/kcp/application/internal/IUpdateManager;JLcom/amazon/kcp/application/IDownloadChunker;)V

    .line 50
    new-instance v4, Lcom/amazon/kcp/sample/SampleApplicationController$1;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/sample/SampleApplicationController$1;-><init>(Lcom/amazon/kcp/sample/SampleApplicationController;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleApplicationController;->gotoLibrary:Ljava/lang/Runnable;

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/sample/SampleApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/system/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/system/io/IPathDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/system/io/IPathDescriptor;->getPersistentPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MetricsManager.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, metricsCachePath:Ljava/lang/String;
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    const-string v5, "KCPTest"

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/sample/SampleApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v6

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->initialize(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/io/IFileConnectionFactory;)V

    .line 92
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleApplicationController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    .line 93
    new-instance v4, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleApplicationController;->synchronizationManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    .line 94
    new-instance v4, Lcom/amazon/kcp/application/AuthenticationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/sample/SampleApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/application/AuthenticationManager;-><init>(Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IRequestSigner;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleApplicationController;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    .line 95
    new-instance v4, Lcom/amazon/kcp/sample/SampleLibraryController;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p7

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p14

    invoke-direct/range {v4 .. v14}, Lcom/amazon/kcp/sample/SampleLibraryController;-><init>(Lcom/amazon/kcp/sample/SampleApplicationController;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/security/Security;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/system/util/Utilities;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/amazon/kcp/sample/SampleApplicationController;->library:Lcom/amazon/kcp/sample/SampleLibraryController;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/sample/SampleApplicationController;)Lcom/amazon/kcp/sample/SampleLibraryController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->library:Lcom/amazon/kcp/sample/SampleLibraryController;

    return-object v0
.end method

.method public static getInstance(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IRequestSigner;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/net/HttpConnectionFactory;Lcom/amazon/system/util/Utilities;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/kcp/application/internal/IUpdateManager;Lcom/amazon/kcp/application/IDelayedCallbackFactory;)Lcom/amazon/kcp/sample/SampleApplicationController;
    .locals 18
    .parameter "fileFactory"
    .parameter "secureStorage"
    .parameter "requestSigner"
    .parameter "fontfactory"
    .parameter "imageFactory"
    .parameter "security"
    .parameter "localStorage"
    .parameter "applicationCommand"
    .parameter "inflaterFactory"
    .parameter "httpConnectionFactory"
    .parameter "utilities"
    .parameter "parserFactory"
    .parameter "updateManager"
    .parameter "delayedCallBackFactory"

    .prologue
    .line 133
    sget-object v3, Lcom/amazon/kcp/sample/SampleApplicationController;->instance:Lcom/amazon/kcp/sample/SampleApplicationController;

    if-nez v3, :cond_0

    .line 135
    new-instance v15, Lcom/amazon/foundation/internal/net/HttpWebConnector;

    move-object v0, v15

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lcom/amazon/foundation/internal/net/HttpWebConnector;-><init>(Lcom/amazon/system/net/HttpConnectionFactory;Lcom/amazon/system/util/Utilities;)V

    .line 137
    .local v15, webConnector:Lcom/amazon/foundation/internal/net/HttpWebConnector;
    new-instance v3, Lcom/amazon/kcp/sample/SampleApplicationController;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p11

    move-object/from16 v14, p13

    move-object/from16 v16, p12

    move-object/from16 v17, p10

    invoke-direct/range {v3 .. v17}, Lcom/amazon/kcp/sample/SampleApplicationController;-><init>(Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ISecureStorage;Lcom/amazon/kcp/application/IRequestSigner;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/drawing/ImageFactoryExtended;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;Lcom/mobipocket/common/library/reader/ApplicationCommands;Lcom/amazon/system/io/InflaterFactory;Lcom/amazon/system/xml/SAXParserFactory;Lcom/amazon/kcp/application/IDelayedCallbackFactory;Lcom/amazon/foundation/internal/net/HttpWebConnector;Lcom/amazon/kcp/application/internal/IUpdateManager;Lcom/amazon/system/util/Utilities;)V

    sput-object v3, Lcom/amazon/kcp/sample/SampleApplicationController;->instance:Lcom/amazon/kcp/sample/SampleApplicationController;

    .line 152
    .end local v15           #webConnector:Lcom/amazon/foundation/internal/net/HttpWebConnector;
    :cond_0
    sget-object p0, Lcom/amazon/kcp/sample/SampleApplicationController;->instance:Lcom/amazon/kcp/sample/SampleApplicationController;

    .end local p0
    return-object p0
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 250
    return-void
.end method

.method public getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->authenticationManager:Lcom/amazon/kcp/application/AuthenticationManager;

    return-object v0
.end method

.method public getCurrentSubApp()Lcom/amazon/kcp/application/ISubAppController;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->currentSubApp:Lcom/amazon/kcp/application/ISubAppController;

    return-object v0
.end method

.method public getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->fileSystem:Lcom/amazon/system/io/IFileConnectionFactory;

    return-object v0
.end method

.method public getInternalVersionNumber()J
    .locals 2

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLocaleManager()Lcom/amazon/kcp/application/ILocaleManager;
    .locals 1

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const-string v0, "1.0.0.0"

    return-object v0
.end method

.method public getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->webConnector:Lcom/amazon/foundation/internal/net/LightWebConnector;

    return-object v0
.end method

.method public getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public info()Lcom/amazon/kcp/info/IInfoController;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/system/util/Utilities;)V
    .locals 1
    .parameter "utilities"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->gotoLibrary:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/amazon/system/util/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method

.method public kindleStore()Lcom/amazon/kcp/store/IStoreController;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public library()Lcom/amazon/kcp/library/ILibraryController;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->library:Lcom/amazon/kcp/sample/SampleLibraryController;

    iput-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->currentSubApp:Lcom/amazon/kcp/application/ISubAppController;

    .line 167
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController;->library:Lcom/amazon/kcp/sample/SampleLibraryController;

    return-object v0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 219
    return-void
.end method

.method public reader()Lcom/amazon/kcp/reader/IReaderController;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 244
    return-void
.end method

.method public showAlertWithDPLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "msg1"
    .parameter "msg2"
    .parameter "msg3"
    .parameter "asin"

    .prologue
    .line 255
    return-void
.end method

.method public showDeregisterPage()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public showRegisterPage()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public showRegisterPage(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V
    .locals 0
    .parameter "successCallback"
    .parameter "cancelationCallback"

    .prologue
    .line 234
    return-void
.end method

.method public showWelcomePage()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public startEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "to"
    .parameter "subject"
    .parameter "body"

    .prologue
    .line 225
    return-void
.end method
