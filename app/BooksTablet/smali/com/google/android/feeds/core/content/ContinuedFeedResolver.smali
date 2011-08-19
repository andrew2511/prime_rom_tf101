.class public Lcom/google/android/feeds/core/content/ContinuedFeedResolver;
.super Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.source "ContinuedFeedResolver.java"


# static fields
.field public static final EXTRA_CONTINUATION:Ljava/lang/String; = "com.google.android.feeds.document.extra.CONTINUATION"


# instance fields
.field private final mBaseDocumentUri:Landroid/net/Uri;

.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mContinuationParameter:Ljava/lang/String;

.field protected final mExtras:Landroid/os/Bundle;

.field private final mOutput:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/net/ContentHandler;Ljava/lang/Object;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "baseDocumentUri"
    .parameter "handler"
    .parameter "output"
    .parameter "extras"
    .parameter "continuationParameter"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/AbstractFeedResolver;-><init>()V

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 73
    :cond_0
    if-nez p5, :cond_1

    .line 74
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 76
    :cond_1
    invoke-virtual {p1, p5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " query parameter."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    .end local v0           #msg:Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_3

    .line 82
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 84
    :cond_3
    if-nez p4, :cond_4

    .line 85
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 87
    :cond_4
    iput-object p2, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    .line 88
    iput-object p4, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    .line 89
    iput-object p1, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    .line 90
    iput-object p3, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mOutput:Ljava/lang/Object;

    .line 91
    iput-object p5, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mContinuationParameter:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private clearContinuationToken()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.android.feeds.document.extra.CONTINUATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private getContinuationToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.android.feeds.document.extra.CONTINUATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createDocumentURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .parameter "continuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v3, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v2, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mContinuationParameter:Ljava/lang/String;

    .line 108
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, documentUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object v3

    .line 112
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #documentUri:Landroid/net/Uri;
    .end local v2           #key:Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object v3

    goto :goto_0
.end method

.method public getContent(Lcom/google/android/feeds/core/provider/FeedCommand;)Ljava/lang/Object;
    .locals 13
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getRowCount()I

    move-result v4

    .line 131
    .local v4, rowCount:I
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getState()Landroid/os/Bundle;

    move-result-object v5

    .line 132
    .local v5, state:Landroid/os/Bundle;
    const-string v7, "com.google.android.feeds.document.extra.CONTINUATION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .end local v5           #state:Landroid/os/Bundle;
    .local v1, continuation:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getMinCount()I

    move-result v2

    .line 140
    .local v2, minCount:I
    :cond_0
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->clearContinuationToken()V

    .line 141
    invoke-virtual {p0, v1}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->createDocumentURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 142
    .local v6, url:Ljava/net/URL;
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, content:Ljava/lang/Object;
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mOutput:Ljava/lang/Object;

    if-eq v0, v7, :cond_2

    .line 144
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unexpected value returned by ContentHandler#getContent(URLConnection): %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #continuation:Ljava/lang/String;
    .end local v2           #minCount:I
    .end local v4           #rowCount:I
    .end local v6           #url:Ljava/net/URL;
    :cond_1
    const/4 v4, 0x0

    .line 135
    .restart local v4       #rowCount:I
    const/4 v1, 0x0

    .restart local v1       #continuation:Ljava/lang/String;
    goto :goto_0

    .line 147
    .restart local v0       #content:Ljava/lang/Object;
    .restart local v2       #minCount:I
    .restart local v6       #url:Ljava/net/URL;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->getContinuationToken()Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v8, "com.google.android.feeds.cursor.extra.MORE"

    if-eqz v1, :cond_3

    move v9, v12

    :goto_1
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v8, "com.google.android.feeds.cursor.extra.CONTENT_ROW_COUNT"

    invoke-virtual {v7, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, outputRowCount:I
    if-ne v3, v10, :cond_4

    .line 152
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "FeedParser must set FeedParser.EXTRA_CONTENT_ROW_COUNT"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3           #outputRowCount:I
    :cond_3
    move v9, v11

    .line 148
    goto :goto_1

    .line 155
    .restart local v3       #outputRowCount:I
    :cond_4
    add-int/2addr v4, v3

    .line 156
    if-ge v4, v2, :cond_5

    if-nez v1, :cond_0

    .line 157
    :cond_5
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mOutput:Ljava/lang/Object;

    return-object v7
.end method
