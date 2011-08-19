.class public Lcom/google/masf/services/CookieService;
.super Lcom/google/common/util/AbstractObservable;


# static fields
.field private static instance:Lcom/google/masf/services/CookieService;


# instance fields
.field private cookieBeingRequested:Z

.field private mustRequestNewCookie:Z

.field private theCookie:J


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/common/util/AbstractObservable;-><init>()V

    iput-boolean v2, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    const-string v0, "RequestNewInstallId"

    invoke-static {v0, v2}, Lcom/google/common/StaticUtil;->readPreferenceAsBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    iget-boolean v0, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/masf/services/CookieService;->requestNewCookie()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/masf/services/CookieService;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/google/masf/services/CookieService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/google/masf/services/CookieService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/masf/services/CookieService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/masf/services/CookieService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->persistInternalState()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/masf/services/CookieService;
    .locals 2

    const-class v0, Lcom/google/masf/services/CookieService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/masf/services/CookieService;->instance:Lcom/google/masf/services/CookieService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/masf/services/CookieService;

    invoke-direct {v1}, Lcom/google/masf/services/CookieService;-><init>()V

    sput-object v1, Lcom/google/masf/services/CookieService;->instance:Lcom/google/masf/services/CookieService;

    :cond_0
    sget-object v1, Lcom/google/masf/services/CookieService;->instance:Lcom/google/masf/services/CookieService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized loadCookieFromConfig()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    const-string v1, "InstallId"

    invoke-virtual {v0, v1}, Lcom/google/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v0}, Lcom/google/common/ParseHexUtil;->parseHexLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->persistInternalState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_2
    iput-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private persistInternalState()V
    .locals 3

    const-string v0, "InstallId"

    iget-wide v1, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    invoke-static {v0, v1, v2}, Lcom/google/common/StaticUtil;->savePreferenceAsLong(Ljava/lang/String;J)V

    const-string v0, "RequestNewInstallId"

    iget-boolean v1, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    invoke-static {v0, v1}, Lcom/google/common/StaticUtil;->savePreferenceAsBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getPersistentStore()Lcom/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/PersistentStore;->savePreferences()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/google/common/util/Observer;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p1, p0, v0}, Lcom/google/common/util/Observer;->update(Lcom/google/common/util/Observable;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/google/common/util/AbstractObservable;->addObserver(Lcom/google/common/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCookie()J
    .locals 5

    const-wide/16 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/masf/services/CookieService;->requestNewCookie()V

    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "InstallId"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/common/StaticUtil;->readPreferenceAsLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    :cond_1
    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->loadCookieFromConfig()V

    :cond_2
    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/masf/services/CookieService;->requestNewCookie()V

    :cond_3
    iget-wide v0, p0, Lcom/google/masf/services/CookieService;->theCookie:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestNewCookie()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/masf/MobileServiceMux;->getSingleton()Lcom/google/masf/MobileServiceMux;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/masf/services/CookieService;->cookieBeingRequested:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/masf/services/CookieService;->mustRequestNewCookie:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/masf/services/CookieService;->theCookie:J

    invoke-direct {p0}, Lcom/google/masf/services/CookieService;->persistInternalState()V

    new-instance v1, Lcom/google/masf/protocol/PlainRequest;

    const-string v2, "g:c"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/masf/services/CookieService$1;

    invoke-direct {v2, p0}, Lcom/google/masf/services/CookieService$1;-><init>(Lcom/google/masf/services/CookieService;)V

    invoke-virtual {v1, v2}, Lcom/google/masf/protocol/Request;->setListener(Lcom/google/masf/protocol/Request$Listener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/masf/MobileServiceMux;->submitRequest(Lcom/google/masf/protocol/Request;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
