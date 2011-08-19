.class public final Ltwitter4j/TwitterStream;
.super Ltwitter4j/TwitterOAuthSupportBaseImpl;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/TwitterStream$TwitterStreamConsumer;
    }
.end annotation


# static fields
.field private static final HTTP_ERROR_INITIAL_WAIT:I = 0x2710

.field private static final HTTP_ERROR_WAIT_CAP:I = 0x3a980

.field private static final NO_WAIT:I = 0x0

.field private static final TCP_ERROR_INITIAL_WAIT:I = 0xfa

.field private static final TCP_ERROR_WAIT_CAP:I = 0x3e80

.field static class$twitter4j$TwitterStream:Ljava/lang/Class; = null

.field static count:I = 0x0

.field private static transient dispatcher:Ltwitter4j/internal/async/Dispatcher; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger; = null

.field private static final serialVersionUID:J = 0x4cbd2014dbfef08dL

.field private static shutdown:Z


# instance fields
.field private handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

.field private final http:Ltwitter4j/internal/http/HttpClientWrapper;

.field private lifeCycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/ConnectionLifeCycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private streamListeners:[Ltwitter4j/StreamListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    sget-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.TwitterStream"

    invoke-static {v0}, Ltwitter4j/TwitterStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/TwitterStream;->logger:Ltwitter4j/internal/logging/Logger;

    .line 402
    sput-boolean v1, Ltwitter4j/TwitterStream;->shutdown:Z

    .line 657
    sput v1, Ltwitter4j/TwitterStream;->count:I

    return-void

    .line 57
    :cond_0
    sget-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;-><init>(Ltwitter4j/conf/Configuration;)V

    .line 59
    new-array v0, v1, [Ltwitter4j/StreamListener;

    iput-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    .line 71
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ltwitter4j/StreamingReadTimeoutConfiguration;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/StreamingReadTimeoutConfiguration;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "screenName"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-array v0, v1, [Ltwitter4j/StreamListener;

    iput-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    .line 84
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ltwitter4j/StreamingReadTimeoutConfiguration;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/StreamingReadTimeoutConfiguration;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/StreamListener;)V
    .locals 3
    .parameter "screenName"
    .parameter "password"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-array v0, v1, [Ltwitter4j/StreamListener;

    iput-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    .line 98
    if-eqz p3, :cond_0

    .line 99
    invoke-direct {p0, p3}, Ltwitter4j/TwitterStream;->addListener(Ltwitter4j/StreamListener;)V

    .line 101
    :cond_0
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ltwitter4j/StreamingReadTimeoutConfiguration;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/StreamingReadTimeoutConfiguration;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 102
    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;Ltwitter4j/StreamListener;)V
    .locals 2
    .parameter "conf"
    .parameter "auth"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/http/Authorization;)V

    .line 59
    new-array v0, v1, [Ltwitter4j/StreamListener;

    iput-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    .line 107
    if-eqz p3, :cond_0

    .line 108
    invoke-direct {p0, p3}, Ltwitter4j/TwitterStream;->addListener(Ltwitter4j/StreamListener;)V

    .line 110
    :cond_0
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ltwitter4j/StreamingReadTimeoutConfiguration;

    invoke-direct {v1, p1}, Ltwitter4j/StreamingReadTimeoutConfiguration;-><init>(Ltwitter4j/conf/Configuration;)V

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    iput-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 111
    return-void
.end method

.method static access$000(Ltwitter4j/TwitterStream;Ljava/lang/String;I)Ltwitter4j/StatusStream;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterStream;->getCountStream(Ljava/lang/String;I)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method static access$100(Ltwitter4j/TwitterStream;)Ltwitter4j/internal/async/Dispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v0

    return-object v0
.end method

.method static access$200()Ltwitter4j/internal/logging/Logger;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Ltwitter4j/TwitterStream;->logger:Ltwitter4j/internal/logging/Logger;

    return-object v0
.end method

.method static access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    return-object v0
.end method

.method static access$400(Ltwitter4j/TwitterStream;)[Ltwitter4j/StreamListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    return-object v0
.end method

.method private declared-synchronized addListener(Ltwitter4j/StreamListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 637
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ltwitter4j/StreamListener;

    .line 638
    .local v0, newListeners:[Ltwitter4j/StreamListener;
    iget-object v1, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 639
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput-object p1, v0, v1

    .line 640
    iput-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    .line 637
    .end local v0           #newListeners:[Ltwitter4j/StreamListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private ensureListenerIsSet()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    return-void
.end method

.method private ensureStatusStreamListenerIsSet()V
    .locals 7

    .prologue
    .line 527
    iget-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 528
    .local v3, listener:Ltwitter4j/StreamListener;
    instance-of v4, v3, Ltwitter4j/StatusListener;

    if-nez v4, :cond_0

    .line 529
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Only StatusListener is supported. found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 527
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v3           #listener:Ltwitter4j/StreamListener;
    :cond_1
    return-void
.end method

.method private getCountStream(Ljava/lang/String;I)Ltwitter4j/StatusStream;
    .locals 10
    .parameter "relativeUrl"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 204
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v6, 0x0

    new-instance v7, Ltwitter4j/internal/http/HttpParameter;

    const-string v8, "count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v6

    iget-object v6, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 206
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 207
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private getDispatcher()Ltwitter4j/internal/async/Dispatcher;
    .locals 3

    .prologue
    .line 387
    sget-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.TwitterStream"

    invoke-static {v0}, Ltwitter4j/TwitterStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    :goto_0
    monitor-enter v0

    .line 388
    :try_start_0
    sget-boolean v1, Ltwitter4j/TwitterStream;->shutdown:Z

    if-eqz v1, :cond_1

    .line 389
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already shut down"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 387
    :cond_0
    sget-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    goto :goto_0

    .line 391
    :cond_1
    :try_start_1
    sget-object v1, Ltwitter4j/TwitterStream;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-nez v1, :cond_2

    .line 395
    new-instance v1, Ltwitter4j/internal/async/DispatcherFactory;

    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2}, Ltwitter4j/internal/async/DispatcherFactory;-><init>(Ltwitter4j/internal/async/DispatcherConfiguration;)V

    invoke-virtual {v1}, Ltwitter4j/internal/async/DispatcherFactory;->getInstance()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v1

    sput-object v1, Ltwitter4j/TwitterStream;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 397
    :cond_2
    sget-object v1, Ltwitter4j/TwitterStream;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method private declared-synchronized startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->cleanUp()V

    .line 537
    iget-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StatusListener is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 540
    :cond_0
    :try_start_1
    iput-object p1, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    .line 541
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    invoke-virtual {v0}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addConnectionLifeCycleListener(Ltwitter4j/ConnectionLifeCycleListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 569
    iget-object v0, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    return-void
.end method

.method public addListener(Ltwitter4j/SiteStreamsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream;->addListener(Ltwitter4j/StreamListener;)V

    .line 634
    return-void
.end method

.method public addListener(Ltwitter4j/StatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 625
    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream;->addListener(Ltwitter4j/StreamListener;)V

    .line 626
    return-void
.end method

.method public addListener(Ltwitter4j/UserStreamListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 617
    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream;->addListener(Ltwitter4j/StreamListener;)V

    .line 618
    return-void
.end method

.method public addStatusListener(Ltwitter4j/StatusListener;)V
    .locals 0
    .parameter "statusListener"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream;->addListener(Ltwitter4j/StreamListener;)V

    .line 590
    return-void
.end method

.method public addUserStreamListener(Ltwitter4j/UserStreamListener;)V
    .locals 0
    .parameter "userStreamListener"

    .prologue
    .line 609
    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream;->addListener(Ltwitter4j/StreamListener;)V

    .line 610
    return-void
.end method

.method public declared-synchronized cleanUp()V
    .locals 1

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    invoke-virtual {v0}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :cond_0
    monitor-exit p0

    return-void

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 559
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->cleanUp()V

    .line 560
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 820
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 836
    :goto_0
    return v2

    .line 821
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    .line 822
    :cond_2
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    goto :goto_0

    .line 824
    :cond_3
    move-object v0, p1

    check-cast v0, Ltwitter4j/TwitterStream;

    move-object v1, v0

    .line 826
    .local v1, that:Ltwitter4j/TwitterStream;
    sget-boolean v2, Ltwitter4j/TwitterStream;->shutdown:Z

    sget-boolean v3, Ltwitter4j/TwitterStream;->shutdown:Z

    if-eq v2, v3, :cond_4

    move v2, v4

    goto :goto_0

    .line 827
    :cond_4
    iget-object v2, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    iget-object v3, v1, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    move v2, v4

    .line 828
    goto :goto_0

    .line 827
    :cond_6
    iget-object v2, v1, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    if-nez v2, :cond_5

    .line 829
    :cond_7
    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v2, :cond_9

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v3, v1, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v2, v4

    .line 830
    goto :goto_0

    .line 829
    :cond_9
    iget-object v2, v1, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-nez v2, :cond_8

    .line 831
    :cond_a
    iget-object v2, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    if-eqz v2, :cond_c

    iget-object v2, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    iget-object v3, v1, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    move v2, v4

    .line 832
    goto :goto_0

    .line 831
    :cond_c
    iget-object v2, v1, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    if-nez v2, :cond_b

    .line 833
    :cond_d
    iget-object v2, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    iget-object v3, v1, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v4

    .line 834
    goto :goto_0

    :cond_e
    move v2, v5

    .line 836
    goto :goto_0
.end method

.method public filter(I[I[Ljava/lang/String;)V
    .locals 1
    .parameter "count"
    .parameter "follow"
    .parameter "track"

    .prologue
    .line 486
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 487
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 488
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureStatusStreamListenerIsSet()V

    .line 489
    new-instance v0, Ltwitter4j/TwitterStream$9;

    invoke-direct {v0, p0, p1, p2, p3}, Ltwitter4j/TwitterStream$9;-><init>(Ltwitter4j/TwitterStream;I[I[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 494
    return-void
.end method

.method public filter(Ltwitter4j/FilterQuery;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 441
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 442
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 443
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureStatusStreamListenerIsSet()V

    .line 444
    new-instance v0, Ltwitter4j/TwitterStream$8;

    invoke-direct {v0, p0, p1}, Ltwitter4j/TwitterStream$8;-><init>(Ltwitter4j/TwitterStream;Ltwitter4j/FilterQuery;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 449
    return-void
.end method

.method public firehose(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 124
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 125
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 126
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureStatusStreamListenerIsSet()V

    .line 127
    new-instance v0, Ltwitter4j/TwitterStream$1;

    invoke-direct {v0, p0, p1}, Ltwitter4j/TwitterStream$1;-><init>(Ltwitter4j/TwitterStream;I)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 132
    return-void
.end method

.method public getConfiguration()Ltwitter4j/conf/Configuration;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getConfiguration()Ltwitter4j/conf/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getFilterStream(I[I[Ljava/lang/String;)Ltwitter4j/StatusStream;
    .locals 2
    .parameter "count"
    .parameter "follow"
    .parameter "track"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 511
    new-instance v1, Ltwitter4j/FilterQuery;

    const/4 v0, 0x0

    check-cast v0, [[D

    invoke-direct {v1, p1, p2, p3, v0}, Ltwitter4j/FilterQuery;-><init>(I[I[Ljava/lang/String;[[D)V

    invoke-virtual {p0, v1}, Ltwitter4j/TwitterStream;->getFilterStream(Ltwitter4j/FilterQuery;)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getFilterStream(Ltwitter4j/FilterQuery;)Ltwitter4j/StatusStream;
    .locals 7
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 465
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "statuses/filter.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ltwitter4j/FilterQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v5

    iget-object v6, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 468
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 469
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getFirehoseStream(I)Ltwitter4j/StatusStream;
    .locals 1
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 146
    const-string v0, "statuses/firehose.json"

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterStream;->getCountStream(Ljava/lang/String;I)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getLinksStream(I)Ltwitter4j/StatusStream;
    .locals 1
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 180
    const-string v0, "statuses/links.json"

    invoke-direct {p0, v0, p1}, Ltwitter4j/TwitterStream;->getCountStream(Ljava/lang/String;I)Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthAccessToken()Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthRequestToken()Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetStream()Ltwitter4j/StatusStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 241
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "statuses/retweet.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v6, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v5, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 243
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 244
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSampleStream()Ltwitter4j/StatusStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 278
    :try_start_0
    new-instance v1, Ltwitter4j/StatusStreamImpl;

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v5}, Ltwitter4j/conf/Configuration;->getStreamBaseURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "statuses/sample.json"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v3, v4, v5}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/StatusStreamImpl;-><init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 280
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 281
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method getSiteStream(Z[I)Ljava/io/InputStream;
    .locals 7
    .parameter "withFollowings"
    .parameter "follow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureOAuthEnabled()V

    .line 424
    iget-object v0, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getSiteStreamBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "site.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "with"

    if-eqz p1, :cond_0

    const-string v6, "followings"

    :goto_0
    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "follow"

    invoke-static {p2}, Ltwitter4j/internal/util/StringUtil;->join([I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    iget-object v3, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/internal/http/HttpResponse;->asStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v6, "user"

    goto :goto_0
.end method

.method public getUserStream()Ltwitter4j/UserStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterStream;->getUserStream([Ljava/lang/String;)Ltwitter4j/UserStream;

    move-result-object v0

    return-object v0
.end method

.method public getUserStream([Ljava/lang/String;)Ltwitter4j/UserStream;
    .locals 8
    .parameter "track"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 341
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    iget-object v2, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->isUserStreamRepliesAllEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "replies"

    const-string v4, "all"

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    if-eqz p1, :cond_1

    .line 346
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "track"

    invoke-static {p1}, Ltwitter4j/internal/util/StringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_1
    new-instance v3, Ltwitter4j/UserStreamImpl;

    invoke-direct {p0}, Ltwitter4j/TwitterStream;->getDispatcher()Ltwitter4j/internal/async/Dispatcher;

    move-result-object v4

    iget-object v5, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v6}, Ltwitter4j/conf/Configuration;->getUserStreamBaseURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "user.json"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ltwitter4j/internal/http/HttpParameter;

    iget-object v7, p0, Ltwitter4j/TwitterStream;->auth:Ltwitter4j/http/Authorization;

    invoke-virtual {v5, v6, v2, v7}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    iget-object v5, p0, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v3, v4, v2, v5}, Ltwitter4j/UserStreamImpl;-><init>(Ltwitter4j/internal/async/Dispatcher;Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 351
    .end local v1           #params:Ljava/util/List;,"Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 352
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-direct {v2, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 841
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->hashCode()I

    move-result v0

    .line 842
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ltwitter4j/TwitterStream;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int v0, v1, v2

    .line 843
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    :goto_1
    add-int v0, v1, v2

    .line 844
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/TwitterStream;->lifeCycleListeners:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v1, v2

    .line 845
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ltwitter4j/TwitterStream;->handler:Ltwitter4j/TwitterStream$TwitterStreamConsumer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v1, v2

    .line 846
    mul-int/lit8 v1, v0, 0x1f

    sget-boolean v2, Ltwitter4j/TwitterStream;->shutdown:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_4
    add-int v0, v1, v2

    .line 847
    return v0

    :cond_0
    move v2, v3

    .line 842
    goto :goto_0

    :cond_1
    move v2, v3

    .line 843
    goto :goto_1

    :cond_2
    move v2, v3

    .line 844
    goto :goto_2

    :cond_3
    move v2, v3

    .line 845
    goto :goto_3

    :cond_4
    move v2, v3

    .line 846
    goto :goto_4
.end method

.method public httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->httpResponseReceived(Ltwitter4j/internal/http/HttpResponseEvent;)V

    return-void
.end method

.method public isOAuthEnabled()Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->isOAuthEnabled()Z

    move-result v0

    return v0
.end method

.method public links(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 158
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 159
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 160
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureStatusStreamListenerIsSet()V

    .line 161
    new-instance v0, Ltwitter4j/TwitterStream$2;

    invoke-direct {v0, p0, p1}, Ltwitter4j/TwitterStream$2;-><init>(Ltwitter4j/TwitterStream;I)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 166
    return-void
.end method

.method public retweet()V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 220
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 221
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureStatusStreamListenerIsSet()V

    .line 222
    new-instance v0, Ltwitter4j/TwitterStream$4;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterStream$4;-><init>(Ltwitter4j/TwitterStream;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 227
    return-void
.end method

.method public sample()V
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 257
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 258
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureStatusStreamListenerIsSet()V

    .line 259
    new-instance v0, Ltwitter4j/TwitterStream$5;

    invoke-direct {v0, p0}, Ltwitter4j/TwitterStream$5;-><init>(Ltwitter4j/TwitterStream;)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 264
    return-void
.end method

.method public setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->setOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    return-void
.end method

.method public setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-super {p0, p1}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->setRateLimitStatusListener(Ltwitter4j/RateLimitStatusListener;)V

    return-void
.end method

.method public setStatusListener(Ltwitter4j/StatusListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 579
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/StreamListener;

    iput-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .line 580
    iget-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 581
    return-void
.end method

.method public setUserStreamListener(Ltwitter4j/UserStreamListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 599
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/StreamListener;

    iput-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .line 600
    iget-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 601
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->shutdown()V

    .line 412
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->cleanUp()V

    .line 413
    sget-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "twitter4j.TwitterStream"

    invoke-static {v0}, Ltwitter4j/TwitterStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;

    :goto_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 414
    :try_start_1
    sget-object v1, Ltwitter4j/TwitterStream;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    if-eqz v1, :cond_0

    .line 415
    sget-object v1, Ltwitter4j/TwitterStream;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    invoke-interface {v1}, Ltwitter4j/internal/async/Dispatcher;->shutdown()V

    .line 416
    const/4 v1, 0x0

    sput-object v1, Ltwitter4j/TwitterStream;->dispatcher:Ltwitter4j/internal/async/Dispatcher;

    .line 418
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Ltwitter4j/TwitterStream;->shutdown:Z

    .line 419
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 413
    :cond_1
    :try_start_2
    sget-object v0, Ltwitter4j/TwitterStream;->class$twitter4j$TwitterStream:Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 411
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public site(Z[I)V
    .locals 7
    .parameter "withFollowings"
    .parameter "follow"

    .prologue
    .line 368
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureOAuthEnabled()V

    .line 369
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 370
    iget-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 371
    .local v3, listener:Ltwitter4j/StreamListener;
    instance-of v4, v3, Ltwitter4j/SiteStreamsListener;

    if-nez v4, :cond_0

    .line 372
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Only SiteStreamListener is supported. found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v3           #listener:Ltwitter4j/StreamListener;
    :cond_1
    new-instance v4, Ltwitter4j/TwitterStream$7;

    invoke-direct {v4, p0, p1, p2}, Ltwitter4j/TwitterStream$7;-><init>(Ltwitter4j/TwitterStream;Z[I)V

    invoke-direct {p0, v4}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 384
    return-void
.end method

.method public stream(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "relativeUrl"
    .parameter "count"
    .parameter "handleUserStream"

    .prologue
    .line 191
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 192
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 193
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureStatusStreamListenerIsSet()V

    .line 194
    new-instance v0, Ltwitter4j/TwitterStream$3;

    invoke-direct {v0, p0, p1, p2}, Ltwitter4j/TwitterStream$3;-><init>(Ltwitter4j/TwitterStream;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Ltwitter4j/TwitterOAuthSupportBaseImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public user()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterStream;->user([Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public user([Ljava/lang/String;)V
    .locals 7
    .parameter "track"

    .prologue
    .line 304
    invoke-virtual {p0}, Ltwitter4j/TwitterStream;->ensureAuthorizationEnabled()V

    .line 305
    invoke-direct {p0}, Ltwitter4j/TwitterStream;->ensureListenerIsSet()V

    .line 306
    iget-object v0, p0, Ltwitter4j/TwitterStream;->streamListeners:[Ltwitter4j/StreamListener;

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 307
    .local v3, listener:Ltwitter4j/StreamListener;
    instance-of v4, v3, Ltwitter4j/UserStreamListener;

    if-nez v4, :cond_0

    .line 308
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Only UserStreamListener is supported. found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v3           #listener:Ltwitter4j/StreamListener;
    :cond_1
    new-instance v4, Ltwitter4j/TwitterStream$6;

    invoke-direct {v4, p0, p1}, Ltwitter4j/TwitterStream$6;-><init>(Ltwitter4j/TwitterStream;[Ljava/lang/String;)V

    invoke-direct {p0, v4}, Ltwitter4j/TwitterStream;->startHandler(Ltwitter4j/TwitterStream$TwitterStreamConsumer;)V

    .line 316
    return-void
.end method
