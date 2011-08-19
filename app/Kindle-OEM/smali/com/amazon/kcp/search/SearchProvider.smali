.class public Lcom/amazon/kcp/search/SearchProvider;
.super Landroid/content/ContentProvider;
.source "SearchProvider.java"


# static fields
.field public static AUTHORITY:Ljava/lang/String;

.field private static final COLUMNS:[Ljava/lang/String;

.field private static final SEARCH_SUGGEST:I

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private resultsCursor:Landroid/database/MatrixCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "kindle"

    sput-object v0, Lcom/amazon/kcp/search/SearchProvider;->AUTHORITY:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/amazon/kcp/search/SearchProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/SearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/search/SearchProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 34
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/amazon/kcp/search/SearchProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->resultsCursor:Landroid/database/MatrixCursor;

    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 50
    .local v0, matcher:Landroid/content/UriMatcher;
    sget-object v1, Lcom/amazon/kcp/search/SearchProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v1, Lcom/amazon/kcp/search/SearchProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-object v0
.end method

.method private columnValuesFromBook(JLcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 4
    .parameter "id"
    .parameter "book"
    .parameter "action"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 107
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-interface {p3}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p3, v3, v2}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p3}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const/4 v1, 0x6

    const-string v2, "_-1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "query"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v6

    .line 83
    .local v6, appControler:Lcom/amazon/kcp/application/IKindleApplicationController;
    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryController;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 85
    .local v7, books:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/kcp/search/SearchResult;>;"
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/amazon/kcp/search/SearchProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->resultsCursor:Landroid/database/MatrixCursor;

    .line 88
    const-wide/16 v1, 0x0

    .line 90
    .local v1, id:J
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v6           #appControler:Lcom/amazon/kcp/application/IKindleApplicationController;
    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/kcp/search/SearchResult;

    .line 92
    .local v11, result:Lcom/amazon/kcp/search/SearchResult;
    iget-boolean v0, v11, Lcom/amazon/kcp/search/SearchResult;->isLocalBook:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v6, p0, Lcom/amazon/kcp/search/SearchProvider;->resultsCursor:Landroid/database/MatrixCursor;

    const-wide/16 v3, 0x1

    add-long v9, v1, v3

    .end local v1           #id:J
    .local v9, id:J
    iget-object v3, v11, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    sget-object v4, Lcom/amazon/kcp/search/SearchActivity;->ACTION_LOCAL_BOOK:Ljava/lang/String;

    iget v5, v11, Lcom/amazon/kcp/search/SearchResult;->index:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/search/SearchProvider;->columnValuesFromBook(JLcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-wide v1, v9

    .end local v9           #id:J
    .restart local v1       #id:J
    goto :goto_0

    .line 98
    :cond_0
    iget-object v6, p0, Lcom/amazon/kcp/search/SearchProvider;->resultsCursor:Landroid/database/MatrixCursor;

    const-wide/16 v3, 0x1

    add-long v9, v1, v3

    .end local v1           #id:J
    .restart local v9       #id:J
    iget-object v3, v11, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    sget-object v4, Lcom/amazon/kcp/search/SearchActivity;->ACTION_ARCHIVED_ITEM:Ljava/lang/String;

    iget v5, v11, Lcom/amazon/kcp/search/SearchResult;->index:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/search/SearchProvider;->columnValuesFromBook(JLcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-wide v1, v9

    .end local v9           #id:J
    .restart local v1       #id:J
    goto :goto_0

    .line 102
    .end local v11           #result:Lcom/amazon/kcp/search/SearchResult;
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchProvider;->resultsCursor:Landroid/database/MatrixCursor;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 123
    sget-object v0, Lcom/amazon/kcp/search/SearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL Passed to Search Provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 65
    sget-object v1, Lcom/amazon/kcp/search/SearchProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 75
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL Passed to Search Provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :pswitch_0
    const/4 v0, 0x0

    .line 69
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchProvider;->getSuggestions(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 65
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
