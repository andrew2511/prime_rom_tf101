.class public Lcom/google/android/feeds/core/content/PagedFeedResolver;
.super Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.source "PagedFeedResolver.java"


# static fields
.field public static final EXTRA_NEXT_PAGE:Ljava/lang/String; = "com.google.android.feeds.document.extra.NEXT_PAGE"

.field public static final EXTRA_PAGE_ROW_COUNT:Ljava/lang/String; = "com.google.android.feeds.document.extra.PAGE_ROW_COUNT"


# instance fields
.field private final mBaseDocumentUri:Landroid/net/Uri;

.field private final mContentHandler:Ljava/net/ContentHandler;

.field protected final mExtras:Landroid/os/Bundle;

.field private final mFirstPage:I

.field private final mOutput:Ljava/lang/Object;

.field private final mPageParameter:Ljava/lang/String;

.field private final mPageSize:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/net/ContentHandler;Ljava/lang/Object;Landroid/os/Bundle;Ljava/lang/String;II)V
    .locals 3
    .parameter "baseDocumentUri"
    .parameter "handler"
    .parameter "output"
    .parameter "extras"
    .parameter "pageParameter"
    .parameter "firstPage"
    .parameter "pageSize"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/AbstractFeedResolver;-><init>()V

    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 97
    :cond_0
    if-nez p2, :cond_1

    .line 98
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 100
    :cond_1
    if-nez p3, :cond_2

    .line 101
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 103
    :cond_2
    if-nez p4, :cond_3

    .line 104
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 106
    :cond_3
    if-nez p5, :cond_4

    .line 107
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 109
    :cond_4
    invoke-virtual {p1, p5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 110
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

    .line 111
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0           #msg:Ljava/lang/String;
    :cond_5
    iput-object p1, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    .line 114
    iput-object p2, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    .line 115
    iput-object p4, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    .line 116
    iput-object p3, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mOutput:Ljava/lang/Object;

    .line 117
    iput-object p5, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mPageParameter:Ljava/lang/String;

    .line 118
    iput p6, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mFirstPage:I

    .line 119
    iput p7, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mPageSize:I

    .line 120
    return-void
.end method


# virtual methods
.method protected createDocumentURL(I)Ljava/net/URL;
    .locals 5
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v4, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 131
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mPageParameter:Ljava/lang/String;

    .line 132
    .local v1, key:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 135
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/google/android/feeds/core/content/PagedFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

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
    .line 143
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getRowCount()I

    move-result v6

    .line 146
    .local v6, rowCount:I
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getState()Landroid/os/Bundle;

    move-result-object v7

    .line 147
    .local v7, state:Landroid/os/Bundle;
    const-string v9, "com.google.android.feeds.document.extra.NEXT_PAGE"

    iget v10, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mFirstPage:I

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 153
    .end local v7           #state:Landroid/os/Bundle;
    .local v4, page:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getMinCount()I

    move-result v1

    .line 157
    .local v1, minCount:I
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/feeds/core/content/PagedFeedResolver;->createDocumentURL(I)Ljava/net/URL;

    move-result-object v8

    .line 158
    .local v8, url:Ljava/net/URL;
    iget-object v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, p1, v8, v9}, Lcom/google/android/feeds/core/content/PagedFeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, content:Ljava/lang/Object;
    iget-object v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mOutput:Ljava/lang/Object;

    if-eq v0, v9, :cond_2

    .line 160
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

    .line 149
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #minCount:I
    .end local v4           #page:I
    .end local v6           #rowCount:I
    .end local v8           #url:Ljava/net/URL;
    :cond_1
    const/4 v6, 0x0

    .line 150
    .restart local v6       #rowCount:I
    iget v4, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mFirstPage:I

    .restart local v4       #page:I
    goto :goto_0

    .line 164
    .restart local v0       #content:Ljava/lang/Object;
    .restart local v1       #minCount:I
    .restart local v8       #url:Ljava/net/URL;
    :cond_2
    iget-object v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.cursor.extra.DOCUMENT_ROW_COUNT"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 165
    .local v5, pageRowCount:I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_3

    .line 172
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "DocumentConstants row count missing"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 176
    :cond_3
    iget v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mPageSize:I

    if-lt v5, v9, :cond_4

    const/4 v9, 0x1

    move v2, v9

    .line 177
    .local v2, morePages:Z
    :goto_1
    iget-object v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.cursor.extra.MORE"

    invoke-virtual {v9, v10, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    add-int/lit8 v4, v4, 0x1

    .line 181
    iget-object v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.document.extra.NEXT_PAGE"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    iget-object v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.cursor.extra.CONTENT_ROW_COUNT"

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, outputRowCount:I
    const/4 v9, -0x1

    if-ne v3, v9, :cond_5

    .line 185
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "FeedParser must set FeedParser.EXTRA_CONTENT_ROW_COUNT"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 176
    .end local v2           #morePages:Z
    .end local v3           #outputRowCount:I
    :cond_4
    const/4 v9, 0x0

    move v2, v9

    goto :goto_1

    .line 188
    .restart local v2       #morePages:Z
    .restart local v3       #outputRowCount:I
    :cond_5
    add-int/2addr v6, v3

    .line 189
    if-ge v6, v1, :cond_6

    if-nez v2, :cond_0

    .line 190
    :cond_6
    iget-object v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mOutput:Ljava/lang/Object;

    return-object v9
.end method
