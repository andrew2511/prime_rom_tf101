.class public Lcom/google/android/feeds/core/content/FeedResolverUtil;
.super Ljava/lang/Object;
.source "FeedResolverUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static setRequestProperties(Ljava/net/URLConnection;Lcom/google/android/feeds/core/provider/FeedCommand;)V
    .locals 7
    .parameter "connection"
    .parameter "command"

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getMaxAge()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v0, v3, v5

    .line 39
    .local v0, maxAge:J
    const-string v3, "Cache-Control"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max-age="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isNotifyFailureSet()Z

    move-result v2

    .line 45
    .local v2, notifyFailure:Z
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 46
    return-void

    .line 45
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
