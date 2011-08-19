.class public Lcom/google/android/feeds/core/content/BasicFeedResolver;
.super Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.source "BasicFeedResolver.java"


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mDocumentUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/net/ContentHandler;)V
    .locals 1
    .parameter "documentUri"
    .parameter "handler"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/AbstractFeedResolver;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47
    :cond_0
    if-nez p2, :cond_1

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/google/android/feeds/core/content/BasicFeedResolver;->mDocumentUri:Landroid/net/Uri;

    .line 51
    iput-object p2, p0, Lcom/google/android/feeds/core/content/BasicFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    .line 52
    return-void
.end method


# virtual methods
.method public getContent(Lcom/google/android/feeds/core/provider/FeedCommand;)Ljava/lang/Object;
    .locals 2
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/android/feeds/core/content/BasicFeedResolver;->mDocumentUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/google/android/feeds/core/content/BasicFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object v0

    .line 57
    .local v0, url:Ljava/net/URL;
    iget-object v1, p0, Lcom/google/android/feeds/core/content/BasicFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/feeds/core/content/BasicFeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
