.class public Lcom/google/android/feeds/core/content/IndexedFeedResolver;
.super Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.source "IndexedFeedResolver.java"


# static fields
.field public static final EXTRA_NEXT_INDEX:Ljava/lang/String; = "com.google.android.feeds.cursor.extra.NEXT_INDEX"


# instance fields
.field private final mBaseDocumentUri:Landroid/net/Uri;

.field private final mContentHandler:Ljava/net/ContentHandler;

.field protected final mExtras:Landroid/os/Bundle;

.field private final mFirstIndex:I

.field private final mIndexParameter:Ljava/lang/String;

.field private final mOutput:Ljava/lang/Object;

.field private final mPageSize:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/net/ContentHandler;Ljava/lang/Object;Landroid/os/Bundle;Ljava/lang/String;II)V
    .locals 3
    .parameter "baseDocumentUri"
    .parameter "handler"
    .parameter "output"
    .parameter "extras"
    .parameter "indexParameter"
    .parameter "firstIndex"
    .parameter "pageSize"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/AbstractFeedResolver;-><init>()V

    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 94
    :cond_0
    if-nez p2, :cond_1

    .line 95
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 97
    :cond_1
    if-nez p3, :cond_2

    .line 98
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 100
    :cond_2
    if-nez p4, :cond_3

    .line 101
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 103
    :cond_3
    if-nez p5, :cond_4

    .line 104
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 106
    :cond_4
    invoke-virtual {p1, p5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 107
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

    .line 108
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0           #msg:Ljava/lang/String;
    :cond_5
    iput-object p1, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    .line 111
    iput-object p2, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    .line 112
    iput-object p4, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    .line 113
    iput-object p3, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mOutput:Ljava/lang/Object;

    .line 114
    iput-object p5, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mIndexParameter:Ljava/lang/String;

    .line 115
    iput p6, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mFirstIndex:I

    .line 116
    iput p7, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mPageSize:I

    .line 117
    return-void
.end method


# virtual methods
.method protected createDocumentURL(I)Ljava/net/URL;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v4, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 128
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mIndexParameter:Ljava/lang/String;

    .line 129
    .local v1, key:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 132
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object v4

    return-object v4
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
    .line 139
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getRowCount()I

    move-result v6

    .line 142
    .local v6, rowCount:I
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getState()Landroid/os/Bundle;

    move-result-object v7

    .line 143
    .local v7, state:Landroid/os/Bundle;
    const-string v9, "com.google.android.feeds.cursor.extra.NEXT_INDEX"

    iget v10, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mFirstIndex:I

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 149
    .end local v7           #state:Landroid/os/Bundle;
    .local v3, index:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getMinCount()I

    move-result v4

    .line 153
    .local v4, minCount:I
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->createDocumentURL(I)Ljava/net/URL;

    move-result-object v8

    .line 154
    .local v8, url:Ljava/net/URL;
    iget-object v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, p1, v8, v9}, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, content:Ljava/lang/Object;
    iget-object v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mOutput:Ljava/lang/Object;

    if-eq v0, v9, :cond_2

    .line 156
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Unexpected value returned by ContentHandler#getContent(URLConnection): %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 145
    .end local v0           #content:Ljava/lang/Object;
    .end local v3           #index:I
    .end local v4           #minCount:I
    .end local v6           #rowCount:I
    .end local v8           #url:Ljava/net/URL;
    :cond_1
    const/4 v6, 0x0

    .line 146
    .restart local v6       #rowCount:I
    iget v3, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mFirstIndex:I

    .restart local v3       #index:I
    goto :goto_0

    .line 160
    .restart local v0       #content:Ljava/lang/Object;
    .restart local v4       #minCount:I
    .restart local v8       #url:Ljava/net/URL;
    :cond_2
    iget-object v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.cursor.extra.DOCUMENT_ROW_COUNT"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, documentRowCount:I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    .line 162
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "FeedParser must set FeedParser.EXTRA_DOCUMENT_ROW_COUNT"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 167
    :cond_3
    iget v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mPageSize:I

    if-lt v1, v9, :cond_4

    const/4 v9, 0x1

    move v2, v9

    .line 168
    .local v2, hasMore:Z
    :goto_1
    iget-object v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.cursor.extra.MORE"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    add-int/2addr v3, v1

    .line 172
    iget-object v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.cursor.extra.NEXT_INDEX"

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iget-object v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.cursor.extra.CONTENT_ROW_COUNT"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 175
    .local v5, outputRowCount:I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_5

    .line 176
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "FeedParser must set FeedParser.EXTRA_CONTENT_ROW_COUNT"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 167
    .end local v2           #hasMore:Z
    .end local v5           #outputRowCount:I
    :cond_4
    const/4 v9, 0x0

    move v2, v9

    goto :goto_1

    .line 179
    .restart local v2       #hasMore:Z
    .restart local v5       #outputRowCount:I
    :cond_5
    add-int/2addr v6, v5

    .line 180
    if-ge v6, v4, :cond_6

    if-nez v2, :cond_0

    .line 181
    :cond_6
    iget-object v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mOutput:Ljava/lang/Object;

    return-object v9
.end method
