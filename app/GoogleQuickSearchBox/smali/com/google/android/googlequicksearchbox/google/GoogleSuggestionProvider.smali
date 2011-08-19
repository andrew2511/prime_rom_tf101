.class public Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "GoogleSuggestionProvider.java"


# instance fields
.field private mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private buildUriMatcher(Landroid/content/Context;)Landroid/content/UriMatcher;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, authority:Ljava/lang/String;
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    .line 119
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v2, "search_suggest_query"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    const-string v2, "search_suggest_query/*"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    return-object v1
.end method

.method private emptyIfNull(Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 1
    .parameter "result"
    .parameter "query"

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance p1, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;

    .end local p1
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->getSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/google/android/googlequicksearchbox/SuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .restart local p1
    :cond_0
    return-object p1
.end method

.method private getQuery(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".google"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 61
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/google/android/googlequicksearchbox/QsbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/QsbApplication;->getWebSuggestSource()Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    .line 51
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->buildUriMatcher(Landroid/content/Context;)Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 76
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 78
    .local v0, match:I
    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->getQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, query:Ljava/lang/String;
    new-instance v2, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->mSource:Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;

    invoke-interface {v3, v1}, Lcom/google/android/googlequicksearchbox/google/WebSuggestSource;->queryExternal(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/google/android/googlequicksearchbox/google/GoogleSuggestionProvider;->emptyIfNull(Lcom/google/android/googlequicksearchbox/SuggestionList;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/SuggestionList;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/googlequicksearchbox/WebSuggestionsBackedCursor;-><init>(Lcom/google/android/googlequicksearchbox/SuggestionList;)V

    .line 83
    .end local v1           #query:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 82
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 83
    const/4 v2, 0x0

    goto :goto_0

    .line 85
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
