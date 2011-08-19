.class public abstract Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.super Ljava/lang/Object;
.source "AbstractFeedResolver.java"

# interfaces
.implements Lcom/google/android/feeds/core/content/FeedResolver;


# static fields
.field private static final DEFAULT_MAX_RETRY_COUNT:I = 0x14


# instance fields
.field private mMaxRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/android/feeds/core/content/AbstractFeedResolver;->mMaxRetryCount:I

    return-void
.end method


# virtual methods
.method protected final createURL(Landroid/net/Uri;)Ljava/net/URL;
    .locals 2
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, spec:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/feeds/core/content/AbstractFeedResolver;->createURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method protected createURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 81
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract getContent(Lcom/google/android/feeds/core/provider/FeedCommand;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;
    .locals 8
    .parameter "command"
    .parameter "url"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget v3, p0, Lcom/google/android/feeds/core/content/AbstractFeedResolver;->mMaxRetryCount:I

    .line 146
    .local v3, maxRetryCount:I
    const/4 v4, 0x0

    .line 148
    .local v4, retryCount:I
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/feeds/core/content/AbstractFeedResolver;->openConnection(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 149
    .local v0, connection:Ljava/net/URLConnection;
    invoke-virtual {p3, v0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/HttpRetryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 150
    .end local v0           #connection:Ljava/net/URLConnection;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 151
    .local v1, e:Ljava/net/HttpRetryException;
    if-ge v4, v3, :cond_1

    .line 152
    invoke-virtual {v1}, Ljava/net/HttpRetryException;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {p0, v2}, Lcom/google/android/feeds/core/content/AbstractFeedResolver;->createURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_0
    throw v1

    .line 161
    .end local v2           #location:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum retries ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") exceeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getMaxRetryCount()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/android/feeds/core/content/AbstractFeedResolver;->mMaxRetryCount:I

    return v0
.end method

.method protected openConnection(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .parameter "command"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0, p2}, Lcom/google/android/feeds/core/content/AbstractFeedResolver;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    .line 123
    .local v0, connection:Ljava/net/URLConnection;
    invoke-static {v0, p1}, Lcom/google/android/feeds/core/content/FeedResolverUtil;->setRequestProperties(Ljava/net/URLConnection;Lcom/google/android/feeds/core/provider/FeedCommand;)V

    .line 124
    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p1}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final setMaxRetryCount(I)V
    .locals 0
    .parameter "maxRetryCount"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/feeds/core/content/AbstractFeedResolver;->mMaxRetryCount:I

    .line 65
    return-void
.end method
