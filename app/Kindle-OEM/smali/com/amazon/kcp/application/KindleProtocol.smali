.class public Lcom/amazon/kcp/application/KindleProtocol;
.super Ljava/lang/Object;
.source "KindleProtocol.java"


# static fields
.field public static ACTION_BOOK_OPEN:Ljava/lang/String;

.field public static ACTION_KEY:Ljava/lang/String;

.field public static ASIN_KEY:Ljava/lang/String;

.field public static BOOK_ID_KEY:Ljava/lang/String;

.field public static HOME_PATH:Ljava/lang/String;

.field public static KINDLE_SCHEME:Ljava/lang/String;

.field public static READER_PATH:Ljava/lang/String;

.field public static SAMPLE_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "kindle"

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol;->KINDLE_SCHEME:Ljava/lang/String;

    .line 32
    const-string v0, "action"

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol;->ACTION_KEY:Ljava/lang/String;

    .line 37
    const-string v0, "open"

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol;->ACTION_BOOK_OPEN:Ljava/lang/String;

    .line 42
    const-string v0, "home"

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol;->HOME_PATH:Ljava/lang/String;

    .line 47
    const-string v0, "book"

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol;->READER_PATH:Ljava/lang/String;

    .line 52
    const-string v0, "sample"

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol;->SAMPLE_KEY:Ljava/lang/String;

    .line 57
    const-string v0, "asin"

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol;->ASIN_KEY:Ljava/lang/String;

    .line 62
    const-string v0, "book_id"

    sput-object v0, Lcom/amazon/kcp/application/KindleProtocol;->BOOK_ID_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOpenBookIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bookID cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 230
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->KINDLE_SCHEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 231
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->READER_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 232
    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 233
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->ACTION_KEY:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/KindleProtocol;->ACTION_BOOK_OPEN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 234
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->BOOK_ID_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kindle/UpgradePage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 241
    return-object v1
.end method

.method public static createOpenBookIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asin cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 196
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->KINDLE_SCHEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->READER_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 198
    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 199
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->ACTION_KEY:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/KindleProtocol;->ACTION_BOOK_OPEN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 200
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->ASIN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 201
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->SAMPLE_KEY:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 203
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kindle/UpgradePage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 208
    return-object v1
.end method

.method public static createOpenLibraryIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 254
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 257
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->KINDLE_SCHEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 258
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->HOME_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 259
    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/kindle/UpgradePage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 266
    return-object v1
.end method

.method public static parseUri(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/library/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KindleProtocol scheme is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KindleProtocol subapp is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KindleProtocol path is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KindleProtocol query string is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KindleProtocol fragment is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    sget-object v3, Lcom/amazon/kcp/application/KindleProtocol;->KINDLE_SCHEME:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->READER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->ACTION_BOOK_OPEN:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kcp/application/KindleProtocol;->ACTION_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->BOOK_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :try_start_0
    new-instance v2, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;

    invoke-direct {v2}, Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;-><init>()V

    .line 121
    invoke-static {p0, v1, v2}, Lcom/amazon/kcp/library/BookOpenHelper;->openLocal(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;Lcom/amazon/kcp/library/BookOpenHelper$BookOpenParameters;)Landroid/content/Intent;
    :try_end_0
    .catch Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "KindleProtocol"

    const-string v3, "OpenBookNotInLibrary"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto :goto_0

    .line 131
    :cond_1
    sget-object v1, Lcom/amazon/kcp/application/KindleProtocol;->ASIN_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/amazon/kcp/application/KindleProtocol;->SAMPLE_KEY:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KindleProtocol request to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isSample: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 142
    :try_start_1
    sget-object v3, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-static {p0, v1, v2, v3}, Lcom/amazon/kcp/library/BookOpenHelper;->open(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;ZLcom/amazon/kcp/reader/IAndroidReaderController$StartPage;)Landroid/content/Intent;
    :try_end_1
    .catch Lcom/amazon/kcp/library/BookOpenHelper$BookOpenException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 146
    :catch_1
    move-exception v1

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "KindleProtocol"

    const-string v3, "OpenBookNotInLibrary"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->WARN:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto :goto_0
.end method

.method public static parseUri(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 169
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kcp/application/KindleProtocol;->parseUri(Lcom/amazon/kcp/redding/ReddingActivity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    return-object v0
.end method
