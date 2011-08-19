.class public Lcom/google/android/feeds/core/content/FeedContentHandler;
.super Ljava/net/ContentHandler;
.source "FeedContentHandler.java"


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/net/ContentHandler;Landroid/os/Bundle;)V
    .locals 1
    .parameter "contentHandler"
    .parameter "extras"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lcom/google/android/feeds/core/content/FeedContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    .line 61
    iput-object p2, p0, Lcom/google/android/feeds/core/content/FeedContentHandler;->mExtras:Landroid/os/Bundle;

    .line 62
    return-void
.end method


# virtual methods
.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->getResponseCode(Ljava/net/URLConnection;)I

    move-result v2

    .line 67
    .local v2, responseCode:I
    iget-object v4, p0, Lcom/google/android/feeds/core/content/FeedContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v5, "com.google.android.feeds.cursor.extra.RESPONSE_CODE"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    invoke-static {p1}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->getResponseMessage(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, responseMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/feeds/core/content/FeedContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v5, "com.google.android.feeds.cursor.extra.RESPONSE_MESSAGE"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v0

    .line 73
    .local v0, date:J
    iget-object v4, p0, Lcom/google/android/feeds/core/content/FeedContentHandler;->mExtras:Landroid/os/Bundle;

    const-string v5, "com.google.android.feeds.cursor.extra.DATE"

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 75
    iget-object v4, p0, Lcom/google/android/feeds/core/content/FeedContentHandler;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {v4, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method
